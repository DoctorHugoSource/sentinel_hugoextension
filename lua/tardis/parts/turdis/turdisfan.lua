local PART={}
PART.ID = "turdisfan"
PART.Name = "fan"
PART.Model = "models/torrent/turdis/fan.mdl"
PART.AutoSetup = true
PART.Collision = false

if CLIENT then
	function PART:Initialize()
		self.rotorspinonly={}
		self.rotorspinonly.pos=0
		self.rotorspinonly.mode=1
	end

	function PART:Think()
		local exterior = self.exterior
		local power = exterior:GetData("power-state")

		if power then
			local flight = exterior:GetData("flight")
			local teleport = exterior:GetData("teleport")
			local vortex = exterior:GetData("vortex")
			local float = exterior:GetData("float")
			local active = flight or teleport or vortex or float

			if self.rotorspinonly.pos==0 then
				self.rotorspinonly.pos=1
			elseif self.rotorspinonly.pos==1 then
				self.rotorspinonly.pos=0
			end
			self.rotorspinonly.pos=math.Approach( self.rotorspinonly.pos, self.rotorspinonly.mode, FrameTime()*0.5 )
			self:SetPoseParameter( "rotorspinonly", self.rotorspinonly.pos )

		end
	end
end

TARDIS:AddPart(PART,e)

local PART={}
PART.ID = "turdisfan2"
PART.Name = "fan2"
PART.Model = "models/torrent/turdis/fan.mdl"
PART.AutoSetup = true
PART.Collision = false

if CLIENT then
	function PART:Initialize()
		self.rotorspinonly={}
		self.rotorspinonly.pos=0
		self.rotorspinonly.mode=1
	end

	function PART:Think()
		local exterior = self.exterior
		local power = exterior:GetData("power-state")

		if power then
			local flight = exterior:GetData("flight")
			local teleport = exterior:GetData("teleport")
			local vortex = exterior:GetData("vortex")
			local float = exterior:GetData("float")
			local active = flight or teleport or vortex or float

			if self.rotorspinonly.pos==0 then
				self.rotorspinonly.pos=1
			elseif self.rotorspinonly.pos==1 then
				self.rotorspinonly.pos=0
			end
			self.rotorspinonly.pos=math.Approach( self.rotorspinonly.pos, self.rotorspinonly.mode, FrameTime()*0.5 )
			self:SetPoseParameter( "rotorspinonly", self.rotorspinonly.pos )

		end
	end
end

TARDIS:AddPart(PART,e)