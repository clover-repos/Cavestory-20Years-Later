--Misc variables


variables = {}

function variables:load()
  gravity = 100
  scale = 4
  preferedScreenHeight = 1080

  playstate = 1
  titlestate = 2

  gamestate = titlestate

  fontMain = love.graphics.newFont('fonts/CaveStory.ttf', 15 * scale)

  function GetFontHeight(font, string)
    font = font or fontMain
    string = string or ' '

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


  scale = 4 --Resets scale so it can recaulculate
  scale = scale * (windowHeight / preferedScreenHeight)

  scaleRaw = scale

  scale = math.round(scale)
  if scale <= 1 then
    scale = 1.001
  end

  fontMain = love.graphics.newFont('fonts/CaveStory.ttf', 15 * scale) --Updates font scale
end
