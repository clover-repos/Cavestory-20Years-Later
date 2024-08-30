--Calles all entity functions in here for less clutter


entities = {}

function entities:load()
  --Require section
  require("src/entities/player")

  require("src/entities/enemy")

  --Load section
  player = playerInit() --Creates new player object
  player:load()

  enemies:load()
end

function entities:update()
  player:update(publicDT)

  enemies:update(publicDT)
end

function entities:draw()
  enemies:draw()

  player:draw()
end
