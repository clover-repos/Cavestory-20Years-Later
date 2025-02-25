dialoge = {}

function dialoge:load()
  self.text = ""
  self.index = 1
  self.timer = 0.075
  self.charTimer = self.timer
  self.sound = love.audio.newSource("sounds/ui/talk.ogg", "static")

  self.images = {
    love.graphics.newImage("tilesets/textBox/topLeft.png"),
    love.graphics.newImage("tilesets/textBox/topMiddle.png"),
    love.graphics.newImage("tilesets/textBox/topRight.png"),
    love.graphics.newImage("tilesets/textBox/middleLeft.png"),
    love.graphics.newImage("tilesets/textBox/center.png"),
    love.graphics.newImage("tilesets/textBox/middleRight.png"),
    love.graphics.newImage("tilesets/textBox/bottomLeft.png"),
    love.graphics.newImage("tilesets/textBox/bottomMiddle.png"),
    love.graphics.newImage("tilesets/textBox/bottomRight.png")
  }
end

function dialoge:update()
  self.x = math.round(windowWidth/8/scale)*scale
  self.y = math.round(windowHeight/1.25/scale)*scale

  self.width = windowWidth - self.x*2
  self.height = windowHeight/5.25

  self.charTimer = self.charTimer - publicDT

  if self.index < #self.text and self.charTimer <= 0 then
    self.index = self.index + 1
    self.charTimer = self.timer
    local char = self.text:sub(self.index + 1, self.index + 1)
    if char == "," or char == "." then
      self.charTimer = self.charTimer + 0.05
    end
    if inputs:down("secondAction") then self.charTimer = self.charTimer/2 end

    self.sound:stop()
    self.sound:play()
  end

  if self.index == #self.text then
    if inputs:pressed("action") then
      self.index = 1
      self.charTimer = self.timer
      gamestate = playstate
    end
  end
end

function dialoge:newText(text)
  self.text = text
  gamestate = textingstate
end

function dialoge:draw()
  local x, y = self.x+self.width-16*scale, self.y+self.height-16*scale

  love.graphics.setColor(19/255, 1/255, 108/255)
    love.graphics.rectangle("fill", self.x+8*scale, self.y+8*scale, self.width-16*scale, self.height-16*scale)
  love.graphics.setColor(1, 1, 1)

  for i = 1, math.ceil((x-self.x)/16)-scale do
    love.graphics.draw(self.images[2], self.x+(i*16), self.y, nil, scale)
    love.graphics.draw(self.images[8], self.x+(i*16), self.y+self.height-16*scale, nil, scale)
  end

  for i = 1, math.ceil((y-self.y)/16)-scale do
    love.graphics.draw(self.images[4], self.x, self.y+i*16, nil, scale)
    love.graphics.draw(self.images[6], self.x+self.width-16*scale, self.y+i*16, nil, scale)
  end

  love.graphics.draw(self.images[1], self.x, self.y, nil, scale)
  love.graphics.draw(self.images[3], x, self.y, nil, scale)
  love.graphics.draw(self.images[7], self.x, y, nil, scale)
  love.graphics.draw(self.images[9], x, y, nil, scale)

  love.graphics.print(self.text:sub(1, self.index), self.x + 8*scale, self.y + 8*scale)
end
