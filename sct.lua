
SCT_CONFIG = {
	["profileKeys"] = {
		["Xuyxee - Hellscream"] = "Xuyxee - Hellscream",
		["Unlok - Auchindoun"] = "Unlok - Auchindoun",
		["Ciid - Hellscream"] = "Ciid - Hellscream",
		["Chukk - Hellscream"] = "Chukk - Hellscream",
		["Barimuri - Hellscream"] = "Barimuri - Hellscream",
		["Tolate - Hellscream"] = "Tolate - Hellscream",
		["Zik - Zuluhed"] = "Zik - Zuluhed",
		["Knasbank - Auchindoun"] = "Knasbank - Auchindoun",
		["Pulari - Auchindoun"] = "Pulari - Auchindoun",
		["Aset - Auchindoun"] = "Aset - Auchindoun",
		["Relok - Auchindoun"] = "Relok - Auchindoun",
		["Knas - Auchindoun"] = "Knas - Auchindoun",
		["Scid - Auchindoun"] = "Scid - Auchindoun",
	},
	["profiles"] = {
		["Xuyxee - Hellscream"] = {
		},
		["Unlok - Auchindoun"] = {
		},
		["Ciid - Hellscream"] = {
		},
		["Chukk - Hellscream"] = {
		},
		["Barimuri - Hellscream"] = {
		},
		["Tolate - Hellscream"] = {
		},
		["Zik - Zuluhed"] = {
		},
		["Knasbank - Auchindoun"] = {
		},
		["Pulari - Auchindoun"] = {
		},
		["Aset - Auchindoun"] = {
		},
		["Relok - Auchindoun"] = {
		},
		["Knas - Auchindoun"] = {
		},
		["Scid - Auchindoun"] = {
		},
	},
}
SCT_EVENT_CONFIG = {
	["profileKeys"] = {
		["Xuyxee - Hellscream"] = "Global",
		["Unlok - Auchindoun"] = "Global",
		["Ciid - Hellscream"] = "Global",
		["Chukk - Hellscream"] = "Global",
		["Barimuri - Hellscream"] = "Global",
		["Tolate - Hellscream"] = "Global",
		["Zik - Zuluhed"] = "Global",
		["Knasbank - Auchindoun"] = "Global",
		["Pulari - Auchindoun"] = "Global",
		["Aset - Auchindoun"] = "Global",
		["Relok - Auchindoun"] = "Global",
		["Knas - Auchindoun"] = "Global",
		["Scid - Auchindoun"] = "Global",
	},
	["global"] = {
		["events"] = {
			{
				["type"] = "BUFF",
				["r"] = 0.5,
				["class"] = {
					"Warrior", -- [1]
					"Shaman", -- [2]
				},
				["g"] = 0,
				["name"] = "Flurry",
				["override"] = true,
				["target"] = "SELF",
				["b"] = 0,
				["search"] = "Flurry",
				["display"] = "Flurry!",
			}, -- [1]
			{
				["type"] = "FADE",
				["r"] = 0,
				["class"] = {
					"Shaman", -- [1]
				},
				["g"] = 0,
				["name"] = "Lightning Shield",
				["override"] = true,
				["target"] = "SELF",
				["b"] = 1,
				["search"] = "Lightning Shield",
				["display"] = "Lightning Shield!",
			}, -- [2]
			{
				["type"] = "BUFF",
				["r"] = 0,
				["class"] = {
					"Warlock", -- [1]
				},
				["g"] = 0.5,
				["name"] = "Nightfall",
				["override"] = true,
				["display"] = "Nightfall!",
				["b"] = 0.5,
				["search"] = "Shadow Trance",
				["target"] = "SELF",
			}, -- [3]
			{
				["type"] = "MISS",
				["source"] = "SELF",
				["r"] = 1,
				["class"] = {
					"Warrior", -- [1]
				},
				["g"] = 1,
				["iscrit"] = 1,
				["name"] = "Overpower",
				["display"] = "Overpower!",
				["target"] = "TARGET",
				["override"] = false,
				["misstype"] = "DODGE",
				["b"] = 0,
			}, -- [4]
			{
				["type"] = "BUFF",
				["r"] = 0.5,
				["class"] = {
					"Warrior", -- [1]
				},
				["g"] = 1,
				["iscrit"] = 1,
				["name"] = "Enraged",
				["b"] = 0.5,
				["display"] = "Enraged!",
				["search"] = "Enrage",
				["target"] = "SELF",
				["override"] = true,
			}, -- [5]
			{
				["type"] = "BUFF",
				["r"] = 0.5,
				["class"] = {
					"Warrior", -- [1]
					"Rogue", -- [2]
					"Paladin", -- [3]
					"Shaman", -- [4]
					"Hunter", -- [5]
				},
				["g"] = 0.5,
				["iscrit"] = 1,
				["name"] = "Crusader",
				["b"] = 1,
				["display"] = "Crusader!",
				["search"] = "Holy Strength",
				["target"] = "SELF",
				["override"] = true,
			}, -- [6]
			{
				["type"] = "BUFF",
				["r"] = 0.5,
				["class"] = {
					"Priest", -- [1]
				},
				["g"] = 0.5,
				["override"] = true,
				["search"] = "Spirit Tap",
				["iscrit"] = 1,
				["display"] = "Spirit Tap!",
				["b"] = 0.5859375,
				["target"] = "SELF",
				["name"] = "Spirit Tap",
			}, -- [7]
			{
				["type"] = "SUMMON",
				["source"] = "SELF",
				["r"] = 0.80078125,
				["class"] = {
					"Shaman", -- [1]
				},
				["g"] = 0.80078125,
				["override"] = true,
				["name"] = "Totems",
				["target"] = "ANY",
				["display"] = "[*1]",
				["search"] = "Totem",
				["icon"] = 1,
				["b"] = 0,
			}, -- [8]
			{
				["type"] = "BUFF",
				["source"] = "SELF",
				["r"] = 1,
				["class"] = {
					"Rogue", -- [1]
					"Warrior", -- [2]
				},
				["g"] = 1,
				["iscrit"] = 1,
				["name"] = "Mace Stun",
				["b"] = 0,
				["display"] = "Mace Stun!",
				["search"] = "Mace Stun",
				["target"] = "TARGET",
				["override"] = true,
			}, -- [9]
			{
				["type"] = "BUFF",
				["source"] = "SELF",
				["r"] = 0,
				["class"] = {
					"Warrior", -- [1]
				},
				["g"] = 0.5,
				["iscrit"] = 1,
				["name"] = "Rooted",
				["b"] = 0,
				["display"] = "Rooted!",
				["search"] = "Improved Hamstring",
				["target"] = "TARGET",
				["override"] = true,
			}, -- [10]
			{
				["type"] = "BUFF",
				["r"] = 0,
				["class"] = {
					"Warrior", -- [1]
				},
				["g"] = 1,
				["iscrit"] = 1,
				["b"] = 0,
				["search"] = "Sunder Armor",
				["target"] = "TARGET",
				["display"] = "Full Sunder!",
				["buffcount"] = 5,
				["name"] = "Full Sunder",
				["override"] = true,
			}, -- [11]
			{
				["type"] = "BUFF",
				["source"] = "SELF",
				["r"] = 1,
				["class"] = {
					"Rogue", -- [1]
				},
				["g"] = 0,
				["iscrit"] = 1,
				["b"] = 1,
				["search"] = "Deadly",
				["display"] = "Envenom!",
				["target"] = "TARGET",
				["buffcount"] = 5,
				["name"] = "Envenom",
				["override"] = true,
			}, -- [12]
			{
				["type"] = "BUFF",
				["source"] = "SELF",
				["r"] = 0.29296875,
				["class"] = {
					"Mage", -- [1]
				},
				["g"] = 0.5859375,
				["iscrit"] = 1,
				["name"] = "Frostbite",
				["display"] = "Frostbite!",
				["target"] = "TARGET",
				["search"] = "Frostbite",
				["icon"] = 1,
				["b"] = 0.87890625,
			}, -- [13]
			{
				["type"] = "MISS",
				["source"] = "SELF",
				["r"] = 0.5,
				["class"] = {
					"Warrior", -- [1]
				},
				["g"] = 0,
				["name"] = "Deep Wound Spam",
				["b"] = 0,
				["display"] = "",
				["search"] = "Deep Wound",
				["target"] = "TARGET",
				["override"] = true,
			}, -- [14]
			{
				["type"] = "BUFF",
				["source"] = "SELF",
				["r"] = 0.5,
				["class"] = {
					"Priest", -- [1]
				},
				["g"] = 0.5,
				["override"] = true,
				["search"] = "Blackout",
				["iscrit"] = 1,
				["display"] = "Blackout!",
				["b"] = 0.5859375,
				["target"] = "TARGET",
				["name"] = "Blackout",
			}, -- [15]
			{
				["type"] = "BUFF",
				["source"] = "SELF",
				["r"] = 0.5,
				["class"] = {
					"Mage", -- [1]
				},
				["g"] = 0.25,
				["name"] = "Impact",
				["iscrit"] = 1,
				["display"] = "Impact!",
				["b"] = 0.25,
				["search"] = "Impact",
				["target"] = "TARGET",
			}, -- [16]
			{
				["type"] = "MISS",
				["source"] = "SELF",
				["r"] = 0.99609375,
				["class"] = {
					"Rogue", -- [1]
				},
				["g"] = 0.59765625,
				["iscrit"] = 1,
				["name"] = "Feint",
				["b"] = 0.19921875,
				["display"] = "Feint Failed!",
				["search"] = "Feint",
				["target"] = "TARGET",
				["override"] = true,
			}, -- [17]
			{
				["type"] = "FADE",
				["r"] = 0.80078125,
				["class"] = {
					"Mage", -- [1]
				},
				["g"] = 0.80078125,
				["name"] = "Sheep",
				["iscrit"] = 1,
				["display"] = "Sheep Broke!",
				["b"] = 1,
				["search"] = "Polymorph",
				["target"] = "FOCUS",
			}, -- [18]
			{
				["type"] = "FADE",
				["r"] = 0.80078125,
				["class"] = {
					"Mage", -- [1]
				},
				["g"] = 0.80078125,
				["name"] = "Slow",
				["iscrit"] = 1,
				["display"] = "Slow Removed!",
				["b"] = 0,
				["search"] = "Slow",
				["target"] = "ENEMY",
			}, -- [19]
		},
		["firstload"] = true,
	},
}
