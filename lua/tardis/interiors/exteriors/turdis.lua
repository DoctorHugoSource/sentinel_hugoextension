local E = {
    ID = "turdispb",
    Base = "base",
    Name = "The Sentinel TARDIS",
	Category = "Exteriors.Categories.PoliceBoxes",
    DoorAnimationTime=0.85,
	Model = "models/torrent/turdis/pbexterior.mdl",
	ScannerOffset=Vector(50,0,50),
    Portal = {
		-- Generated by portals debug tool
		pos = Vector(29.2, -0.9, 48.7),
		ang = Angle(1.5615452866768e-05, -1.4994403500168e-05, 1.0530432518863e-05),
		width = 42,
		height = 93.99,
		thickness = 20,
		inverted=1,
	},
	Sounds={
		Teleport={
			mat="toast/turd/mat.ogg",
			demat_damaged = "toast/turd/dematwarn_ext.ogg",
			mat_damaged = "toast/turd/matwarn_ext.ogg",
			demat_damaged_fast = "toast/turd/dematwarn_ext.ogg",
			mat_damaged_fast = "toast/turd/matwarn_ext.ogg",
			demat_fast = "toast/turd/demat.ogg",
			mat_fast = "toast/turd/mat.ogg",
			demat="toast/turd/demat.ogg",
			fullflight="toast/turd/fullflight.ogg",
			fullflight_damaged="toast/turd/fullflight_warn.ogg",
			interrupt ="toast/turd/interrupt.ogg"
		},
		Spawn = "toast/turd/inter.ogg",
		Door={
			enabled=true,
			open="turdis/torrent/pb_open.ogg",
			close="turdis/torrent/pb_close.ogg"
		},
		FlightLoop="turdis/torrent/flight_loopext.wav",
		FlightLoopDamaged = "turdis/torrent/flight_loopext_warning.wav",
		Spawn = "turdis/torrent/pbspawn.ogg",
        Delete = "turdis/torrent/pbdelete.ogg",
		RepairFinish="turdis/torrent/pbspawn.ogg",
	},
	Light={
		enabled=true,
		pos=Vector(0,0,108),
		color=Color(191,71,243),
		brightness=2,
		dynamicpos = Vector(0, 0, 108),
		dynamicbrightness = 2,
		dynamicsize = 150
	},
	Parts={
		door={
				model = "models/torrent/turdis/pbdoor.mdl",
				posoffset=Vector(-29,0.9,-48.7),
				angoffset=Angle(0,0,0)
		},
	},
}

TARDIS:AddExterior(E)

local E = {
    ID = "turdis",
    Base = "base",
    Name = "TURDIS",
    DoorAnimationTime=0.5,
	Model="models/torrent/turdis/exterior.mdl",
	ScannerOffset=Vector(50,0,50),
	Portal = {
		-- Generated by portals debug tool
		pos = Vector(29.5, -0.9, 48.7),
		ang = Angle(1.5615452866768e-05, -1.4994403500168e-05, 1.0530432518863e-05),
		width = 42,
		height = 93.99,
		thickness = 20,
		inverted=1,
	},
	Teleport = {
	PrematDelay = 8.5,
	},
	Sounds={
		Teleport={
			mat="turdis/torrent/mat.ogg",
			demat="turdis/torrent/demat.ogg",
			demat_fast = "turdis/torrent/demat.ogg",
			mat_fast = "turdis/torrent/mat.ogg",
			fullflight="turdis/torrent/fullflight.ogg",
		},
		FlightLoop="turdis/torrent/flight_loop.wav",
		FlightLoopDamaged = "turdis/torrent/flight_loopext_warning.wav",
		Spawn = "turdis/torrent/spawn.ogg",
        Delete = "turdis/torrent/delete.ogg",
		RepairFinish="turdis/torrent/spawn.ogg",
		Door={
			enabled=true,
			open="turdis/torrent/open.ogg",
			close="turdis/torrent/close.ogg"
		},
	},
	Light={
		enabled=false,
	},
	Parts={
		door={
			model="models/torrent/turdis/door.mdl",
			posoffset=Vector(-29,0.9,-48.7),
			angoffset=Angle(0,0,0)
		},
		vortex={
			model="models/torrent/vortex/turdisvortex.mdl",
			pos=Vector(0,0,50),
			ang=Angle(0,0,0),
			scale=10
		},
	},
}

TARDIS:AddExterior(E)