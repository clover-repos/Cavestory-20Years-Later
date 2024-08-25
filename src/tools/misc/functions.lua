--Misc functions

function impactPause()
  impactFreeze = impactFreeze or 0

  if impactFreeze > 0 then
    love.timer.sleep(impactFreeze)
    impactFreeze = 0
  end
end

function toggleFullscreen()
  local isFullscreen = love.window.getFullscreen() --Checks if game is in fullscreen

  if isFullscreen then
    love.window.setFullscreen(false)
  else
    love.window.setFullscreen(true)
  end
end

--Lua"s math library does not round built in
function math.round(number)
    if number >= 0 then
        return math.floor(number + 0.5)
    end

    return math.ceil(number - 0.5)
end
