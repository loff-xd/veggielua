function love.load()
	player={}
	player.speed=100
	player.health=10
	player.position={x=0,y=0}
	player.Move= function(self,direction,dt)
		self.position.x=self.position.x+(self.speed*dt*direction.x)
		self.position.y=self.position.y+(self.speed*dt*direction.y)
	end
end

function love.update(dt)
	if love.keyboard.isDown("w") then
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
	end
end

function love.draw()
	love.graphics.rectangle("fill",player.position.x,player.position.y,50,50)
end