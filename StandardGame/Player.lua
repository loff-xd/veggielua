require "Entity"
Player={}
Player.new=function(health,speed,position,size,ammo)
	newPlayer=Entity.new("player",health,speed,position,size)
	newPlayer.ammo=ammo
  
  newPlayer.Move = function(self,direction,dt)
		self.ppx=self.position.x+(self.speed*dt*direction.x)
		self.ppy=self.position.y+(self.speed*dt*direction.y)
    if (0 < self.ppx) and (self.ppx < love.graphics.getWidth()-self.size) then
      self.position.x = self.ppx
    end
    if (0 < self.ppy) and (self.ppy < love.graphics.getHeight()-self.size) then
      self.position.y = self.ppy
    end
  end
    
	newPlayer.Update=function(self,dt)
		if love.keyboard.isDown("w") then
      self:Move({x=0,y=-1},dt)
		end
		if love.keyboard.isDown("s") then
			self:Move({x=0,y=1},dt)
		end
		if love.keyboard.isDown("a") then
			self:Move({x=-1,y=0},dt)
		end
		if love.keyboard.isDown("d") then
			self:Move({x=1,y=0},dt)
		end
	end
	return newplayer
end