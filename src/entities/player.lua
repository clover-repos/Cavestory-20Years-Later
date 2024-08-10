--Player constructer


local width, height = 4, 16

local player = world:newBSGRectangleCollider(30, 240 - height, width, height, 0.05)

function player:load()
  self:setFixedRotation(true)
  self:setCollisionClass('player')

  self.width, self.height = width, height
  self.gravity = gravity

  self.jumpSpeed = 112
  self.speed = 75
  self.jumpTime = 0.4
  self.yFactor = 0
  self.isMoving = false

  self.xV, self.yV = 0, self.gravity

  self.spritesheet = love.graphics.newImage('sprites/entities/player.png')
  self.animationCell = anim8.newGrid(16, 16, self.spritesheet:getWidth(), self.spritesheet:getHeight())

  self.animations = {}

  self.animations.left = {}
  self.animations.right = {}

  self.animations.left.walk = anim8.newAnimation(self.animationCell('1-4', 1), 0.1625)
  self.animations.right.walk = anim8.newAnimation(self.animationCell('1-4', 2), 0.1625)

  self.animations.right.look = anim8.newAnimation(self.animationCell('8-9', 2), 0.1)
  self.animations.left.look = anim8.newAnimation(self.animationCell('8-9', 1), 0.1)

  self.currentAnimation = self.animations.right.walk
  self.dir = 'right'
  self.animationSpeed = 1
  self.isJumping = false
end

function player:OnGround()
  local querys = world:queryRectangleArea(self:getX() - self.width / 2 + 0.25, self:getY() + self.height / 2 - 1.25, self.width - 0.5, 3, {"platform", "enemy"})

  if #querys > 0 then
    return true
  end
end

function player:HitCeiling()
  local querys = world:queryRectangleArea(self:getX() - self.width / 2, self:getY() - self.height / 2 - 2, self.width, 2, {"platform", "enemy"})

  if #querys > 0 then
    return true
  end
end

function player:hitWarp()
  local querys = world:queryRectangleArea(self:getX() - self.width / 2 - 1, self:getY() - self.height / 2 - 1, self.width + 2, self.height + 2, {"warp"})

  return querys
end

function player:getPositionOnScreen()
  local px, py = player:getPosition()

  local mapW = (gameLevel.width * gameLevel.tilewidth)-- * scale
  local mapH = (gameLevel.height * gameLevel.tileheight)-- * scale

  local x = (windowWidth/2)
  local y = (windowHeight/2)

  -- Left border
  if px * scale < windowWidth/2 then
    x = px * scale
  end

  -- Top border
  if py * scale < windowHeight/2 then
    y = py * scale
  end

  -- Right border
  if px * scale > (mapW - windowWidth/2) then
    x = (px - camera.x) * scale + (windowWidth/2)
  end

  -- Bottom border
  if py * scale > (mapH - windowHeight/2) then
    y = (py - camera.y) * scale + (windowHeight/2)
  end

  return x, y
end

function player:update()
  player:controls()

  self.isMoving = false

  if self.xV ~= 0 then
    self.isMoving = true
  end

  if self.currentAnimation == self.animations.right.look and self.isMoving == true then
    self.currentAnimation = self.animations.right.walk
  elseif self.currentAnimation == self.animations.left.look and self.isMoving == true then
    self.currentAnimation = self.animations.left.walk
  end

  if self.isMoving == true then
    if self.dir == 'left' then
      self.xV = -self.speed
    else
      self.xV = self.speed
    end
  end

  if self:enter('water') then
    self.speed = 25
    self.gravity = gravity / 3
    self.animationSpeed = 1.75
    self.yV = self.gravity
    self.jumpSpeed = 450 / 6
  end

  if self:exit('water') then
    self.speed = 75
    self.gravity = gravity
    self.animationSpeed = 1
    self.jumpSpeed = 450 / 4
    if not self:OnGround() then
      self.yV = -self.jumpSpeed
    else
      self.yV = self.gravity
    end
  end

  if self:OnGround() then
    if self.isMoving == true then
      self.yFactor = self.gravity / 1.75
    else
      self.yFactor = self.gravity
    end
  else
    self.yFactor = 0
  end

  player:setPreSolve(function(c1, c2, coll)
    if c1.collision_class == 'player' and c2.collision_class == 'platform' then
      if c2.name == 'oneway' then
        if c1:getY() + c1.height / 4 > c2:getY() - c2.height / 2 then
          coll:setEnabled(false)
        end
      end
    elseif c1.collision_class == 'player' and c2.collision_class == 'warp' then
      if c2.class == 'door' then
        coll:setEnabled(false)
      end
    end
  end)

  self:jumpLogic()

  if #self:hitWarp() > 0 then
    local warp = self:hitWarp()[1]

    if warp.class ~= 'door' then
      level:warp(warp.name, warp.properties.destX, warp.properties.destY)
    end
  end

  if not self:OnGround() then
    self.isAirborn = true
  end
end

function player:jumpLogic()
  if self.jumpTimer then
    self.jumpTimer = self.jumpTimer - publicDT
    self.jumpFrame = 4
    self.isJumping = true

    if self.jumpTimer <= 0 or self:HitCeiling() then
      self.yV = self.yV + (2050 / 4) * publicDT

      if self.yV >= self.gravity then
        self.jumpTimer = nil
        self.isJumping = false
        self.jumpFrame = 2
        self.yV = self.gravity
      end
    end
  end

  self:setLinearVelocity(self.xV, self.yV - self.yFactor)
  self.currentAnimation:update(publicDT / self.animationSpeed)

  if not self:OnGround() then
    self.jumpFrame = self.jumpFrame or 2

    if self.currentAnimation == self.animations.right.look then
      self.jumpFrame = 1
    elseif self.currentAnimation == self.animations.left.look then
      self.jumpFrame = 1
    end

    self.currentAnimation:gotoFrame(self.jumpFrame)
  end

  if self.isMoving == false and self:OnGround() then
    if self.currentAnimation == self.animations.right.walk or self.currentAnimation == self.animations.left.walk then
      self.currentAnimation:gotoFrame(1)
    end

    if self.currentAnimation == self.animations.right.look or self.currentAnimation == self.animations.left.look then
      self.currentAnimation:gotoFrame(2)

      if self.isAirborn then
        if self.dir == 'left' then
          self.currentAnimation = self.animations.left.walk
        else
          self.currentAnimation = self.animations.right.walk
        end

        self.isAirborn = nil
      end
    end
  end
end

function player:draw()
  self.currentAnimation:draw(self.spritesheet, self:getX() - 8, self:getY() - self.height / 2)
end

function player:pressed()
  if inputs:pressed 'jump' and self:OnGround() then
    self:jump()
  end

  if inputs:pressed 'left' then
    self.xV = -self.speed

    self.currentAnimation = self.animations.left.walk
    self.dir = 'left'
  end

  if inputs:pressed 'right' then
    self.xV = self.speed

    self.currentAnimation = self.animations.right.walk
    self.dir = 'right'
  end

  if inputs:pressed 'down' then
    if self.dir == 'left' then
      self.currentAnimation = self.animations.left.look
    else
      self.currentAnimation = self.animations.right.look
    end

    if #self:hitWarp() > 0 then
      local warp = self:hitWarp()[1]

      if warp.class == 'door' and self.isMoving == false and self:OnGround() then
        level:warp(warp.name, warp.properties.destX, warp.properties.destY)
      end
    else
      -- ?
    end
  end
end

function player:released()
  if inputs:released 'left' and not inputs:down 'right' then
    self.xV = 0
  elseif inputs:released 'right' and not inputs:down 'left' then
    self.xV = 0
  end

  if inputs:released 'jump' then
    self.jumpTimer = 0
  end
end

function player:controls()
  player:pressed()
  player:released()
end

function player:jump()
  self.yV = -self.jumpSpeed
  self:setLinearVelocity(self.xV, self.yV)
  self.jumpTimer = self.jumpTime
end

return player
