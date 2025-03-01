--Calls all entity functions in here for less clutter


entities = {}

function entities:load()
  --Require section
  require("src/entities/player")

  require("src/entities/enemy")
  require("src/entities/npcs")

  --Load section
  player = playerInit() --Creates new player object
  player:load()

  enemies:load()
  npc:load()
end

function entities:update()
  player:update(publicDT)

  enemies:update(publicDT)
  npc:update()
end

function entities:draw()
  enemies:draw()

  npc:draw()
  player:draw()
end
