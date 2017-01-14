require "Entity"
Player={}
Player.new=function(health,speed,position,size,ammo)
	newPlayer=Entity.new("player",health,speed,position,size)
	newPlayer.ammo=ammo
	newPlayer.Update=function(self,dt)
		if love.keyboard.isDown("w") then
		self.position.y=self.position.y-(self.speed*dt)
		end
		if love.keyboard.isDown("s") then
			self.position.y=self.position.y+(self.speed*dt)
		end
		if love.keyboard.isDown("a") then
			self.position.x=self.position.x-(self.speed*dt)
		end
		if love.keyboard.isDown("d") then
			self.position.x=self.position.x+(self.speed*dt)
		end
	end
	return newplayer
end