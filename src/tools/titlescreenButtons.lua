--Titlescreen buttons functions and variables
titlescreen.nextPress = 0

titlescreen.selectedButton = 1
titlescreen.buttons = {
  {
    text = "Start game!",

    call = function()
      titlescreen:startGame()
    end
  },
  {
    text = "Exit...",

    call = function()
      love.event.quit()
    end
  },
  {
    text = "Settings.",

    call = function()
      if titlescreen.buttons[1].text ~= "Keybinding." then
        titlescreen.buttons[1].text = "Keybinding."
        titlescreen.buttons[2].text = "Save files."
        titlescreen.buttons[3].text = "[X]  Go back..."

        titlescreen.buttons[1].call = function()end
        titlescreen.buttons[2].call = function()end
      else
        titlescreen.buttons[1].text = "Start game!"
        titlescreen.buttons[2].text = "Exit..."
        titlescreen.buttons[3].text = "Settings."

        titlescreen.buttons[1].call = function() titlescreen:startGame() end
        titlescreen.buttons[2].call = function() love.event.quit() end
      end
    end
  }
}

titlescreen.lastButton = #titlescreen.buttons


function titlescreen.buttons.Down()
  if titlescreen.nextPress > 0 then
    return
  end

  titlescreen.selectedButton = titlescreen.selectedButton + 1

  if titlescreen.selectedButton > titlescreen.lastButton then
    titlescreen.selectedButton = 1
  end

  titlescreen.nextPress = 0.2
end

function titlescreen.buttons.Up()
  if titlescreen.nextPress > 0 then
    return
  end

  titlescreen.selectedButton = titlescreen.selectedButton - 1

  if titlescreen.selectedButton < 1 then
    titlescreen.selectedButton = titlescreen.lastButton
  end

  titlescreen.nextPress = 0.2
end
