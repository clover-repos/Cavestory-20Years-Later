--Misc variables


variables = {}

function variables:load()
  gravity = 55

  defaultScale = 4

  scale = defaultScale --Just needs to be a number so it will just be the defualt here
  preferedScreenHeight = 1080
  preferedScreenWidth = 1920

  playstate = 1
  titlestate = 2
  titlestate = 3

  gamestate = titlestate

  fontMain = love.graphics.newFont("fonts/PixelatedElegance.ttf", 8 * scale)

  function GetFontHeight(font, string)
    font = font or fontMain
    string = string or " "

    return font:getHeight(string)
  end

  function GetFontStringWidth(string, font)
    font = font or fontMain

    return font:getWidth(string)
  end

  variables:update()
end

function variables:update()
  windowWidth, windowHeight = love.graphics.getDimensions()
  if windowWidth < 100 then windowWidth = 100 end
  if windowHeight < 100 then windowHeight = 100 end

  scale = defaultScale * (windowHeight / preferedScreenHeight)

  scaleRaw = scale
  scale = math.round(scale)

  if scale < 1 then
    scale = 1 --Can't be zero pixels...
  end

  scaleWidth = defaultScale * (windowWidth / preferedScreenWidth)

  scaleWidthRaw = scaleWidth
  scaleWidth = math.round(scaleWidth)

  if scaleWidth < 1 then
    scaleWidth = 1 --Can't be zero pixels...
  end

  fontMain = love.graphics.newFont("fonts/PixelatedElegance.ttf", 8 * ((scaleWidth+scale)/2)) --Updates font scale
end
