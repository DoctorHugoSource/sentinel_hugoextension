local PART={}
PART.ID = "turdisrotor"
PART.Name = "rotor"
PART.Model = "models/torrent/turdis/rotor.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.UseTransparencyFix = true
PART.ShouldTakeDamage = true

if CLIENT then
	function PART:Initialize()
		self.rotor={}
		self.rotor.pos=0
		self.rotor.mode=1
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
			self.rotorspinonly.pos=math.Approach( self.rotorspinonly.pos, self.rotorspinonly.mode, FrameTime()*0.04 )
			self:SetPoseParameter( "rotorspinonly", self.rotorspinonly.pos )

			if self.rotor.pos > 0 or active then
				if self.rotor.pos==0 then
					self.rotor.pos=1
				elseif self.rotor.pos==1 and active then
					self.rotor.pos=0
				end
				self.rotor.pos=math.Approach( self.rotor.pos, self.rotor.mode, FrameTime()*0.2 )
				self:SetPoseParameter( "rotor", self.rotor.pos )
			end
		end
	end
end

TARDIS:AddPart(PART,e)

local PART={}
PART.ID = "turdisconsole"
PART.Name = "console"
PART.Model = "models/torrent/turdis/console.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.ShouldTakeDamage = true
PART.UseTransparencyFix = true

TARDIS:AddPart(PART)