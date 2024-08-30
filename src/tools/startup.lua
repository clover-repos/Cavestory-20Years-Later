--Config and import libraries and make variables...


--Imports:

baton = require("libraries/baton")
require("src/tools/input") --Baton buttons

anim8 = require("libraries/anim8")
wf = require("libraries/windfield")
sti = require("libraries/sti")

cam = require("libraries/camera")
camera = cam()

require("src/tools/level")
require("src/tools/misc/variables")
require("src/tools/collision")
require("src/entities/entity")
require("src/tools/misc/cameraExtras")
require("src/shaders/shader")
require("src/tools/background")
require("src/tools/titlescreen")
require("src/tools/misc/functions")

--Loads
variables:load()

world = wf.newWorld(0, 0)
startCollision()

entities:load()

shaders:load()

titlescreen:load()

level:load("MimigaVillage")

--Hide mouse
love.mouse.setVisible(false)
