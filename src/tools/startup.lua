--Config and import libraries and make variables...

dev = {
  mode = false,
  flashSpeed = 0.5,
  timer = 0.5,
  drawFlash = true
}

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
require("src/tools/dialoge")

--Loads
variables:load()

world = wf.newWorld(0, 0)
startCollision()

entities:load()

shaders:load()

titlescreen:load()

dialoge:load()

level:load("testLevel1")

--Hide mouse
love.mouse.setVisible(false)
