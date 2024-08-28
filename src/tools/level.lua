--Functions for level"s in the game


level = {}

level.circleSize = 0
level.circleGrowth = 2000
level.transition = "idle"

level.circleColor = {0.05, 0.05, 0.2}

function level:warp(mapName, destX, destY, middle)
  self.transition = "open"

  self.warpDest, self.destX, self.destY, self.middle = mapName, destX, destY, middle
end

function level:load(mapName, destX, destY)
  if destX then
    player:setPosition(destX, player:getY())
  end

  if destY then
    player:setPosition(player:getX(), destY)
  end

  if self.notFirst then
    self:removeColliders()

    gamestate = playstate
  else
    self.notFirst = true
  end

  platforms = {}
  water = {}
  warps = {}

  gameLevel = sti("maps/" .. mapName .. ".lua")

  loadMapColliders("ground", platforms, "platform")
  loadMapColliders("environment", water, "water")
  loadMapColliders("warp", warps, "warp")

  tiledColliders("forgeground", platforms, "platform")

  enemies:spawn()

  background:load(gameLevel.properties.background)
end

function level:update()
  gameLevel:update(publicDT) --Tiles have animation

  local largeD
  local largeP

  if self.middle then
    self.x = windowWidth / 2
    self.y = windowHeight / 2
  else
    self.x, self.y = player:getPositionOnScreen()
  end

  if windowWidth >= windowHeight then
    largeD = windowWidth
    largeP = 1920
  else
    largeD = windowHeight
    largeP = 1080
  end

  level.circleGrowth = 2000 * largeD / largeP

  self.circleMaxSize = largeD * 1.15


  if self.transition == "open" then
    self.circleSize = self.circleSize + self.circleGrowth * publicDT

    if self.circleSize >= self.circleMaxSize then
      self.transition = "close"

      self:load(self.warpDest, self.destX, self.destY)
      self.warpDest, self.destX, self.destY = nil, nil, nil

      world:update(publicDT)
    end
  end

  if self.transition == "close" then
    self.circleSize = self.circleSize - self.circleGrowth * publicDT

    if self.circleSize <= 0 then
      self.transition = "idle"
      self.middle = nil
    end
  end
end

function level:removeColliders()
  for i = 1, #chinfish.colliders do
    enemies.despawn(chinfish, i)
  end

  removeMapColliders(platforms)
  removeMapColliders(water)
  removeMapColliders(warps)
end
