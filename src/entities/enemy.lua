--All enemies get loaded, updated, and drawn here


enemies = {}

function enemies:load()
  --require section

  require("src/entities/enemies/chinfish")

  --load section
  chinfish:load()
end

function enemies:update()
  chinfish:update(publicDT)
end

function enemies:draw()
  chinfish:draw()
end

function enemies:spawn()
  chinfish:spawn()
end

function enemies.despawn(self, index)
  self.colliders[index]:destroy()

  table.remove(self.colliders, index)
end
