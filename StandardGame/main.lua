require "Entity"
require "Player"
require "Enemy"
playerTest={}
function love.load()
  playerTest=Player.new(10,60,{x=0,y=0},25,10)
  enemyTest=Enemy.new(10,20,{x=300,y=300},25,playerTest)
  return
end

function love.update(dt)
	Entity:Update(dt)
  
end

function love.draw()
	Entity:Draw()
end