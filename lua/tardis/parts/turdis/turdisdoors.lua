local PART={}
PART.ID = "turdisroomdoor1"
PART.Name = "roomdoor1"
PART.Model = "models/torrent/turdis/roomdoor.mdl"
PART.AutoSetup = true
PART.ShouldTakeDamage = true
PART.Collision = true
PART.Animate = true
PART.AnimateSpeed = 0.4
PART.BypassIsomorphic = true
PART.AutoPosition = true

if SERVER then
	function PART:Use()
		sound.Play("turdis/torrent/fault_open.ogg", self:LocalToWorld(Vector(0.086, 264.165, 32.479)))
		self:SetCollide(self:GetOn())
	end
end

TARDIS:AddPart(PART)

local PART={}
PART.ID = "turdisroomdoor2"
PART.Name = "roomdoor2"
PART.Model = "models/torrent/turdis/roomdoor.mdl"
PART.AutoSetup = true
PART.ShouldTakeDamage = true
PART.Collision = true
PART.Animate = true
PART.AnimateSpeed = 0.4
PART.BypassIsomorphic = true

if SERVER then
	function PART:Use()
		sound.Play("turdis/torrent/fault_open.ogg", self:LocalToWorld(Vector(0.086, 264.165, 32.479)))
		self:SetCollide(self:GetOn())
	end
end

TARDIS:AddPart(PART)

local PART={}
PART.ID = "turdisroomdoor3"
PART.Name = "roomdoor3"
PART.Model = "models/torrent/turdis/roomdoor.mdl"
PART.AutoSetup = true
PART.ShouldTakeDamage = true
PART.Collision = true
PART.Animate = true
PART.AnimateSpeed = 0.4
PART.BypassIsomorphic = true

if SERVER then
	function PART:Use()
		sound.Play("turdis/torrent/fault_open.ogg", self:LocalToWorld(Vector(0.086, 264.165, 32.479)))
		self:SetCollide(self:GetOn())
	end
end

TARDIS:AddPart(PART)

local PART={}
PART.ID = "turdiscorridordoor1"
PART.Name = "corridordoor1"
PART.Model = "models/torrent/turdis/corridordoor.mdl"
PART.AutoSetup = true
PART.ShouldTakeDamage = true
PART.Collision = true
PART.Animate = true
PART.AnimateSpeed = 0.4
PART.BypassIsomorphic = true

if SERVER then
	function PART:Use()
		sound.Play("turdis/torrent/fault_open.ogg", self:LocalToWorld(Vector(-96.293, 167.946, 32.134)))
		self:SetCollide(self:GetOn())
	end
end

TARDIS:AddPart(PART)

local PART={}
PART.ID = "turdiscorridordoor2"
PART.Name = "corridordoor2"
PART.Model = "models/torrent/turdis/corridordoor.mdl"
PART.AutoSetup = true
PART.ShouldTakeDamage = true
PART.Collision = true
PART.Animate = true
PART.AnimateSpeed = 0.4
PART.BypassIsomorphic = true

if SERVER then
	function PART:Use()
		sound.Play("turdis/torrent/fault_open.ogg", self:LocalToWorld(Vector(-96.293, 167.946, 32.134)))
		self:SetCollide(self:GetOn())
	end
end

TARDIS:AddPart(PART)