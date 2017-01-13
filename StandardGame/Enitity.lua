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
--updates and cleans entities
Enitity.Update=function(self)
	cond={}
	for k,v in pairs(self.entities) do
		if v.isActive then
			v.key=#cond+1
			cond[#cond+1]=v
			v:update()
		end
	end
	self.entities=cond
end

Entity.new= function(name,health,speed,position,size)
	newEntity={}
	-- name is used to determain tpye eg "player","zombie","bullet"
	newEntity.name=name
	newEntity.health=health
	newEntity.speed=speed
	newEntity.position=position
	newEntity.size=size
	new.isActive=true
	--override this with entity logic
	newEntity.Update=function(self,dt)
	
	end
	--override this with enity draw
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
	--imidiatly deactivates and compresses entity - may be a little expensive
	newEntity.Destroy=function(self)
		self.isActive=false
		Entity:CompressEntities()
	end
	--key is it's index in entities - may become nessasary for referance
	newEntity.key=#Entity.entities+1
	Entity.entities[newEntity.key]=newEntity
	return newEntity
end