bunny = {
  width = 16,
  height = 16
}

function bunny:spawn()
  self.colliders = {}

  for i, obj in ipairs(gameLevel.layers["npcs"].objects) do
    if obj.name == "bunny" then
      collider = world:newBSGRectangleCollider(obj.x, obj.y, self.width, self.height, 0.25)

      collider:setType("static")

      collider.face = yap.bunny.face
      collider.text = yap.bunny.text

      collider:setCollisionClass("npc")
      collider.currentAnimation = self.animations.idle:clone()

      table.insert(self.colliders, collider)
    end
  end
end

function bunny:load()
  self.spritesheet = love.graphics.newImage("sprites/entities/npcs/bunny.png")
  self.animationCell = anim8.newGrid(16, 16, self.spritesheet:getWidth(), self.spritesheet:getHeight())

  self.animations = {}

  self.animations.idle = anim8.newAnimation(self.animationCell("1-2", 1), {1.5, 0.15})
  self.face = yap.bunny.face
  self.text = yap.bunny.text
end

function bunny:update()
  if not self.colliders then return end

  for i = 1, #self.colliders do
    npcC = self.colliders[i]

    npcC.currentAnimation:update(publicDT)
    if player:getX() < npcC:getX() then
      npcC.dir = "right"
    else
      npcC.dir = "left"
    end
  end
end

function bunny:draw()
  if not self.colliders then return end

  for i = 1, #self.colliders do
    npcC = self.colliders[i]

    if npcC.dir == "left" then
      npcC.currentAnimation:draw(self.spritesheet, npcC:getX() - self.width / 2, npcC:getY() - self.height/2)
    else
      npcC.currentAnimation:draw(self.spritesheet, npcC:getX() + self.width / 2, npcC:getY() - self.height/2, nil, -1, 1)
    end
  end
end
