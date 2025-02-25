--Input button list (using baton library)

selectedController = 1 --Controller select!

inputs = baton.new {
  controls = {
    left = {"key:left", "key:a", "axis:leftx-", "button:dpleft"},
    right = {"key:right", "key:d", "axis:leftx+", "button:dpright"},
    up = {"key:up", "key:w", "axis:lefty-", "button:dpup"},
    down = {"key:down", "key:s", "axis:lefty+", "button:dpdown"},
    action = {"key:return", "button:a"},
    secondAction = {"key:x", "button:b"},
    jump = {"key:z", "button:a"},
    fullscreen = {"key:f11", "button:start"}
  },

  joystick = love.joystick.getJoysticks()[selectedController]
}
