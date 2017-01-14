require "Entity"
require "Player"

function love.load()
  player=Player.new(10,20,{x=0,y=0},25,10)
  -- PLAYER
  
	--[[player={}
	player.speed=100
	player.health=10
	player.ammo=10
	player.position={x=0,y=0}
  player.size = 50
	player.Move = function(self,direction,dt)
		self.position.x=self.position.x+(self.speed*dt*direction.x)
		self.position.y=self.position.y+(self.speed*dt*direction.y)
  end
	player.Fire = function(direction)
		ammo=ammo-1
	end]]--
  
end

function love.update(dt)
  
  -- PLAYER MOVEMENT
	--[[if love.keyboard.isDown("w") then
		player:Move({x=0,y=-1},dt)
	end
	if love.keyboard.isDown("s") then
		player:Move({x=0,y=1},dt)
	end
	if love.keyboard.isDown("a") then
		player:Move({x=-1,y=0},dt)
	end
	if love.keyboard.isDown("d") then
		player:Move({x=1,y=0},dt)
	end]]--
	Entity:Update(dt)
  
end

function love.draw()
	Entity:Draw()
end