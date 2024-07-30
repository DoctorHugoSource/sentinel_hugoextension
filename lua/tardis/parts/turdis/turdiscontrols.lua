
local PART={}
PART.ID = "turdisconsoledetail"
PART.Name = "consoledetail"
PART.Model = "models/torrent/turdis/consoledetail.mdl"
PART.AutoSetup = true
PART.Collision = false

TARDIS:AddPart(PART)

local PART={}
PART.ID = "turdisdestselect"
PART.Name = "destselect"
PART.Model = "models/torrent/turdis/destselect.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.ShouldTakeDamage = true
PART.SoundOn = "p00gie/tardis/default/telepathic_on.ogg"
PART.SoundOff = "p00gie/tardis/default/telepathic_off.ogg"

if GetConVar("hugoextension_tardis2_UsePartTimers"):GetBool() then  -- only add timer logic if enabled
    function PART:Use(ply)  
            local last_d_exit = ply:GetTardisData("destination_last_exit")
            if last_d_exit and self.Control == "destination" and CurTime() - last_d_exit < 1 then return end
            if CLIENT then
                self:SetData("default_telepathic_activation", RealTime() + 1)
            end

            if SERVER then
                ply:ScreenFade(SCREENFADE.OUT, Color(255,255,255,30), 1.2, 0)
            end

            self.interior:Timer("default_telepathic", 1, function()
                if SERVER then
                    TARDIS:Control(self.Control, ply, self)
                    ply:ScreenFade(SCREENFADE.IN, Color(255,255,255,30), 0.5, 0)
                else
                    self:SetData("default_telepathic_activation", nil)
                end
            end)
    end
end

TARDIS:AddPart(PART)

local PART={}
PART.ID = "turdisthirdperson"
PART.Name = "thirdperson"
PART.Model = "models/torrent/turdis/thirdperson.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.ShouldTakeDamage = true

TARDIS:AddPart(PART)

local PART={}
PART.ID = "turdisthrottle"
PART.Name = "throttle"
PART.Model = "models/torrent/turdis/throttle.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.ShouldTakeDamage = true
PART.Animate = true
PART.AnimateSpeed = 2

PART.SoundOn = "turdis/torrent/throttledown.ogg"
PART.SoundOff = "turdis/torrent/throttleup.ogg"

if GetConVar("hugoextension_tardis2_UsePartTimers"):GetBool() then  -- only add timer logic if enabled
    if SERVER then
        function PART:Use(ply)
            self.interior:Timer("", 0.2, function()
                TARDIS:Control(self.Control, ply)
            end)
        end
    end
end

TARDIS:AddPart(PART)

local PART={}
PART.ID = "turdisdial1"
PART.Name = "dial1"
PART.Model = "models/torrent/turdis/dial1.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.ShouldTakeDamage = true
PART.Animate = true
PART.AnimateSpeed = 2

PART.SoundOn = "turdis/torrent/dial.ogg"
PART.SoundOff = "turdis/torrent/dial.ogg"

if GetConVar("hugoextension_tardis2_UsePartTimers"):GetBool() then  -- only add timer logic if enabled
    if SERVER then
        function PART:Use(ply)
            self.interior:Timer("", 0.45, function()
                TARDIS:Control(self.Control, ply)
            end)
        end
    end
end

TARDIS:AddPart(PART)

local PART={}
PART.ID = "turdisdial2"
PART.Name = "dial2"
PART.Model = "models/torrent/turdis/dial1.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.ShouldTakeDamage = true
PART.Animate = true
PART.AnimateSpeed = 2

PART.SoundOn = "turdis/torrent/dial.ogg"
PART.SoundOff = "turdis/torrent/dial.ogg"

if GetConVar("hugoextension_tardis2_UsePartTimers"):GetBool() then  -- only add timer logic if enabled
    if SERVER then
        function PART:Use(ply)
            self.interior:Timer("", 0.45, function()
                TARDIS:Control(self.Control, ply)
            end)
        end
    end
end

TARDIS:AddPart(PART)

local PART={}
PART.ID = "turdisboggleswitch1"
PART.Name = "boggleswitch1"
PART.Model = "models/torrent/turdis/boggleswitch.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.ShouldTakeDamage = true
PART.Animate = true
PART.AnimateSpeed = 10

PART.SoundOn = "turdis/torrent/minidown.ogg"
PART.SoundOff = "turdis/torrent/miniup.ogg"

TARDIS:AddPart(PART)

local PART={}
PART.ID = "turdisboggleswitch2"
PART.Name = "boggleswitch2"
PART.Model = "models/torrent/turdis/boggleswitch.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.ShouldTakeDamage = true
PART.Animate = true
PART.AnimateSpeed = 10

PART.SoundOn = "turdis/torrent/minidown.ogg"
PART.SoundOff = "turdis/torrent/miniup.ogg"

TARDIS:AddPart(PART)

local PART={}
PART.ID = "turdisslider1"
PART.Name = "slider1"
PART.Model = "models/torrent/turdis/slider1.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.ShouldTakeDamage = true
PART.Animate = true
PART.AnimateSpeed = 2

PART.SoundOn = "turdis/torrent/sliderdown.ogg"
PART.SoundOff = "turdis/torrent/sliderup.ogg"

if GetConVar("hugoextension_tardis2_UsePartTimers"):GetBool() then  -- only add timer logic if enabled
    if SERVER then
        function PART:Use(ply)
            self.interior:Timer("", 0.2, function()
                TARDIS:Control(self.Control, ply)
            end)
        end
    end
end

TARDIS:AddPart(PART)

local PART={}
PART.ID = "turdisslider2"
PART.Name = "slider2"
PART.Model = "models/torrent/turdis/slider1.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.ShouldTakeDamage = true
PART.Animate = true
PART.AnimateSpeed = 2

PART.SoundOn = "turdis/torrent/sliderdown.ogg"
PART.SoundOff = "turdis/torrent/sliderup.ogg"

if GetConVar("hugoextension_tardis2_UsePartTimers"):GetBool() then  -- only add timer logic if enabled
    if SERVER then
        function PART:Use(ply)
            self.interior:Timer("", 0.2, function()
                TARDIS:Control(self.Control, ply)
            end)
        end
    end
end

TARDIS:AddPart(PART)

local PART={}
PART.ID = "turdiskeypad"
PART.Name = "keypad"
PART.Model = "models/torrent/turdis/keypad.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.ShouldTakeDamage = true
PART.Animate = true
PART.AnimateSpeed = 0.7

PART.SoundOn = "turdis/torrent/keypad.ogg"
PART.SoundOff = "turdis/torrent/keypad.ogg"

TARDIS:AddPart(PART)

local PART={}
PART.ID = "turdishandbrake"
PART.Name = "handbrake"
PART.Model = "models/torrent/turdis/handbrake.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.ShouldTakeDamage = true
PART.Animate = true
PART.AnimateSpeed = 2

PART.SoundOn = "turdis/torrent/handbrake.ogg"
PART.SoundOff = "turdis/torrent/handbrake.ogg"

if GetConVar("hugoextension_tardis2_UsePartTimers"):GetBool() then  -- only add timer logic if enabled
    if SERVER then
        function PART:Use(ply)
            self.interior:Timer("", 0.2, function()
                TARDIS:Control(self.Control, ply)
            end)
        end
    end
end

TARDIS:AddPart(PART)

local PART={}
PART.ID = "turdisenginerelease"
PART.Name = "enginerelease"
PART.Model = "models/torrent/turdis/enginerelease.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.ShouldTakeDamage = true
PART.Animate = true
PART.AnimateSpeed = 2

PART.SoundOn = "turdis/torrent/handbrake.ogg"
PART.SoundOff = "turdis/torrent/handbrake.ogg"

if GetConVar("hugoextension_tardis2_UsePartTimers"):GetBool() then  -- only add timer logic if enabled
    if SERVER then
        function PART:Use(ply)
            self.interior:Timer("", 0.2, function()
                TARDIS:Control(self.Control, ply)
            end)
        end
    end
end

TARDIS:AddPart(PART)

local PART={}
PART.ID = "turdisspinny1"
PART.Name = "spinny1"
PART.Model = "models/torrent/turdis/spinny1.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.ShouldTakeDamage = true
PART.Animate = true
PART.AnimateSpeed = 2

PART.SoundOn = "turdis/torrent/spinny.ogg"
PART.SoundOff = "turdis/torrent/spinny.ogg"

if GetConVar("hugoextension_tardis2_UsePartTimers"):GetBool() then  -- only add timer logic if enabled
    if SERVER then
        function PART:Use(ply)
            self.interior:Timer("", 0.2, function()
                TARDIS:Control(self.Control, ply)
            end)
        end
    end
end

TARDIS:AddPart(PART)

local PART={}
PART.ID = "turdisspinny2"
PART.Name = "spinny2"
PART.Model = "models/torrent/turdis/spinny2.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.ShouldTakeDamage = true
PART.Animate = true
PART.AnimateSpeed = 2

PART.SoundOn = "turdis/torrent/spinny.ogg"
PART.SoundOff = "turdis/torrent/spinny.ogg"

if GetConVar("hugoextension_tardis2_UsePartTimers"):GetBool() then  -- only add timer logic if enabled
    if SERVER then
        function PART:Use(ply)
            self.interior:Timer("", 0.2, function()
                TARDIS:Control(self.Control, ply)
            end)
        end
    end
end

TARDIS:AddPart(PART)

local PART={}
PART.ID = "turdistoyotalever1"
PART.Name = "toyotalever1"
PART.Model = "models/torrent/turdis/toyotalever.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.ShouldTakeDamage = true
PART.Animate = true
PART.AnimateSpeed = 10

PART.SoundOn = "turdis/torrent/lever.ogg"
PART.SoundOff = "turdis/torrent/lever.ogg"

TARDIS:AddPart(PART)

local PART={}
PART.ID = "turdistoyotalever2"
PART.Name = "toyotalever2"
PART.Model = "models/torrent/turdis/toyotalever.mdl"
PART.AutoSetup = true
PART.Collision = true
PART.ShouldTakeDamage = true
PART.Animate = true
PART.AnimateSpeed = 10

PART.SoundOn = "turdis/torrent/lever.ogg"
PART.SoundOff = "turdis/torrent/lever.ogg"

TARDIS:AddPart(PART)