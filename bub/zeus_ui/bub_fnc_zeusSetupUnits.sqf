if (isDedicated) exitWith {};


_units = 
[
	[
		"Rebel Infantry",
		"inf", "opf_f", east,
		[
			[
				"Assault Squad 5x",
				["fal","medic","akm","ak74","lat"]
			],
		
			[
				"Support Squad 5x",
				["akm","pkm","rpk","sniper","ak74"]
			],
		
			[
				"Crappy Squad 5x",
				["shotgun","mosin","akm","fal","mosin"]
			],
			
			[
				"Biggo Squaddo 10x",
				["skorpion","pkm","rpk","akm","ak74","fal","mosin","ak74","fal","akm"]
			],
			
			[
				"Sniper 1x",
				["sniper"]
			],
			
			[
				"Sniper Team 2x",
				["sniper", "fal"]
			],
			
			[
				"MG Team 3x",
				["pkm", "rpk", "fal"]
			]
		]
	], 
	
	[
		"Rebel Vehicles", 
		"veh", "opf_f", east,
		[
			[
				"Offroad HMG Camo",
				"O_G_Offroad_01_armed_F",
				["skorpion","fal","mosin"]
			],
		
			[
				"Offroad HMG Black",
				"LOP_BH_Offroad_M2",
				["skorpion","fal","mosin"]
			],
			
			[
				"BTR-60 (Loaded)",
				"LOP_AFR_OPF_BTR60",
				["skorpion","fal","mosin","shotgun","mosin","akm","fal","mosin"]
			],
			
			[
				"BRDM-2",
				"rhsgref_BRDM2_ins",
				["crew-smg","crew","crew"]
			],
			
			[
				"BMP-1",
				"rhsgref_ins_BMP1",
				["skorpion","fal","mosin"]
			],
			
			[
				"Ural-4320 (Loaded)",
				"rhsgref_ins_g_ural_open",
				["skorpion","fal","mosin","shotgun","mosin","akm","fal","mosin"]
			]
		]
	],
	
	[
		'Cheeki Breeki Infantry',
		"inf", "blu_f", west,
		[
			[
				"Boom Squad",
				["ftl", "r", "r", "gl", "mat", "amat"]
			],
		
			[
				"Dakka Squad",
				["ftl", "r", "r", "lat", "ar", "aar"]
			]
		]
	]	
];

bub_zeus_unitsStructure = _units;