--Player constructer


local width, height = 4, 16

local player = world:newBSGRectangleCollider(30, 188 - height, width, height, 0)

function player:load()
  self:setFixedRotation(true)
  self:setCollisionClass("player")

  self.width, self.height = width, height

  self.xV, self.yV = 0, 0

  self.speed = 65
  self.gravity = gravity

  self.acceleration = 2000
  self.friction = 200

  self.isMoving = nil

  self.jumpTimer = 0

  --

  self.spritesheet = love.graphics.newImage("sprites/entities/player.png")
  self.animationCell = anim8.newGrid(16, 16, self.spritesheet:getWidth(), self.spritesheet:getHeight())

  self.animations = {}

  self.animations.walk = anim8.newAnimation(self.animationCell("1-4", 1), 0.1625)
  self.animations.look = anim8.newAnimation(self.animationCell("8-9", 1), 0.1)

  self.currentAnimation = self.animations.walk
  self.dir = "right"

  self.stopFrame = 1

  --

  self.sounds = {}
  self.sounds.walk = love.audio.newSource("sounds/player/walk.ogg", "static")

  self.walkSoundTimer = 0.2
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


function player:update(dt)
  self:pressed()
  self:released()

  self:setLinearVelocity(self.xV, self.yV)
  self:physics(dt)
  self:applyGravity(dt)

  self.isMoving = nil

  if self.xV ~= 0 then
    self.isMoving = true
  end

  if self.isMoving then
    self.currentAnimation:update(dt)

    if self:OnGround() then
      self.walkSoundTimer = self.walkSoundTimer - dt

      if self.walkSoundTimer <= 0 then
        self.sounds.walk:play()
        self.walkSoundTimer = 0.25
      end
    end
  else
    self.currentAnimation:gotoFrame(self.stopFrame)

    if self.sounds.walk:isPlaying() then
      self.sounds.walk:stop()
    end
  end

  player:jump(dt)
end

function player:draw()
  if self.dir == "right" then
    self.currentAnimation:draw(self.spritesheet, self:getX() - 8, self:getY() - self.height / 2)
  else
    self.currentAnimation:draw(self.spritesheet, self:getX() + 8, self:getY() - self.height / 2, nil, -1, 1)
  end
end

function player:physics(dt)
  if self.dir == "right" then
    if inputs:down "right" then
      if self.xV < self.speed then
        self.xV = self.xV + self.acceleration * dt

        if self.xV > self.speed then
          self.xV = self.speed
        end
      end
    end
  else
    if inputs:down "left" then
      if self.xV > -self.speed then
        self.xV = self.xV - self.acceleration * dt

        if self.xV < -self.speed then
          self.xV = -self.speed
        end
      end
    end
  end

  if not inputs:down "right" and not inputs:down "left" then
    if self.xV < 0 then
      self.xV = self.xV + self.friction * dt

      if self.xV > 0 then self.xV = 0 end
    elseif self.xV > 0 then
      self.xV = self.xV - self.friction * dt

      if self.xV < 0 then self.xV = 0 end
    end
  end
end

function player:jump(dt)
  if inputs:down "jump" and self:OnGround() then
    self.yV = -100
  end
end

function player:applyGravity(dt)
  self.yV = self.yV + self.gravity * dt

  if self.yV > self.gravity then self.yV = self.gravity end

  if self:OnGround() then
    self.yV = 36
    if not self.isMoving then self.yV = 0 end
  end
end

function player:pressed()
  if inputs:pressed "right" then
    self.dir = "right"
  elseif inputs:pressed "left" then
    self.dir = "left"
  elseif inputs:pressed "down" then
    self.currentAnimation = self.animations.look
    self.stopFrame = 2
  end
end

function player:released()
  if self.isMoving then --This is in release because at first it was checking for a release and I feel it still fits here lol
    self.currentAnimation = self.animations.walk
    self.stopFrame = 1
  end
end

return player
