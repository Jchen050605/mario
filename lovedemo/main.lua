push = require 'push'

local sprite
local x
local y

local virtualWidth = 432
local virtualHeight = 243
local speed = 10

function love.load()
  love.graphics.setDefaultFilter('nearest', 'nearest')
  
  sprite = love.graphics.newImage('graphics/mario.png')
  x = virtualWidth / 2 - sprite:getWidth() / 2
  y = virtualHeight / 2 - sprite:getHeight() / 2
  
  push:setupScreen(virtualWidth, virtualHeight, 640, 480, {
      fullscreen = false
  })
end

function love.update(dt)

end

-- a callback function called whenever we press a key
function love.keypressed(key)
    if key == 'left' then
        x = x - speed
    end
    if key == 'right' then
        x = x + speed
    end

    if key == 'up' then
        y = y - speed
    end
    if key == 'down' then
        y = y + speed
    end

    if key == 'escape' then
        love.event.quit()
    end
end

-- a function called each frame meant to render things to the screen
function love.draw()
    push:apply('start')
    love.graphics.draw(sprite, x, y)
    push:apply('end')
end  
