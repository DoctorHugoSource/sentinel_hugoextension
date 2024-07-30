-- Torrent and Toast's TURDIS Revamp (Classic Doors)

local T = {
	ID = "turdispb_cl",
	Base="torrentturdis_cl",
	IsVersionOf = "torrentturdis",
	Name="TURDIS (Classic Doors)",
}

T.Exterior={
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
    Parts = {
		door={
			model="models/torrent/turdis/door.mdl",
			posoffset=Vector(-29,0.9,-48.7),
			angoffset=Angle(0,0,0)
		},
	},
	Sounds={
		Teleport={
			mat="turdis/torrent/mat.ogg",
			demat="turdis/torrent/demat.ogg",
			demat_fast = "turdis/torrent/demat.ogg",
			mat_fast = "turdis/torrent/mat.ogg",
			fullflight="turdis/torrent/fullflight.ogg",
		},
		Spawn = "turdis/torrent/spawn.ogg",
        Delete = "turdis/torrent/delete.ogg",
		RepairFinish="turdis/torrent/spawn.ogg",
		FlightLoop="turdis/torrent/flight_loop.wav",
		Door={
			enabled=true,
			open="turdis/torrent/open.ogg",
			close="turdis/torrent/close.ogg"
		},
	},
	Light={
		enabled=false,
	},
	Teleport = {
		SequenceSpeed = { Mat = 0.7, Demat = 0.6 },
		SequenceSpeedWarning = { Mat = 0.4, Demat = 0.4 },
        SequenceSpeedFast = 1.1,
        SequenceSpeedWarnFast = 0.8,
		PrematDelay = 2.5,
		DematSequenceDelays={
            [1] = 2.5
        },
	},
}

T.EnableClassicDoors = true
T.Interior={
	Parts = {
        door={
			model="models/torrent/turdis/door.mdl",
			posoffset=Vector(29,-0.84,-47.7),
			angoffset=Angle(0,180,0),
		},
		turdisdoorway1=true,
		turdisdoorway2=false,
	},
}

T.Interior.TextureSets = {
	["normal"] = {
		prefix = "models/turdis/",

		{ "intdoor", 1, "roundellit", },
		{ "turdisroundels", 1, "roundellit", },
		{ "turdislights", 2, "light", },
		{ "turdisbarlights", 1, "barlight", },
		{ "turdisrotor", 4, "roundellit", },
		{ "turdisconsole", 5, "roundellit", },
		{ "turdisconsole", 2, "telepathic", },
		{ "turdisconsoledetail", 4, "roundellit", },
		{ "turdisrailings", 0, "consolebase", },

	},
	["poweroff"] = {
		prefix = "models/turdis/off/",

		{ "intdoor", 1, "roundellit_off", },
		{ "turdisroundels", 1, "roundellit_off", },
		{ "turdislights", 2, "light_off", },
		{ "turdisbarlights", 1, "barlight_off", },
		{ "turdisrotor", 4, "roundellit_off", },
		{ "turdisconsole", 5, "roundellit_off", },
		{ "turdisconsole", 2, "telepathic_off", },
		{ "turdisconsoledetail", 4, "roundellit_off", },

	},
	["warning"] = {
		prefix = "models/turdis/warning/",

		{ "intdoor", 1, "roundellit_warning", },
		{ "turdisroundels", 1, "roundellit_warning", },
		{ "turdislights", 2, "light__warning", },
		{ "turdisbarlights", 1, "barlight_warning", },
		{ "turdisrotor", 4, "roundellit_warning", },
		{ "turdisconsole", 5, "roundellit_warning", },
		{ "turdisconsole", 2, "telepathic_warning", },
		{ "turdisconsoledetail", 4, "roundellit_warning", },

	},
	["flight"] = {
		prefix = "models/turdis/flight/",

		{ "intdoor", 1, "roundel_colored_flight", },
		{ "turdisroundels", 1, "roundel_colored_flight", },
		{ "turdisbarlights", 1, "barlight_flight", },
		{ "turdisrotor", 4, "roundel_colored_flight", },
		{ "turdisconsole", 5, "roundel_colored_flight", },
		{ "turdisconsoledetail", 4, "roundel_colored_flight", },

	},

	["warning_flight"] = {
		prefix = "models/turdis/warningflight/",

		{ "intdoor", 1, "roundellit_warning_flight", },
		{ "turdisroundels", 1, "roundellit_warning_flight", },
		{ "turdisbarlights", 1, "barlight_warning_flight", },
		{ "turdisrotor", 4, "roundellit_warning_flight", },
		{ "turdisconsole", 5, "roundellit_warning_flight", },
		{ "turdisconsoledetail", 4, "roundellit_warning_flight", },

	},
}

local TEXTURE_UPDATE_DATA_IDS = {
	["power-state"] = true,
	["health-warning"] = true,
	["teleport"] = true,
	["vortex"] = true,
	["flight"] = true,
}

T.CustomHooks = {
	travel_textures = {
		exthooks = {
			["DataChanged"] = true,
		},
		inthooks = {
			["PowerToggled"] = true,
		},
		func = function(ext, int, data_id, data_value)

			prefix = "models/torrent/tardis/"

			local power = ext:GetData("power-state")
			local warning = ext:GetData("health-warning")
			local teleport = ext:GetData("teleport")
			local flight = ext:GetData("flight")
			local vortex = ext:GetData("vortex")

			if not power then
				int:ApplyTextureSet("poweroff")
				ext:ApplyTextureSet("poweroff")
			else
				if flight or teleport or vortex then
					int:ApplyTextureSet(warning and "warning_flight" or "flight")
					ext:ApplyTextureSet(warning and "warning_flight" or "flight")
				else
					int:ApplyTextureSet(warning and "warning" or "normal")
					ext:ApplyTextureSet(warning and "warning" or "normal")
				end
			end
		end,
	},
}

TARDIS:AddInterior(T)