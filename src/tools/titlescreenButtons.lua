--Titlescreen buttons functions and variables
titlescreen.nextPress = 0

titlescreen.location = 1

titlescreen.selectedButton = 1

titlescreen.buttonLocations = {
  {
    {
      text = "Start game!",

      call = function()
        titlescreen:startGame()
      end
    },
    {
      text = "Settings.",

      call = function()
        titlescreen.location = 2
        titlescreen.buttons = titlescreen.buttonLocations[titlescreen.location]
        titlescreen.selectedButton = 3
      end
    },
    {
      text = "Exit...",

      call = function()
        love.event.quit()
      end
    }
  },
  {
    {
      text = "Keybinds.",

      call = function()

      end
    },
    {
      text = "Devmode: Off",

      call = function()
        if not dev.mode then
          titlescreen.buttons[2].text = "Devmode: On"
          dev.mode = true
        else
          dev.mode = false
          titlescreen.buttons[2].text = "Devmode: Off"
        end
      end
    },
    {
      text = "Go back...",

      call = function()
        titlescreen.location = 1
        titlescreen.selectedButton = 2
        titlescreen.buttons = titlescreen.buttonLocations[titlescreen.location]
      end
    }
  }
}

titlescreen.buttons = titlescreen.buttonLocations[titlescreen.location]

titlescreen.lastButton = #titlescreen.buttons

titlescreen.control = {}

function titlescreen.control.Down()
  if titlescreen.nextPress > 0 then
    return
  end

  if titlescreen.move:isPlaying() then
    titlescreen.move:stop()
  end

  titlescreen.move:play()

  titlescreen.selectedButton = titlescreen.selectedButton + 1

  if titlescreen.selectedButton > titlescreen.lastButton then
    titlescreen.selectedButton = 1
  end

  titlescreen.nextPress = 0.2
end

function titlescreen.control.Up()
  if titlescreen.nextPress > 0 then
    return
  end

  if titlescreen.move:isPlaying() then
    titlescreen.move:stop()
  end

  titlescreen.move:play()

  titlescreen.selectedButton = titlescreen.selectedButton - 1

  if titlescreen.selectedButton < 1 then
    titlescreen.selectedButton = titlescreen.lastButton
  end

  titlescreen.nextPress = 0.2
end
