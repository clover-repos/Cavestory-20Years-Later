--Extra functions for the camera


camera.lock = true

camera.time, camera.power, camera.reset = 0, 0, 0 --Startup values

function camera:update()
	self:lookAt(player:getX(), player:getY())

	local w = love.graphics.getWidth()
	local h = love.graphics.getHeight()

	if self.lock then
		-- Left border
		if self.x < (w / 2) / scale then
				self.x = (w / 2) / scale
		end

		-- Top border
		if self.y < (h / 2) / scale then
				self.y = (h / 2) / scale
		end

		-- Get width/height of background
		local mapW = (gameLevel.width * gameLevel.tilewidth) * scale
		local mapH = (gameLevel.height * gameLevel.tileheight) * scale

		-- Right border
		if self.x > (mapW - w / 2) / scale then
				self.x = (mapW - w / 2) / scale
		end

		-- Bottom border
		if self.y > (mapH - h / 2) / scale then
				self.y = (mapH - h / 2) / scale
		end
	end

	self:shakeIntern()

	self:zoomTo(scale)
end

function camera:shakeIntern()
	if self.time > 0 then
		self.time = self.time - publicDT
		if self.reset <= 0 then
			self.power = -self.power

			self.x = self.x + self.power
			self.y = self.y + self.power
			self.reset = self.resetRaw
		end
	end

	if self.reset > 0 then
		self.reset = self.reset - publicDT
	end
end

function camera:shake(time, power, reset)
	self.time, self.power, self.reset = time, power / 4 * scale, reset
	self.resetRaw = reset
end
