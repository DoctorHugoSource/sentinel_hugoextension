local PART={}
PART.ID = "turdisfaultlocator"
PART.Name = "faultlocator"
PART.Model = "models/torrent/turdis/faultlocator.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.Animate = true
PART.AnimateSpeed = 0.34
PART.ShouldTakeDamage = true
PART.BypassIsomorphic = true

if SERVER then
	function PART:Toggle( bEnable, ply )
		self:EmitSound("turdis/torrent/fault_open.mp3")
		self:SetOn(bEnable)
		self:SetCollide(not bEnable, true)
	end
end


TARDIS:AddPart(PART)