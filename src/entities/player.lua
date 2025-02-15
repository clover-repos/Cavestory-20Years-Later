--Player constructer I can now have as many players as I want!!!! Kinda like nodes in godot


function playerInit()
  local width, height = 4, 15.25

  local player = world:newBSGRectangleCollider(240, 250 - height, width, height, 0.2)

  function player:load()
    self:setFixedRotation(true)
    self:setCollisionClass("player")

    self.width, self.height = width, height

    self.xV, self.yV = 0, 0

    self.groundSpeed = 62
    self.airSpeed = 40
    self.speed = self.groundSpeed

    self.gravity = 80

    self.acceleration = 625
    self.friction = 180

    self.isMoving = nil

    self.jumpTimer = 0
    self.jumpSpeed = -700

    --

    self.spritesheet = love.graphics.newImage("sprites/entities/player.png")
    self.animationCell = anim8.newGrid(16, 16, self.spritesheet:getWidth(), self.spritesheet:getHeight())

    self.animations = {}

    self.animations.walk = anim8.newAnimation(self.animationCell("1-4", 1), 0.1625)
    self.animations.look = anim8.newAnimation(self.animationCell(9, 1), 0.1)
    self.animations.jumpLook = anim8.newAnimation(self.animationCell(8, 1), 0.1)

    self.currentAnimation = self.animations.walk
    self.dir = "right"

    self.stopFrame = 1

    --

    self.sounds = {}
    self.sounds.walk = love.audio.newSource("sounds/player/walk.ogg", "static")

    self.walkSoundTimer = 0.2
  end

  function player:warps()
    self:setPreSolve(
      function(c1, c2, coll)
        if c1.collision_class == "player" and c2.collision_class == "platform" then
          if c2.name == "oneway" then
            if c1:getY() + c1.height / 2 > c2:getY() - c2.height / 2 then
              coll:setEnabled(false)
            end
          end
        elseif c1.collision_class == "player" and c2.collision_class == "warp" then
          if c2.class == "door" then
            coll:setEnabled(false)
          end
        end
      end
    )

    if #self:hitWarp() > 0 then
      local warp = self:hitWarp()[1]

      if warp.class ~= "door" then
        level:warp(warp.name, warp.properties.destX, warp.properties.destY)
      end
    end
  end

  function player:onGround()
    local querys = world:queryRectangleArea(self:getX() - self.width / 2, self:getY() + self.height / 2 - 1.25, self.width, 3, {"platform", "enemy"})

    if #querys > 0 then
      return true
    end
  end

  function player:HitCeiling()
    local querys = world:queryRectangleArea(self:getX() - self.width / 2, self:getY() - self.height / 2 - 1, self.width, 2, {"platform", "enemy"})

    return querys
  end

  function player:hitWarp()
    local querys = world:queryRectangleArea(self:getX() - self.width / 2, self:getY() - self.height / 2 - 1, self.width, self.height + 2, {"warp"})

    return querys
  end


  function player:getPositionOnScreen() --This is rip from this github repo: kyleschuab/legend-of-lua
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

  function player:water()
    if self:enter("water") then
      self.jumpSpeed = -500
      self.speed = 45
    end

    if self:exit("water") then
      self.jumpSpeed = -700
      self.speed = 62.5
    end
  end

  function player:update(dt)
    if self:onGround() then
      self.speed = self.groundSpeed
    else
      self.speed = self.airSpeed
    end

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

      if self:onGround() then
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

    self:jump(dt)

    self:updateSelectedAnimation()
    self:warps()
  end

  function player:updateSelectedAnimation()
    local ca = self.currentAnimation
    local a = self.animations

    if ca == a.walk then
      if not self:onGround() then
        if self.yV > 0 then
          self.stopFrame = 2
        else
          self.stopFrame = 4
        end

        self.currentAnimation:gotoFrame(self.stopFrame)
      else
        self.stopFrame = 1
      end
    end
  end

  function player:draw()
    local x, y = player:getPosition()

    if not self.isMoving and self:onGround() then
      x = math.round(x)
      y = math.round(y)-0.25
    end

    if self.dir == "right" then
      self.currentAnimation:draw(self.spritesheet, x - 8, y - self.height / 2)
    else
      self.currentAnimation:draw(self.spritesheet, x + 8, y - self.height / 2, nil, -1, 1)
    end
  end

  function player:physics(dt)
    if self.dir == "right" then
      if inputs:down "right" then
        if self.xV < self.speed then
          self.xV = self.xV + self.acceleration * dt

          if self.xV > self.speed then
            self.xV = self.xV - 100 * dt
          end
        end
      end
    else
      if inputs:down "left" then
        if self.xV > -self.speed then
          self.xV = self.xV - self.acceleration * dt

          if self.xV < -self.speed then
            self.xV = self.xV + 100 * dt
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

    self:water()
  end

  function player:jump(dt)
    if inputs:pressed "jump" and self:onGround() then
      self.jumpTimer = 0.155
      self.yV = -1
    end

    if self.isJumping then --Different check needs to happen even if player is off the ground
      if self.jumpTimer > 0 then
        self.yV = self.yV + self.jumpSpeed * dt
        self.jumpTimer = self.jumpTimer - dt
      end

      if self.jumpTimer <= 0 then
        self.yV = self.yV + 200 * dt

        if self.yV > self.gravity then
          self.yV = self.gravity

          self.isJumping = nil --Ends jump
        end
      end
    end

    if inputs:released "jump" and self.isJumping then
      self.jumpTimer = 0
    end

    if #self:HitCeiling() > 0 and self:HitCeiling()[1].name ~= "oneway" and self.yV < 0 then
      self.jumpTimer = 0
      self.yV = 0

      camera:shake(0.3, 1.5, 0.1)
    end
  end

  function player:applyGravity(dt)
    if self.yV < 0 then self.isJumping = true return end

    self.yV = self.yV + 50 * dt

    if self.yV > self.gravity then self.yV = self.gravity end

    if self:onGround() then
      self.yV = 40
      if not self.isMoving then self.yV = 0 end
    end
  end

  function player:pressed()
    if inputs:pressed "right" then
      self.dir = "right"
    elseif inputs:pressed "left" then
      self.dir = "left"
    elseif inputs:pressed "down" and self:onGround() then
      self.currentAnimation = self.animations.look
      self.stopFrame = 1

      if #self:hitWarp() > 0 then
        local warp = self:hitWarp()[1]

        if warp.class == "door" and not self.isMoving and self:onGround() then
          level:warp(warp.name, warp.properties.destX, warp.properties.destY)
        end
      else
        -- ?
      end
    elseif inputs:down "down" and not self:onGround() then
      self.currentAnimation = self.animations.jumpLook
      self.stopFrame = 1
    end
  end

  function player:released()
    if self.isMoving or inputs:pressed "jump" then
      if self.currentAnimation == self.animations.look then
        self.currentAnimation = self.animations.walk
        self.stopFrame = 1
      end
    end

    if self:onGround() or inputs:released "down" then
      if self.currentAnimation == self.animations.jumpLook then
        self.currentAnimation = self.animations.walk
        self.stopFrame = 1
      end
    end
  end

  return player
end
