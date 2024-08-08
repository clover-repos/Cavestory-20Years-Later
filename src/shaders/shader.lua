--Shaders for extra cools graphical effects


shaders = {}

function shaders:load()
  -- Faded light source
  shaders.trueLight = love.graphics.newShader("src/shaders/trueLight.glsl") --Thanks to Kyle (Challacade) for this shader...

  shaders.lightFlicker = 0.4572
  shaders.lightFlickerSpeed = 0.005
end

function shaders:update()
  lightX, lightY = player:getPositionOnScreen()

  shaders.lightFlicker = shaders.lightFlicker + shaders.lightFlickerSpeed * publicDT

  if shaders.lightFlicker >= 0.46 then
    shaders.lightFlickerSpeed = -shaders.lightFlickerSpeed
    shaders.lightFlicker = 0.46
  elseif shaders.lightFlicker <= 0.4525 then
    shaders.lightFlickerSpeed = -shaders.lightFlickerSpeed
    shaders.lightFlicker = 0.4525
  end

  shaders.trueLight:send("playerX", lightX)
  shaders.trueLight:send("playerY", lightY)

  shaders.trueLight:send("shaderTween", shaders.lightFlicker)
  shaders.trueLight:send("scale", scale)
end

function shaders:draw()
  local mapW = (gameLevel.width * gameLevel.tilewidth)
  local mapH = (gameLevel.height * gameLevel.tileheight)

  love.graphics.setShader(shaders.trueLight)

    love.graphics.rectangle("fill", -1, -1, mapW + 2, mapH + 2)

  love.graphics.setShader()
end
