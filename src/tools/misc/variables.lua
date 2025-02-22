--Misc variables


variables = {}

function variables:load()
  gravity = 55

  defaultScale = 4

  scale = defaultScale --Just needs to be a number, so it will just be the defualt here
  preferedScreenHeight = 1080

  playstate = 1
  titlestate = 2

  gamestate = titlestate

  fontMain = love.graphics.newFont("fonts/PixelatedElegance.ttf", 9 * scale)

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


  scale = defaultScale * (windowHeight / preferedScreenHeight)

  scaleRaw = scale
  scale = math.round(scale)

  if scale < 1 then
    scale = 1 --Can't be zero pixels...
  end

  fontMain = love.graphics.newFont("fonts/PixelatedElegance.ttf", 9 * scale) --Updates font scale
end
