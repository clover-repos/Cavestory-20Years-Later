--Main file called at start

function love.load()
  math.randomseed(os.time()) --Random number
  love.graphics.setDefaultFilter("nearest", "nearest") --Pixel art scales with no blur

  require('src/tools/startup') --Imports startup file with code imports for less clutter
end

function love.update(dt)
  --Frame times:

  if dt > 0.25 then
    dt = 0.25 --Update cap so nothing breaks under lag
  end

  publicDT = dt --Any function can use

  impactPause() --Game checks for impactFreeze being > 0 then freezes for that time and resets impactFreeze to 0

  inputs:update() --Baton input update functions

  if inputs:pressed 'fullscreen' then
    toggleFullscreen() --If f11 was pressed fullscreen will be toggled
  end

  --Gamestuff:

  variables:update() --Updates values of any variable that changes, ex: scale

  level:update() --Update level stuff
  shaders:update(publicDT) --Updates shaders position

  if gamestate == playstate then
    if level.transition == 'idle' then
      world:update(publicDT) --Updates colliders for the current frame
    end

    entities:update(publicDT) --All entity update here
  elseif gamestate == titlestate then
    titlescreen:update(publicDT) --Updates titlescreen animations
  end

  camera:update() --Updates camera position
end

function love.draw()
  love.graphics.setFont(fontMain) --Set's the font

  if gamestate == playstate then
    background:draw()

    camera:attach() --Draws from camera's pov

      gameLevel:drawLayer(gameLevel.layers['background']) --Map layer gets drawn

      entities:draw() --All entities get drawn here


      gameLevel:drawLayer(gameLevel.layers['forgeground']) --Map layer gets drawn
      gameLevel:drawLayer(gameLevel.layers['forgeground2']) --Map layer gets drawn

      shaders:draw() --Shader effects

      --debugDraw() --Draw debug colliders and hitboxes

    camera:detach() --Stops drawing from the camera's pov

    if level.transition ~= 'idle' then
      love.graphics.setColor(0.05, 0.05, 0.2)
        love.graphics.circle('fill', level.x, level.y, level.circleSize)
      love.graphics.setColor(1, 1, 1)
    end

  elseif gamestate == titlestate then
    titlescreen:draw() --Draws titlescreen effects
  end
end
