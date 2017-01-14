require "Entity"
Enemy={}
Enemy.new=function(health,speed,position,size,target)
	newEnemy=Entity.new("Enemy",health,speed,position,size)
	newEnemy.target=target
	newEnemy.Update=function(self,dt)
		-- finds the vector differance between self and target then narmalizes it to use as the direction for it's movment
		vec={x=self.target.position.x-self.position.x,y=self.target.position.y-self.position.y}
		mag=math.sqrt((vec.x^2)+(vec.y^2))
		normalVec={x=vec.x/mag,y=vec.y/mag}
		self.position={x=self.position.x+(normalVec.x*self.speed*dt),y=self.position.y+(normalVec.y*self.speed*dt)}
	end
	return newEnemy
end