--Functions for level"s in the game


level = {}

level.circleSize = 0
level.circleGrowth = 2000
level.transition = "idle"

level.circleColor = {0.05, 0.05, 0.2}

function level:warp(mapName, destX, destY, middle)
  if self.transition ~= 'idle' then return end

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
    self.song = love.audio.newSource("music/empty.ogg", "stream")
    self.notFirst = true
  end

  platforms = {}
  water = {}
  warps = {}
  npcs = {}
  npcs = {}
  events = {}

  gameLevel = sti("maps/" .. mapName .. ".lua")

  loadMapColliders("ground", platforms, "platform")
  loadMapColliders("environment", water, "water")
  loadMapColliders("warp", warps, "warp")
  loadMapColliders("event", events, "event")

  tiledColliders("forgeground", platforms, "platform")

  enemies:spawn()
  bunny:spawn()

  background:load(gameLevel.properties.background)
  gameLevel.isDark = gameLevel.properties.darkness

  if gameLevel.properties.music then
    if self.prevSongName == gameLevel.properties.music and self.song:isPlaying() then return end

    if self.song:isPlaying() then self.song:stop() end

    self.song = nil --I'm scared of memeory leaks

    self.song = love.audio.newSource("music/" .. gameLevel.properties.music .. ".ogg", "stream")
    self.song:setLooping(true)

    self.song:play()

    self.prevSongName = gameLevel.properties.music
  else
    if self.song:isPlaying() then self.song:stop() end
  end
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
      player.currentAnimation = player.animations.walk --Resets animation

      self.transition = "close"

      self:load(self.warpDest, self.destX, self.destY)
      self.warpDest, self.destX, self.destY = nil, nil, nil

      world:update(publicDT)
    end
  end

  if transition ~= "idle" then
    self.finishedLoading = nil
  end

  if self.transition == "close" then
    self.circleSize = self.circleSize - self.circleGrowth * publicDT

    if self.circleSize <= 0 then
      self.transition = "idle"
      self.middle = nil
      self.finishedLoading = true
    end
  end
end

function level:removeColliders()
  for i = 1, #chinfish.colliders do
    enemies.despawn(chinfish, i)
  end

  for i = 1, #bunny.colliders do
    npc.despawn(bunny, i)
  end

  removeMapColliders(platforms)
  removeMapColliders(water)
  removeMapColliders(warps)
  removeMapColliders(events)
end
