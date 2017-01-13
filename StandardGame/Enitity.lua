Entity={}
Entity.entities={}

Entity.new= function(health,speed,position,size)
	newEntity={}
	newEntity.health=health
	newEntity.speed=speed
	newEntity.position=position
	newEntity.size=size
	newEntity.Update=function(self,dt)
	
	end
	newEntity.Draw=function(self)
		love.graphics.rectangle("fill",self.position.x,self.position.y,25,25)
	end
	
end