npc = {}

function npc:load()
  require("src.entities.npcs.bunny")
  bunny:load()
end

function npc:update()
  bunny:update()
end

function npc:draw()
  bunny:draw()
end

function npc.despawn(self, index)
  self.colliders[index]:destroy()

  table.remove(self.colliders, index)
end
