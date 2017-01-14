require "Entity"
require "Player"

function love.load()
  player=Player.new(10,20,{x=0,y=0},25,10)
end

function love.update(dt)
	Entity:Update(dt)
  
end

function love.draw()
	Entity:Draw()
end