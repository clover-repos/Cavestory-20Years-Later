-- Chinfish handler


chinfish = {}

function chinfish:spawn()
  self.colliders = {}

  for i, obj in ipairs(gameLevel.layers["enemies"].objects) do
    if obj.name == "chinfish" then
      collider = world:newBSGRectangleCollider(obj.x, obj.y, self.width, self.height, 0.25)

      collider:setType("static")

      collider:setCollisionClass("enemy")
      collider.currentAnimation = self.animations.idle:clone()

      table.insert(self.colliders, collider)
    end
  end

  for i, enemyC in ipairs(self.colliders) do
    enemyC.currentAnimation = self.animations.idle:clone()
    if gameLevel.layers["enemies"].objects[i].name == "chinfish" then
      enemyC.dir = gameLevel.layers["enemies"].objects[i].properties["dir"]
    end
  end
end

function chinfish:load()
  self.width, self.height = 16, 10

  self.spritesheet = love.graphics.newImage("sprites/entities/enemies/chinfish.png")
  self.animationCell = anim8.newGrid(16, 16, self.spritesheet:getWidth(), self.spritesheet:getHeight())

  self.animations = {}

  self.animations.idle = anim8.newAnimation(self.animationCell("1-2", 1), 0.325)
  self.animations.hurt = anim8.newAnimation(self.animationCell("3-3", 1), 0.325)
end

function chinfish:update()
  if not self.colliders then return end

  for i, enemyC in ipairs(self.colliders) do
    enemyC.currentAnimation:update(publicDT + (math.random(-0.325, 0) * publicDT))
  end
end

function chinfish:draw()
  if not self.colliders then return end

  for i, enemyC in ipairs(self.colliders) do
    if enemyC.dir == "left" then
      enemyC.currentAnimation:draw(self.spritesheet, enemyC:getX() - self.width / 2, enemyC:getY() - self.height)
    else
      enemyC.currentAnimation:draw(self.spritesheet, enemyC:getX() + self.width / 2, enemyC:getY() - self.height, nil, -1, 1)
    end
  end
end
