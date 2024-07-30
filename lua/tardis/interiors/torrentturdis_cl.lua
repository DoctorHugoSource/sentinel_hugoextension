-- Torrent and Toast's TURDIS Revamp (Classic Doors)

local T = {
	ID = "torrentturdis_cl",
	Base="torrentturdis",
	IsVersionOf = "torrentturdis",
	Name="TURDIS (Revamp) (Classic Doors)",
}

T.EnableClassicDoors = true
T.Interior={
	Model="models/torrent/turdis/interior.mdl",
	Portal = {
		pos = Vector(-191.09326171875, 0, 46),
		ang = Angle(-0, 0, 0),
		width = 53.9999999,
		height = 90,
		inverted = false,
	},
	Fallback={
		pos=Vector(-175, -0.143, 2.178),
		ang=Angle(0,90,0),
	},
	Sounds={
		Door={
			enabled=true,
			open="turdis/torrent/bigdoor.ogg",
			close="turdis/torrent/bigdoor.ogg"
		},
	},
	Parts={
		door={
			model="models/torrent/turdis/door.mdl",
			posoffset=Vector(-29,0.86,-48.7),
			angoffset=Angle(0,180,0)
		},
		intdoor={
			model = "models/torrent/turdis/bigdoor.mdl",
			pos=Vector(0,0,0)
		},
	},
	IntDoorAnimationTime = 2.6,
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