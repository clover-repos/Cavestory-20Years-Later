--Handles titlescreen

titlescreen = {} --Za magik table

function titlescreen:load()
  self.song = love.audio.newSource("music/TitleTheme.ogg", "stream")
  self.song:setLooping(true)

  self.song:play()


  self.animation = player.animations.walk:clone()

  self.logo = love.graphics.newImage("sprites/ui/cavestory.png")

  require("src/tools/titlescreenButtons") --Less clutter for making buttons
end

function titlescreen:update()
  self.animation:update(publicDT)
  titlescreen:pressed() --Input

  titlescreen.buttonY = love.graphics.getHeight() / 2 - GetFontHeight() * titlescreen.lastButton * 1.5
  titlescreen.buttonX = love.graphics.getWidth() / 2 - GetFontStringWidth("Start game!") / 2

  if self.nextPress > 0 then
    self.nextPress = self.nextPress - publicDT
  end
end

function titlescreen:draw()
  love.graphics.setColor(0.125, 0.125, 0.125)
    love.graphics.rectangle("fill", 0, 0, windowWidth, windowHeight)
  love.graphics.setColor(1, 1, 1)

  love.graphics.draw(self.logo, windowWidth / 2 - self.logo:getWidth() * (scale / 2), windowHeight / 12, nil, scale)

  self.animation:draw(player.spritesheet, self.buttonX - player.width * (scale*5), self.buttonY + self:buttonTween(self.selectedButton, 0) - (player.height * (scale/4)), nil, scale)

  for i = 1, self.lastButton do
    self:drawButton(i)
  end
end

function titlescreen:startGame()
  --level.circleSize = level.circleMaxSize

  if not levelsong then
    self.song:stop()

    level:warp("testLevel1", nil, nil, true)

    levelsong = love.audio.newSource("music/Gestation.ogg", "stream")
    levelsong:setLooping(true)

    levelsong:play()
  end
end

function titlescreen:pressed()
  if inputs:pressed "action" then
    self.buttons[self.selectedButton]:call()
  end

  if inputs:down "up" then
    self.buttons.Up()
  elseif inputs:down "down" then
    self.buttons.Down()
  end
end

function titlescreen:buttonTween(i, factor)
  factor = factor or GetFontHeight() * 3

  return (GetFontHeight() * (3*i)) - factor
end

function titlescreen:drawButton(buttonId)
  love.graphics.print(self.buttons[buttonId].text, self.buttonX, self.buttonY + self:buttonTween(buttonId, 0))
end
