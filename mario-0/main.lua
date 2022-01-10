push = require 'push'

virtualWidth = 432
virtualHeight = 243

windowWidth = 1280
windowHeight = 720

map = Map:create()

function love.load()
  love.graphics.setDefaultFilter('nearest', 'nearest')
  
  push:setupScreen(virtualWidth, virtualHeight, windowWidth, windowHeight, {
    fullscreen = false,
      resizable = true
  })
end

-- called whenever window is resized
function love.resize(w, h)
    push:resize(w, h)
end

-- called whenever a key is pressed
function love.keypressed(key)
    if key == 'escape' then
        love.event.quit()
    end
end

-- called every frame, with dt passed in as delta in time since last frame
function love.update(dt)

end

-- called each frame, used to render to the screen
function love.draw()
    -- begin virtual resolution drawing
    push:apply('start')

    -- prints 'Hello world!' centered on the screen
    love.graphics.printf('Hello world!', 0, virtualHeight / 2, virtualWidth,
        'center', 0, 1, 1)

    -- end virtual resolution
    push:apply('end')
end
