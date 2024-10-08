-- Torrent and Toast's TURDIS Revamp

local T={}
T.Base="base"
T.Name="The Sentinel"
T.ID="torrentturdis"

T.Versions = {
	randomize = true,
	allow_custom = true,
	randomize_custom = true,

	main = {
		classic_doors_id = "torrentturdis_cl",
		double_doors_id = "torrentturdis",
	},
	other={
		{
			name="TURDIS",
			classic_doors_id = "turdispb_cl",
			double_doors_id = "turdispb",
		},
	},
}

T.Exterior = {
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
			mat_short = "toast/turd/sentinel_mat_short.ogg",
			demat_damaged = "toast/turd/dematwarn_ext.ogg",
			mat_damaged = "toast/turd/matwarn_ext.ogg",
			demat_damaged_fast = "toast/turd/dematwarn_ext.ogg",
			mat_damaged_fast = "toast/turd/matwarn_ext.ogg",
			demat_fast = "toast/turd/demat_fast.ogg",
			mat_fast = "toast/turd/mat_fast.ogg",
			demat="toast/turd/demat.ogg",
			fullflight="toast/turd/fullflight.ogg",
			fullflight_damaged="toast/turd/fullflight_warn.ogg",
			interrupt ="toast/turd/interrupt.ogg",
			mathop_demat 	= "toast/turd/mathop_sentinel_demat.ogg",
			mathop_mat 		= "toast/turd/mathop_sentinel_mat.ogg",
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
		vortex={
			model="models/hugoextension/2023/2023vortex.mdl",
			pos=Vector(0,0,50),
			ang=Angle(0,0,0),
			scale=5
		},
		stephelper = {pos = Vector(17,0,0.2-3), ang = Angle(0, 0, 0), },
		stephelper2 = {pos = Vector(17-3,0,0.2), ang = Angle(0, 0, 0), },
	},
	Teleport = {

			DematSequenceDelays = {
				[1] = 3.5
			},
			DematFastSequenceDelays = {
				[1] = 0.5
			},

			SequenceSpeed = {
			 Mat = 1.5,
			 Demat = 1.5,
			 },
			PrematDelay = 3.5,
			PrematDelayShort = 1,

			SequenceSpeedFast = 1.5,
			PrematSequenceDelayFast = 0.1,

			SequenceSpeedVeryFast = 2.8,
			PrematSequenceDelayVeryFast = 0.1,

			SequenceSpeedWarning = 1.5,
			SequenceSpeedWarnFast = 1.5,

			SequenceSpeedHads = 1.8,

			DematSequence = {
				192,
				250,
				129,
				200,
				85,
				160,
				17,
				90,
				0
			},
			MatSequence = {
				120,
				30,
				140,
				55,
				150,
				70,
				160,
				82,
				200,
			},
			DematSequenceFast = {
				192,
				250,
				129,
				200,
				85,
				160,
				0
			},
			MatSequenceFast = {
				0,
				255,
				255,    -- these have to be here because of the sentinel's unique fast remat sequence, and because the base will 'overwrite' any extension's sequence that is shorter than the base
				255,
				255,
				255,
				255,
			},
			DematSequenceVeryFast = {
				255,
				0
			},
			MatSequenceVeryFast = {
				0,
				255
			},
			HadsDematSequence = {
				100,
				200,
				0
			},
	},
}

T.Interior={
	Model="models/torrent/turdis/interior.mdl",
	Portal = {
		pos = Vector(-226.7519379845, 0.86, 47.7),
		ang = Angle(-0, 0, 0),
		width = 45,
		height = 97,
		thickness = 30,
		inverted=1,
	},
	Scanners={
		{
			part="turdisconsole",
			mat="models/turdis/thirdperson",
			width=512,
			height=512,
			ang=Angle(0,0,0),
			fov=90,
		},
	},
	Fallback={
		pos=Vector(-205, -0.143, 2.178),
		ang=Angle(0,90,0),
	},
	Sounds={
		Power = {
            On = "toast/turd/sentinelon.ogg",
            Off = "toast/turd/sentineloff.ogg",
        },
		Teleport={
			demat_damaged = "toast/turd/dematint_warn.ogg",
			mat="toast/turd/matint.ogg",
			mat_short = "toast/turd/sentinel_matint_short.ogg",
			mat_damaged="toast/turd/matint_warn.ogg",
			demat_fail = "toast/turd/dematfail.ogg",
			mat_fail = "toast/turd/matfail.ogg",
			demat="toast/turd/dematint.ogg",
			fullflight="toast/turd/fullflightint.ogg",
			fullflight_damaged="toast/turd/matint_warn.ogg",
			interrupt ="toast/turd/interrupt.ogg",
			mathop 	= "toast/turd/mathop_sentinel_full.ogg",
		},
		Cloister = "toast/turd/cloister_loopint.wav",
		FlightLoop="toast/turd/nonlooplmao.ogg",
		FlightLoopDamaged = "toast/turd/nonlooplmao.ogg",
		Door={
			enabled=true,
			open="turdis/torrent/pb_open_int.ogg",
			close="turdis/torrent/pb_close_int.ogg"
		},
	},

	IdleSound={
		{
			path="turdis/torrent/int_hum.wav",
			volume=1.2
		},
	},
	Colors = {
		texturecolor = Color(181,135,209), --determines the texture colour
	},

	Light={
	      color=Color(191,71,243),
	      pos = Vector(6.6728515625, 2.85546875, 132.9599609375),
	      brightness=0.75,
		  falloff = 10,

		  warncolor=Color(159,0,0),
		  warn_pos = Vector(6.6728515625, 2.85546875, 132.9599609375),
		  warn_brightness = 0.75,
		  warn_falloff = 10,

		  nopower = true,

		  off_color = Color(0, 0, 0),
		  off_pos = Vector(6.6728515625, 2.85546875, 132.9599609375),
		  off_brightness = 0.75,
		  off_falloff = 10,

		  off_warn_color = Color(0, 0, 0),
		  off_warn_pos = Vector(6.6728515625, 2.85546875, 132.9599609375),
		  off_warn_brightness = 0.75,
		  off_warn_falloff = 10,
	},
	LightOverride = {
		basebrightness = -0.015,
		nopowerbrightness = 0.001,
		viewmodeladd = 0.02,
	},

		Travelcontrols = true,

		TransducerCell = {
		position = Vector(-140.07,-160.52,14.78)  -- defines the position the transducer cell spawns in, relative to the main interior entity
		},

		WindowTint = {
	    Vortex = Color(121,37,4):ToVector(), --color for the window tint during vortex travel
	    TintMult = 3, --multiplier for window tint brightness
	    ExtTint = Color(136,27,0):ToVector()*2,  -- exterior window tint color
	    Extambient = Color(116,59,37),  -- exterior ambient lighting color
		},
		PhaseData = {
		DefaultPhongExponent = 24,
		DefaultPhongBoost = 0.5,
		PhaseMult = 1,
		PhongBoostMult = 3,
		},
		TintProxies_Int = {
		[2] = "models/hugoextension/windows/sentinel/window_tint.vmt",
		[4] = "models/hugoextension/windows/sentinel/window_tint.vmt",
		},
		TintProxies_Ext = {
		[2] = "models/hugoextension/windows/sentinel/window_tint_ext.vmt",
		[4] = "models/hugoextension/windows/sentinel/window_tint_ext.vmt",
		},
		TintProxies_ExtDoor = {
		[1] = "models/hugoextension/windows/sentinel/window_tint_ext.vmt",
		[3] = "models/hugoextension/windows/sentinel/window_tint_ext.vmt",
		},
		TintProxies_ExtDoorInt = {
		[99] = "",  -- not applicable
		},

	Lamps={
		leftlight={
			color = Color(191,71,243),
			texture = "effects/flashlight/soft",
			fov = 150,
			distance = 165.45454406738,
			brightness = 0.1,
			pos = Vector(0.4755859375, 83.7587890625, 168.791015625),
			ang = Angle(38.784965515137, 90.197135925293, -10.392059326172),
			warn={
				color = Color(159,0,0),
				texture = "effects/flashlight/soft",
				fov = 150,
				distance = 165.45454406738,
				brightness = 0.1,
				pos = Vector(0.4755859375, 83.7587890625, 168.791015625),
				ang = Angle(38.784965515137, 90.197135925293, -10.392059326172),
			},
		},
		doorlight={
			color = Color(191,71,243),
			texture = "effects/flashlight/soft",
			fov = 150,
			distance = 165.45454406738,
			brightness = 0.1,
			pos = Vector(-88.1181640625, -0.02593994140625, 164.84765625),
			ang = Angle(44.246200561523, 176.45301818848, -77.389709472656),
			warn={
				color = Color(159,0,0),
				texture = "effects/flashlight/soft",
				fov = 150,
				distance = 165.45454406738,
				brightness = 0.1,
				pos = Vector(-88.1181640625, -0.02593994140625, 164.84765625),
				ang = Angle(44.246200561523, 176.45301818848, -77.389709472656),
			},
		},
		backlight={
			color = Color(191,71,243),
			texture = "effects/flashlight/soft",
			fov = 150,
			distance = 165.45454406738,
			brightness = 0.1,
			pos = Vector(89.4267578125, -1.541259765625, 164.16015625),
			ang = Angle(21.155464172363, 10.119071960449, 59.138549804688),
			warn={
				color = Color(159,0,0),
				texture = "effects/flashlight/soft",
				fov = 150,
				distance = 165.45454406738,
				brightness = 0.1,
				pos = Vector(89.4267578125, -1.541259765625, 164.16015625),
				ang = Angle(21.155464172363, 10.119071960449, 59.138549804688),
			},
		},
		rightlight={
			color = Color(191,71,243),
			texture = "effects/flashlight/soft",
			fov = 150,
			distance = 165.45454406738,
			brightness = 0.1,
			pos = Vector(-2.9912109375, -97.658203125, 169.4267578125),
			ang = Angle(47.650142669678, -95.864631652832, 167.65980529785),
			warn={
				color = Color(159,0,0),
				texture = "effects/flashlight/soft",
				fov = 150,
				distance = 165.45454406738,
				brightness = 0.1,
				pos = Vector(-2.9912109375, -97.658203125, 169.4267578125),
				ang = Angle(47.650142669678, -95.864631652832, 167.65980529785),
			},
		},
		underconsolelight1={
			color = Color(191,71,243),
			texture = "effects/flashlight/soft",
			fov = 150,
			distance = 165.45454406738,
			brightness = 0.5,
			pos = Vector(-1.3359375, 0.0185546875, 34.3984375),
			ang = Angle(88.339393615723, 161.34265136719, 41.942901611328),
			warn={
				color = Color(159,0,0),
				texture = "effects/flashlight/soft",
				fov = 150,
				distance = 165.45454406738,
				brightness = 0.5,
				pos = Vector(-1.3359375, 0.0185546875, 34.3984375),
				ang = Angle(88.339393615723, 161.34265136719, 41.942901611328),
			},
			off_warn = {
                    color = Color(159,0,0)
            },
			nopower = true,
		},
		underconsolelight2={
			color = Color(191,71,243),
			texture = "effects/flashlight/soft",
			fov = 150,
			distance = 165.45454406738,
			brightness = 0.5,
			pos = Vector(-1.1767578125, -0.1826171875, 3.583984375),
			ang = Angle(-85.492065429688, 119.1882019043, 133.19515991211),
			warn={
				color = Color(159,0,0),
				texture = "effects/flashlight/soft",
				fov = 150,
				distance = 165.45454406738,
				brightness = 0.5,
				pos = Vector(-1.1767578125, -0.1826171875, 3.583984375),
				ang = Angle(-85.492065429688, 119.1882019043, 133.19515991211),
			},
			off_warn = {
                    color = Color(159,0,0)
            },
			nopower = true,
		},
		hall1={
			color = Color(191,71,243),
			texture = "effects/flashlight/soft",
			fov = 150,
			distance = 165.45454406738,
			brightness = 0.2,
			pos = Vector(-175.8828125, -144.59785461426, 135.90234375),
			ang = Angle(80.33438873291, -46.296154022217, 82.019393920898),
			warn={
				color = Color(159,0,0),
				texture = "effects/flashlight/soft",
				fov = 150,
				distance = 165.45454406738,
				brightness = 0.2,
				pos = Vector(-175.8828125, -144.59785461426, 135.90234375),
				ang = Angle(80.33438873291, -46.296154022217, 82.019393920898),
			},
		},
		hall2={
			color = Color(191,71,243),
			texture = "effects/flashlight/soft",
			fov = 150,
			distance = 165.45454406738,
			brightness = 0.2,
			pos = Vector(120.58728027344, -213.474609375, 140.357421875),
			ang = Angle(81.668098449707, 63.972175598145, -144.0775604248),
			warn={
				color = Color(159,0,0),
				texture = "effects/flashlight/soft",
				fov = 150,
				distance = 165.45454406738,
				brightness = 0.2,
				pos = Vector(120.58728027344, -213.474609375, 140.357421875),
				ang = Angle(81.668098449707, 63.972175598145, -144.0775604248),
			},
		},
		hall3={
			color = Color(191,71,243),
			texture = "effects/flashlight/soft",
			fov = 150,
			distance = 165.45454406738,
			brightness = 0.2,
			pos = Vector(237.025390625, -12.8798828125, 139.076171875),
			ang = Angle(76.159629821777, 117.32875823975, -94.127685546875),
			warn={
				color = Color(159,0,0),
				texture = "effects/flashlight/soft",
				fov = 150,
				distance = 165.45454406738,
				brightness = 0.2,
				pos = Vector(237.025390625, -12.8798828125, 139.076171875),
				ang = Angle(76.159629821777, 117.32875823975, -94.127685546875),
			},
		},
		hall4={
			color = Color(191,71,243),
			texture = "effects/flashlight/soft",
			fov = 150,
			distance = 165.45454406738,
			brightness = 0.2,
			pos = Vector(114.984375, 197.78515625, 137.3935546875),
			ang = Angle(88.555183410645, 49.962001800537, 112.23733520508),
			warn={
				color = Color(159,0,0),
				texture = "effects/flashlight/soft",
				fov = 150,
				distance = 165.45454406738,
				brightness = 0.2,
				pos = Vector(114.984375, 197.78515625, 137.3935546875),
				ang = Angle(88.555183410645, 49.962001800537, 112.23733520508),
			},
		},
		hall5={
			color = Color(191,71,243),
			texture = "effects/flashlight/soft",
			fov = 150,
			distance = 165.45454406738,
			brightness = 0.2,
			pos = Vector(-180.17626953125, 151.8203125, 134.4970703125),
			ang = Angle(87.888282775879, 105.79365539551, -119.5735168457),
			warn={
				color = Color(159,0,0),
				texture = "effects/flashlight/soft",
				fov = 150,
				distance = 165.45454406738,
				brightness = 0.2,
				pos = Vector(-180.17626953125, 151.8203125, 134.4970703125),
				ang = Angle(87.888282775879, 105.79365539551, -119.5735168457),
			},
		},
		rotor={
			color = Color(191,71,243),
			texture = "effects/flashlight/soft",
			fov = 120,
			distance = 165.45454406738,
			brightness = 1,
			pos = Vector(-3.5302734375, 0.18408203125, 77.8251953125),
			ang = Angle(83.90990447998, -8.7635831832886, -73.756744384766),
			warn={
				color = Color(159,0,0),
				texture = "effects/flashlight/soft",
				fov = 120,
				distance = 165.45454406738,
				brightness = 1,
				pos = Vector(-3.5302734375, 0.18408203125, 77.8251953125),
				ang = Angle(83.90990447998, -8.7635831832886, -73.756744384766),
			},
			off_warn = {
                    color = Color(159,0,0)
            },
			nopower = true,
		},
	},
	Parts={
		door={
			model="models/torrent/turdis/pbdoor_int.mdl",
			posoffset=Vector(29,-0.84,-47.7),
			angoffset=Angle(0,180,0),
		},
		turdisdoorway2=true,
		turdisdecor=true,
		turdisroundels=true,
		turdisceilingroundels=true,
		turdistubes=true,
		turdislights=true,
		turdisbarlights=true,
		turdisfan=true,
		turdisfan2={ang=Angle(0,180,0)},
		turdisrotor=true,
		turdisconsole=true,
		turdisdestselect=true,
		turdisthirdperson=true,
		turdisconsoledetail=true,
		turdisthrottle=true,
		turdiscorridors=true,
		turdisroomdoor1=true,
		turdisroomdoor2={ang=Angle(0,-90,0)},
		turdisroomdoor3={ang=Angle(0,180,0)},
		turdiscorridordoor1={pos = Vector(0,0,1)},
		turdiscorridordoor2={ang=Angle(0,120,0), pos = Vector(0,0,1)},
		turdisdial1=true,
		turdisdial2={ang=Angle(0,0,0), pos = Vector(18.35,-10.5,0)},
		turdisboggleswitch1=true,
		turdisboggleswitch2={pos = Vector(0,-27.85,0)},
		turdisslider1=true,
		turdisslider2={pos = Vector(0.7,1.1,-0.6)},
		turdiskeypad=true,
		turdisminiswitch1=true,
		turdisminiswitch2={pos = Vector(2.6,1.52,0)},
		turdisminiswitch3={pos = Vector(0.7,-1.225,-0.825)},
		turdisminiswitch4={pos = Vector(3.3,0.295,-0.825)},
		turdisminiswitch5={pos = Vector(1.4,-2.45,-1.63)},
		turdisminiswitch6={pos = Vector(4,-0.93,-1.63)},
		turdisminiswitch7={pos = Vector(2.1,-3.675,-2.455)},
		turdisminiswitch8={pos = Vector(4.75,-2.175,-2.455)},
		turdisminiswitch9={pos = Vector(2.825,-4.925,-3.26)},
		turdisminiswitch10={pos = Vector(5.45,-3.4,-3.26)},
		turdisminiswitch11={pos = Vector(3.55,-6.15,-4.08)},
		turdisminiswitch12={pos = Vector(6.15,-4.6,-4.08)},
		turdisminiswitch13={pos = Vector(4.25,-7.37,-4.9)},
		turdisminiswitch14={pos = Vector(6.85,-5.825,-4.9)},
		turdishandbrake=true,
		turdisenginerelease=true,
		yippee={pos = Vector(0,-5,0)},
		turdisspinny1=true,
		turdisspinny2=true,
		turdistoyotalever1={pos = Vector(-2,-2,0)},
		turdistoyotalever2={pos = Vector(18.5,-13.5,0)},
		turdisdoorway1=false,
		turdisrailings=true,
		-- hugoextension stuff
		tardisfireexting	= {pos = Vector(-159.98,137.91,-5), ang = Angle(0,-126.62,0), },
		chronoplasmicshell	= {matrixScale = Vector(20,20,20),},


	},
	Controls={
		turdisdestselect="destination",
		turdisthirdperson="thirdperson",
		turdisthrottle="teleport_double",
		turdisdial1="door",
		turdisdial2="power",
		turdisboggleswitch1="toggle_scanners",
		turdisboggleswitch2="doorlock",
		turdisslider2="flight",
		turdiskeypad="coordinates",
		turdisminiswitch1="repair",
		turdistoyotalever1="physlock",
		turdisminiswitch7="fastreturn",
		turdisminiswitch8="cloak",
		turdisenginerelease="vortex_flight",
		turdisminiswitch13="shields",
		turdishandbrake="handbrake",
		turdistoyotalever2="engine_release",
		turdisspinny1="spin_switch",
		turdisminiswitch9="float",
		turdisminiswitch14="hads",
		-- hugoextension stuff
		turdisspinny2		= "windowopacity",
		turdisminiswitch3		= "vortexswap",
		turdisslider1			= "maptravel",
		turdisminiswitch12		= "returntobar",
		turdisminiswitch11		= "randomjazzmap",
		turdisminiswitch10		= "manualmapdestination",
		turdisminiswitch4		= "mathop",
		turdisminiswitch6		= "timeswap",
		turdisminiswitch5		= "timetravel_increment",
		turdisminiswitch2		= "hadssensitivity",
		-- not enough controls on the console for these V
		-- toyota_levers2		= "hadssensitivity",
		-- toyota_cranks		= "mathop_shortcut",
		-- turdisminiswitch5	= "redecorate",
		-- turdisminiswitch2	= "toggle_console",
	},
	PartTips={
		turdisdestselect={pos = Vector(23.493, -0.29, 45.506),down = true,text="Manual Destination Select"},
		turdisthirdperson={pos = Vector(-20.935, -0.24, 49.526),down = true,text="Manual Flight"},
		turdisthrottle={pos = Vector(-15.554, -23.46, 46.097),down = true,text="Time-Space Throttle"},
		turdisdial1={pos = Vector(-25.009, -18.815, 45.218),left = true,text="Door Dial"},
		turdisdial2={pos = Vector(-6.634, -29.384, 45.14),right = true,text="Power Dial"},
		turdisboggleswitch1={pos = Vector(-33.626, 14.105, 42.22),left = true,text="Scanner"},
		turdisboggleswitch2={pos = Vector(-33.749, -13.677, 42.243),right = true,text="Door Lock"},
		turdisslider2={pos = Vector(16.035, 28.831, 41.315),left = true,text="Flight"},
		turdiskeypad={pos = Vector(-9.109, 41.983, 39.869),down = true,text="Coordinates"},
		turdisminiswitch1={pos = Vector(10.165, -23.586, 46.569),left = true,text="Self-Repair"},
		turdistoyotalever1={pos = Vector(4.972, 34.298, 43.186),right = true,text="Physlock"},
		turdisminiswitch7={pos = Vector(12.255, -27.298, 44.098),left = true,text="Fast Return"},
		turdisminiswitch8={pos = Vector(14.86, -25.851, 44),right = true,text="Exterior Cloak"},
		turdisenginerelease={pos = Vector(-18.322, 25.718, 45.389),right = true,text="Vortex Flight"},
		turdisminiswitch13={pos = Vector(14.418, -31.039, 41.701),left = true,text="Exterior Shields"},
		turdishandbrake={pos = Vector(-15.661, 27.164, 45.237),left = true,text="Time Rotor Handbrake"},
		turdistoyotalever2={pos = Vector(25.858, 22.527, 43.148),right = true,text="Engine Release"},
		turdisspinny1={pos = Vector(-26.276, 21.931, 44.128),right = true,text="Spin Direction"},
		turdisminiswitch9={pos = Vector(12.99,-28.56,43.4),left = true,text="Anti-Gravs"},
		turdisminiswitch14={pos = Vector(17.028, -29.51, 41.64),right = true,text="H.A.D.S."},
		yippee={pos = Vector(-0.909, -225.491, 205.396),left = true,text="Yippee!"},
		-- hugoextension stuff
		tardisfireexting			= {pos = Vector(-159.98,137.91,-5 + 25),		text = "Fire Extinguisher", right = false, down = false},
		turdisminiswitch3			= {pos = Vector(10.9,-24.92,45.85),				right = true,	down = false, },
		turdisspinny2				= {pos = Vector(-7.98, 32.665, 44.04),			right = true,     down = false, },
		turdisslider1				= {pos = Vector(12.791, 29.389, 42.709),		right = true,     down = false, },
		turdisminiswitch12			= {pos = Vector(16.29,-28.21,42.55),			right = true,     down = false, },
		turdisminiswitch11			= {pos = Vector(13.69,-29.77,42.62),			right = true,     down = false, },
		turdisminiswitch10			= {pos = Vector(15.58,-27.02,43.37),			right = true,     down = false, },
		turdisminiswitch4			= {pos = Vector(13.48,-23.35,45.87),			right = true,     down = false, },
		turdisminiswitch6			= {pos = Vector(14.18,-24.6,45.03),				right = true,     down = false, },
		turdisminiswitch5			= {pos = Vector(11.57,-26.09,45.06),			right = false,     down = false, },
		turdisminiswitch2			= {pos = Vector(12.78, -22.121, 46.609),		right = true,	},
		-- not enough controls on the console for these V
		-- toyota_lever5				= {pos = Vector(-39.239, -12.951, 135.572),		text = "Box illumination", right = true,     down = false, },
		-- toyota_cranks				= {pos = Vector(76.89, 148.56, 130.77),			text = "MatHop Quick Access", right = true,     down = false, },
		-- toyota_levers2				= {pos = Vector(29.86, -3.24, 137.54),			text = "Disable Console", right = true,     down = false, },
		-- turdisminiswitch5			= {pos = Vector(11.57,-26.09,45.06),			right = true,text="Change Desktop"},

		},
	Sequences="turdis_sequences",
	Tips={
		style="sentinel",
		view_range_max = 70,
		view_range_min = 50,
	},
}


T.Interior.TextureSets = {
	["normal"] = {
		prefix = "models/turdis/",

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

		{ "turdisroundels", 1, "roundel_colored_flight", },
		{ "turdisbarlights", 1, "barlight_flight", },
		{ "turdisrotor", 4, "roundel_colored_flight", },
		{ "turdisconsole", 5, "roundel_colored_flight", },
		{ "turdisconsoledetail", 4, "roundel_colored_flight", },

	},

	["warning_flight"] = {
		prefix = "models/turdis/warningflight/",

		{ "turdisroundels", 1, "roundellit_warning_flight", },
		{ "turdisbarlights", 1, "barlight_warning_flight", },
		{ "turdisrotor", 4, "roundellit_warning_flight", },
		{ "turdisconsole", 5, "roundellit_warning_flight", },
		{ "turdisconsoledetail", 4, "roundellit_warning_flight", },

	},
	-- for hugoextension
	["lowpower"] = {
		prefix = "models/turdis/lowpower/",

		{ "turdisroundels", 1, "roundellit", },
		{ "turdislights", 2, "light_off", },
		{ "turdisbarlights", 1, "barlight", },
		{ "turdisrotor", 4, "roundellit_off", },
		{ "turdisconsole", 5, "roundellit", },
		{ "turdisconsole", 2, "telepathic", },
		{ "turdisconsoledetail", 4, "roundellit", },

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
	door_bodygroup_sync_ext = {
        exthooks = { ["PartBodygroupChanged"] = true, },
        inthooks = { ["PartBodygroupChanged"] = true, },
        func = function(ext,int,part,bodygroup,value)
            if not IsValid(int) then return end
            if not IsValid(part) or part.ID ~= "door" then return end

            local door_int = int:GetPart("door")
            local door_ext = ext:GetPart("door")

            if not IsValid(door_int) or not IsValid(door_ext) then return end

            if part.ExteriorPart and door_int:GetBodygroup(bodygroup) ~= value then
                door_int:SetBodygroup(bodygroup, value)
            end

            if part.InteriorPart and door_ext:GetBodygroup(bodygroup) ~= value then
                door_ext:SetBodygroup(bodygroup, value)
            end

        end,
    },
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
			local lowpower = ext:GetData("lowpowermode", false)

			if not IsValid(int) then return end

			if not power and (not lowpower) then
				int:ApplyTextureSet("poweroff")
				ext:ApplyTextureSet("poweroff")
			elseif not power and lowpower then
				int:ApplyTextureSet("lowpower")
				ext:ApplyTextureSet("lowpower")
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
-- below here is the custom setting stuff

T.CustomSettings = {

	interior_lighting = {
		text = "Lighting",
		value_type = "list",
		value = "lightdefault",
		options = {
			["lightdefault"] = "Grape (Default)",
			["lightblue"] = "Blueberry",
			["lightgreen"] = "Pear",
			["lightyellow"] = "Banana",
			["lightorange"] = "Orange",
			["lightcyan"] = "Water",
			["lightpink"] = "Dragon Fruit",
			["lightwhite"] = "Coconut",
			["lightmint"] = "Mint",
			["lightbrown"] = "Peanut",
			["lightblack"] = "Blackberry",
			["lightjazz"] = "Jazz",
		}
	},

}

T.Templates = {


    --Custom lighting
    torrentturdis_lighting_blue = {
		override = true,
        condition = function(id, ply, ent)
            local setting_val = TARDIS:GetCustomSetting(id, "interior_lighting", ply)
            return (setting_val == "lightblue")
        end,
	},

	torrentturdis_lighting_green = {
		override = true,
        condition = function(id, ply, ent)
            local setting_val = TARDIS:GetCustomSetting(id, "interior_lighting", ply)
            return (setting_val == "lightgreen")
        end,
	},

	torrentturdis_lighting_yellow = {
		override = true,
        condition = function(id, ply, ent)
            local setting_val = TARDIS:GetCustomSetting(id, "interior_lighting", ply)
            return (setting_val == "lightyellow")
        end,
	},
	
	torrentturdis_lighting_orange = {
		override = true,
        condition = function(id, ply, ent)
            local setting_val = TARDIS:GetCustomSetting(id, "interior_lighting", ply)
            return (setting_val == "lightorange")
        end,
	},
	
	torrentturdis_lighting_cyan = {
		override = true,
        condition = function(id, ply, ent)
            local setting_val = TARDIS:GetCustomSetting(id, "interior_lighting", ply)
            return (setting_val == "lightcyan")
        end,
	},
	
	torrentturdis_lighting_pink = {
		override = true,
        condition = function(id, ply, ent)
            local setting_val = TARDIS:GetCustomSetting(id, "interior_lighting", ply)
            return (setting_val == "lightpink")
        end,
	},
	
	torrentturdis_lighting_white = {
		override = true,
        condition = function(id, ply, ent)
            local setting_val = TARDIS:GetCustomSetting(id, "interior_lighting", ply)
            return (setting_val == "lightwhite")
        end,
	},
	
	torrentturdis_lighting_mint = {
		override = true,
        condition = function(id, ply, ent)
            local setting_val = TARDIS:GetCustomSetting(id, "interior_lighting", ply)
            return (setting_val == "lightmint")
        end,
	},
	
	torrentturdis_lighting_brown = {
		override = true,
        condition = function(id, ply, ent)
            local setting_val = TARDIS:GetCustomSetting(id, "interior_lighting", ply)
            return (setting_val == "lightbrown")
        end,
	},
	
	torrentturdis_lighting_black = {
		override = true,
        condition = function(id, ply, ent)
            local setting_val = TARDIS:GetCustomSetting(id, "interior_lighting", ply)
            return (setting_val == "lightblack")
        end,
	},

	torrentturdis_lighting_jazz = {
		override = true,
		condition = function(id, ply, ent)
			local setting_val = TARDIS:GetCustomSetting(id, "interior_lighting", ply)
			return (setting_val == "lightjazz")
		end,
	},
}

TARDIS:AddInterior(T)