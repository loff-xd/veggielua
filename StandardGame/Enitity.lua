Entity={}
Entity.entities={}
--removes entities that are inactive and cleans them out of the table
Entity.CompressEntities=function(self)
	cond={}
	for k,v in pairs(self.entities) do
		if v.isActive then
			v.key=#cond+1
			cond[#cond+1]=v
		end
	end
	self.entities=cond
end

Entity.new= function(health,speed,position,size)
	newEntity={}
	newEntity.health=health
	newEntity.speed=speed
	newEntity.position=position
	newEntity.size=size
	new.isActive=true
	newEntity.Update=function(self,dt)
	
	end
	newEntity.Draw=function(self)
		love.graphics.rectangle("fill",self.position.x,self.position.y,size,size)
	end
	--should return table of entities colliding with self - untested- may return copy rather than original
	newEntity.CheckCollision=function(self)
		collisions={}
		for k,v in pairs(Entity.entities) do
			if v ~= self then
				vec=(x=self.position.x-v.position.x,y=self.position.y-v.position.y}
				mag=math.sqrt((vec.x^2)+(vec.y^2))
				if mag<=(self.size+v.size) then
					collisions[#collisions+1]=v
				end
			end
		end
		return collisions
	end
	return newEntity
end