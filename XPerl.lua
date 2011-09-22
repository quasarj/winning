
XPerlConfig = nil
XPerlConfig_Global = nil
XPerlConfigNew = {
	["ConfigVersion"] = "2.3.7e",
	["global"] = {
		["highlight"] = {
			["enable"] = 1,
			["AGGRO"] = 1,
		},
		["highlightSelection"] = 1,
		["bar"] = {
			["fat"] = 1,
			["background"] = 1,
			["fadeTime"] = 0.5,
			["texture"] = {
				"X-Perl 2", -- [1]
				"Interface\\Addons\\XPerl\\Images\\XPerl_StatusBar3", -- [2]
			},
		},
		["rangeFinder"] = {
			["StatsFrame"] = {
				["FadeAmount"] = 0.5,
				["HealthLowPoint"] = 0.85,
				["spell"] = "Remove Lesser Curse",
			},
			["Main"] = {
				["enabled"] = true,
				["spell"] = "Remove Lesser Curse",
				["FadeAmount"] = 0.5,
				["HealthLowPoint"] = 0.85,
				["PlusHealth"] = true,
			},
			["NameFrame"] = {
				["FadeAmount"] = 0.5,
				["HealthLowPoint"] = 0.85,
				["spell"] = "Remove Lesser Curse",
			},
		},
		["showAFK"] = 1,
		["ShowTutorials"] = true,
		["buffHelper"] = {
			["enable"] = 1,
			["sort"] = "group",
			["visible"] = 1,
		},
		["focus"] = {
			["debuffs"] = {
				["enable"] = 1,
				["curable"] = 0,
				["size"] = 29,
			},
			["portrait"] = 1,
			["combo"] = {
				["enable"] = 1,
				["blizzard"] = 1,
				["pos"] = "top",
			},
			["enable"] = 1,
			["mana"] = 1,
			["castBar"] = {
				["enable"] = 1,
			},
			["hitIndicator"] = 1,
			["level"] = 1,
			["sound"] = 1,
			["size"] = {
				["width"] = 0,
			},
			["portrait3D"] = 1,
			["pvpIcon"] = 1,
			["mobType"] = 1,
			["highlightDebuffs"] = {
				["who"] = 2,
			},
			["raidIconAlternate"] = 1,
			["healerMode"] = {
				["type"] = 1,
			},
			["elite"] = 1,
			["scale"] = 0.8,
			["values"] = 1,
			["buffs"] = {
				["castable"] = 0,
				["enable"] = 1,
				["rows"] = 3,
				["maxrows"] = 2,
				["size"] = 22,
			},
			["percent"] = 1,
			["classIcon"] = 1,
		},
		["target"] = {
			["debuffs"] = {
				["enable"] = 1,
				["curable"] = 0,
				["size"] = 29,
			},
			["portrait"] = 1,
			["combo"] = {
				["enable"] = 1,
				["blizzard"] = 1,
				["pos"] = "top",
			},
			["enable"] = 1,
			["mana"] = 1,
			["castBar"] = {
				["enable"] = 1,
			},
			["hitIndicator"] = 1,
			["level"] = 1,
			["sound"] = 1,
			["size"] = {
				["width"] = 0,
			},
			["portrait3D"] = 1,
			["pvpIcon"] = 1,
			["mobType"] = 1,
			["highlightDebuffs"] = {
				["who"] = 2,
			},
			["raidIconAlternate"] = 1,
			["range30yard"] = 1,
			["healerMode"] = {
				["type"] = 1,
			},
			["elite"] = 1,
			["scale"] = 0.8,
			["values"] = 1,
			["buffs"] = {
				["castable"] = 0,
				["enable"] = 1,
				["rows"] = 3,
				["maxrows"] = 2,
				["size"] = 22,
			},
			["percent"] = 1,
			["classIcon"] = 1,
		},
		["raid"] = {
			["debuffs"] = {
				["enable"] = 1,
				["size"] = 20,
			},
			["enable"] = 1,
			["class"] = {
				{
					["enable"] = 1,
					["name"] = "WARRIOR",
				}, -- [1]
				{
					["enable"] = 1,
					["name"] = "ROGUE",
				}, -- [2]
				{
					["enable"] = 1,
					["name"] = "HUNTER",
				}, -- [3]
				{
					["enable"] = 1,
					["name"] = "MAGE",
				}, -- [4]
				{
					["enable"] = 1,
					["name"] = "WARLOCK",
				}, -- [5]
				{
					["enable"] = 1,
					["name"] = "PRIEST",
				}, -- [6]
				{
					["enable"] = 1,
					["name"] = "DRUID",
				}, -- [7]
				{
					["enable"] = 1,
					["name"] = "SHAMAN",
				}, -- [8]
				{
					["enable"] = 1,
					["name"] = "PALADIN",
				}, -- [9]
			},
			["group"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
				1, -- [5]
				1, -- [6]
				1, -- [7]
				1, -- [8]
				1, -- [9]
			},
			["titles"] = 1,
			["scale"] = 0.8,
			["healerMode"] = {
				["type"] = 1,
			},
			["spacing"] = 0,
			["anchor"] = "TOP",
			["buffs"] = {
				["castable"] = 0,
				["maxrows"] = 2,
				["right"] = 1,
				["size"] = 20,
				["inside"] = 1,
			},
			["percent"] = 1,
			["size"] = {
				["width"] = 0,
			},
		},
		["raidpet"] = {
			["enable"] = 1,
			["hunter"] = 1,
			["warlock"] = 1,
		},
		["colour"] = {
			["classic"] = 1,
			["guildList"] = 1,
			["border"] = {
				["a"] = 1,
				["b"] = 0.5,
				["g"] = 0.5,
				["r"] = 0.5,
			},
			["reaction"] = {
				["tapped"] = {
					["b"] = 0.5,
					["g"] = 0.5,
					["r"] = 0.5,
				},
				["none"] = {
					["b"] = 1,
					["g"] = 0.5,
					["r"] = 0.5,
				},
				["neutral"] = {
					["b"] = 0,
					["g"] = 1,
					["r"] = 1,
				},
				["unfriendly"] = {
					["b"] = 0,
					["g"] = 0.5,
					["r"] = 1,
				},
				["friend"] = {
					["b"] = 0,
					["g"] = 1,
					["r"] = 0,
				},
				["enemy"] = {
					["b"] = 0,
					["g"] = 0,
					["r"] = 1,
				},
			},
			["classbarBright"] = 1,
			["frame"] = {
				["a"] = 1,
				["b"] = 0,
				["g"] = 0,
				["r"] = 0,
			},
			["gradient"] = {
				["enable"] = 1,
				["s"] = {
					["a"] = 1,
					["b"] = 0.25,
					["g"] = 0.25,
					["r"] = 0.25,
				},
				["e"] = {
					["a"] = 0,
					["b"] = 0.1,
					["g"] = 0.1,
					["r"] = 0.1,
				},
			},
			["class"] = 1,
			["bar"] = {
				["rage"] = {
					["b"] = 0,
					["g"] = 0,
					["r"] = 1,
				},
				["healthFull"] = {
					["b"] = 0,
					["g"] = 1,
					["r"] = 0,
				},
				["focus"] = {
					["b"] = 0.25,
					["g"] = 0.5,
					["r"] = 1,
				},
				["mana"] = {
					["b"] = 1,
					["g"] = 0,
					["r"] = 0,
				},
				["healthEmpty"] = {
					["b"] = 0,
					["g"] = 0,
					["r"] = 1,
				},
				["energy"] = {
					["b"] = 0,
					["g"] = 1,
					["r"] = 1,
				},
			},
		},
		["minimap"] = {
			["enable"] = 1,
			["radius"] = 78,
			["pos"] = 186,
		},
		["targettargettarget"] = {
			["debuffs"] = {
				["enable"] = 1,
				["curable"] = 0,
				["size"] = 29,
			},
			["values"] = 1,
			["pvpIcon"] = 1,
			["scale"] = 0.7,
			["mana"] = 1,
			["healerMode"] = {
				["type"] = 1,
			},
			["buffs"] = {
				["castable"] = 0,
				["enable"] = 1,
				["rows"] = 3,
				["maxrows"] = 2,
				["size"] = 22,
			},
			["percent"] = 1,
			["size"] = {
				["width"] = 0,
			},
		},
		["tooltip"] = {
			["enable"] = 1,
			["enableBuffs"] = 1,
			["modifier"] = "all",
		},
		["pet"] = {
			["debuffs"] = {
				["enable"] = 1,
				["size"] = 20,
			},
			["portrait"] = 1,
			["scale"] = 0.7,
			["portrait3D"] = 1,
			["healerMode"] = {
				["type"] = 1,
			},
			["happiness"] = {
				["enabled"] = 1,
				["flashWhenSad"] = 1,
				["onlyWhenSad"] = 1,
			},
			["buffs"] = {
				["enable"] = 1,
				["maxrows"] = 2,
				["size"] = 18,
			},
			["name"] = 1,
			["hitIndicator"] = 1,
			["values"] = 1,
			["level"] = 1,
			["castBar"] = {
				["enable"] = 1,
			},
			["size"] = {
				["enable"] = 1,
				["size"] = 20,
				["width"] = 0,
			},
		},
		["player"] = {
			["partyNumber"] = 1,
			["debuffs"] = {
				["enable"] = 1,
				["size"] = 20,
			},
			["values"] = 1,
			["healerMode"] = {
				["type"] = 1,
			},
			["castBar"] = {
				["enable"] = 1,
				["castTime"] = 1,
			},
			["fullScreen"] = {
				["enable"] = 1,
				["highHP"] = 40,
				["lowHP"] = 30,
			},
			["hitIndicator"] = 1,
			["level"] = 1,
			["size"] = {
				["width"] = 0,
			},
			["portrait3D"] = 1,
			["pvpIcon"] = 1,
			["energyTicker"] = 1,
			["scale"] = 0.9,
			["portrait"] = 1,
			["buffs"] = {
				["maxrows"] = 2,
				["count"] = 40,
				["flash"] = 1,
				["enable"] = 1,
				["hideBlizzard"] = 1,
				["cooldown"] = 1,
				["size"] = 22,
			},
			["percent"] = 1,
			["classIcon"] = 1,
		},
		["focustarget"] = {
			["debuffs"] = {
				["enable"] = 1,
				["curable"] = 0,
				["size"] = 29,
			},
			["values"] = 1,
			["pvpIcon"] = 1,
			["enable"] = 1,
			["mana"] = 1,
			["healerMode"] = {
				["type"] = 1,
			},
			["scale"] = 0.7,
			["buffs"] = {
				["castable"] = 0,
				["enable"] = 1,
				["rows"] = 3,
				["maxrows"] = 2,
				["size"] = 22,
			},
			["percent"] = 1,
			["size"] = {
				["width"] = 0,
			},
		},
		["targettarget"] = {
			["debuffs"] = {
				["enable"] = 1,
				["curable"] = 0,
				["size"] = 29,
			},
			["values"] = 1,
			["pvpIcon"] = 1,
			["enable"] = 1,
			["mana"] = 1,
			["healerMode"] = {
				["type"] = 1,
			},
			["scale"] = 0.7,
			["buffs"] = {
				["castable"] = 0,
				["enable"] = 1,
				["rows"] = 3,
				["maxrows"] = 2,
				["size"] = 22,
			},
			["percent"] = 1,
			["size"] = {
				["width"] = 0,
			},
		},
		["partypet"] = {
			["debuffs"] = {
				["enable"] = 1,
				["curable"] = 0,
				["size"] = 12,
			},
			["name"] = 1,
			["scale"] = 0.7,
			["enable"] = 1,
			["buffs"] = {
				["enable"] = 1,
				["maxrows"] = 2,
				["size"] = 12,
				["castable"] = 0,
			},
			["healerMode"] = {
				["type"] = 1,
			},
			["size"] = {
				["width"] = 0,
			},
		},
		["highlightDebuffs"] = {
			["enable"] = 1,
			["frame"] = 1,
			["border"] = 1,
			["class"] = 1,
		},
		["transparency"] = {
			["text"] = 1,
			["frame"] = 1,
		},
		["pettarget"] = {
			["debuffs"] = {
				["enable"] = 1,
				["curable"] = 0,
				["size"] = 29,
			},
			["values"] = 1,
			["pvpIcon"] = 1,
			["enable"] = 1,
			["mana"] = 1,
			["healerMode"] = {
				["type"] = 1,
			},
			["scale"] = 0.7,
			["buffs"] = {
				["castable"] = 0,
				["enable"] = 1,
				["rows"] = 3,
				["maxrows"] = 2,
				["size"] = 22,
			},
			["percent"] = 1,
			["size"] = {
				["width"] = 0,
			},
		},
		["party"] = {
			["debuffs"] = {
				["halfSize"] = 1,
				["below"] = 1,
				["enable"] = 1,
				["curable"] = 0,
				["size"] = 32,
			},
			["portrait"] = 1,
			["scale"] = 0.8,
			["castBar"] = {
				["enable"] = 1,
				["castTime"] = 1,
			},
			["spacing"] = 23,
			["anchor"] = "TOP",
			["level"] = 1,
			["size"] = {
				["width"] = 0,
			},
			["portrait3D"] = 1,
			["pvpIcon"] = 1,
			["healerMode"] = {
				["type"] = 1,
			},
			["values"] = 1,
			["inRaid"] = 1,
			["name"] = 1,
			["hitIndicator"] = 1,
			["target"] = {
				["enable"] = 1,
				["size"] = 120,
				["large"] = 1,
			},
			["buffs"] = {
				["enable"] = 1,
				["maxrows"] = 2,
				["castable"] = 0,
				["size"] = 22,
			},
			["percent"] = 1,
			["classIcon"] = 1,
		},
		["combatFlash"] = 1,
		["buffs"] = {
			["countdown"] = 1,
			["cooldown"] = 1,
			["countdownStart"] = 20,
		},
		["maximumScale"] = 1.5,
		["optionsColour"] = {
			["b"] = 0.2,
			["g"] = 0.2,
			["r"] = 0.7,
		},
	},
	["savedPositions"] = {
		["Laughing Skull"] = {
			["Phoebeldia"] = {
				["XPerl_Focus"] = {
					["top"] = 608.0000578880317,
					["left"] = 216.8000032305718,
				},
				["XPerl_MTList_Anchor"] = {
					["top"] = 392,
					["left"] = 589.4000244140625,
				},
				["XPerl_Check"] = {
					["top"] = 393.0000305175781,
					["left"] = 549.4000244140625,
				},
				["XPerl_TargetTargetTarget"] = {
					["top"] = 744.2000483615047,
					["left"] = 528.5000337243073,
				},
				["XPerl_FocusTarget"] = {
					["top"] = 608.000062888008,
					["left"] = 414.7000051447321,
				},
				["XPerl_Raid_Title4"] = {
					["top"] = 396.0000303149227,
					["left"] = 182.4000027179718,
				},
				["XPerl_Raid_Title1"] = {
					["top"] = 396.0000303149227,
					["left"] = 0,
				},
				["XPerl_Player"] = {
					["top"] = 757.2000714937822,
					["left"] = 20.69999773502354,
				},
				["XPerl_Raid_Title9"] = {
					["top"] = 396.0000303149227,
					["left"] = 486.4000560760505,
				},
				["XPerl_Raid_Title5"] = {
					["top"] = 396.0000303149227,
					["left"] = 243.2000280380253,
				},
				["XPerl_Player_Pet"] = {
					["top"] = 705.7000490171558,
					["left"] = 72.09999877214432,
				},
				["XPerl_Assists_Frame"] = {
					["top"] = 332.2223205566406,
					["left"] = 165.7681121826172,
				},
				["XPerl_Raid_Title6"] = {
					["top"] = 396.0000303149227,
					["left"] = 304.0000289440159,
				},
				["XPerl_Raid_Title2"] = {
					["top"] = 396.0000303149227,
					["left"] = 60.80000700950632,
				},
				["XPerl_PetTarget"] = {
					["top"] = 994.1429396128151,
					["left"] = 233.500005178792,
				},
				["XPerl_Party_Anchor"] = {
					["top"] = 648.0000096559525,
					["left"] = 0,
				},
				["XPerl_Raid_Title8"] = {
					["top"] = 396.0000303149227,
					["left"] = 425.6000063419342,
				},
				["XPerl_Raid_Title7"] = {
					["top"] = 396.0000303149227,
					["left"] = 364.8000054359436,
				},
				["XPerl_AdminFrame"] = {
					["top"] = 393.0000305175781,
					["left"] = 544.4000244140625,
				},
				["XPerl_Target"] = {
					["top"] = 758.4000113010407,
					["left"] = 216.8000032305718,
				},
				["XPerl_TargetTarget"] = {
					["top"] = 759.6000480992443,
					["left"] = 413.0000356912606,
				},
				["XPerl_Raid_Title3"] = {
					["top"] = 396.0000303149227,
					["left"] = 121.6000140190126,
				},
			},
		},
		["Medivh"] = {
			["Ankra"] = {
				["XPerl_Focus"] = {
					["top"] = 608.0000578880317,
					["left"] = 216.8000032305718,
				},
				["XPerl_MTList_Anchor"] = {
					["top"] = 392,
					["left"] = 589.4000244140625,
				},
				["XPerl_Check"] = {
					["top"] = 393.0000305175781,
					["left"] = 549.4000244140625,
				},
				["XPerl_TargetTargetTarget"] = {
					["top"] = 744.2000483615047,
					["left"] = 528.5000337243073,
				},
				["XPerl_FocusTarget"] = {
					["top"] = 608.000062888008,
					["left"] = 414.7000051447321,
				},
				["XPerl_Raid_Title4"] = {
					["top"] = 396.0000303149227,
					["left"] = 182.4000027179718,
				},
				["XPerl_Raid_Title1"] = {
					["top"] = 396.0000303149227,
					["left"] = 0,
				},
				["XPerl_Player"] = {
					["top"] = 757.2000714937822,
					["left"] = 20.69999773502354,
				},
				["XPerl_Raid_Title9"] = {
					["top"] = 396.0000303149227,
					["left"] = 486.4000560760505,
				},
				["XPerl_Raid_Title5"] = {
					["top"] = 396.0000303149227,
					["left"] = 243.2000280380253,
				},
				["XPerl_Player_Pet"] = {
					["top"] = 705.7000490171558,
					["left"] = 72.09999877214432,
				},
				["XPerl_Assists_Frame"] = {
					["top"] = 446,
					["left"] = 449.4000244140625,
				},
				["XPerl_Raid_Title6"] = {
					["top"] = 396.0000303149227,
					["left"] = 304.0000289440159,
				},
				["XPerl_Raid_Title2"] = {
					["top"] = 396.0000303149227,
					["left"] = 60.80000700950632,
				},
				["XPerl_PetTarget"] = {
					["top"] = 994.1429396128151,
					["left"] = 233.500005178792,
				},
				["XPerl_Party_Anchor"] = {
					["top"] = 648.0000096559525,
					["left"] = 0,
				},
				["XPerl_Raid_Title8"] = {
					["top"] = 396.0000303149227,
					["left"] = 425.6000063419342,
				},
				["XPerl_Raid_Title7"] = {
					["top"] = 396.0000303149227,
					["left"] = 364.8000054359436,
				},
				["XPerl_AdminFrame"] = {
					["top"] = 393.0000305175781,
					["left"] = 544.4000244140625,
				},
				["XPerl_Target"] = {
					["top"] = 758.4000113010407,
					["left"] = 216.8000032305718,
				},
				["XPerl_TargetTarget"] = {
					["top"] = 759.6000480992443,
					["left"] = 413.0000356912606,
				},
				["XPerl_Raid_Title3"] = {
					["top"] = 396.0000303149227,
					["left"] = 121.6000140190126,
				},
			},
		},
		["Garona"] = {
			["Aniak"] = {
				["XPerl_Focus"] = {
					["top"] = 608.0000578880317,
					["left"] = 216.8000032305718,
				},
				["XPerl_MTList_Anchor"] = {
					["top"] = 392,
					["left"] = 589.4000244140625,
				},
				["XPerl_Check"] = {
					["top"] = 393.0000305175781,
					["left"] = 549.4000244140625,
				},
				["XPerl_TargetTargetTarget"] = {
					["top"] = 744.2000483615047,
					["left"] = 528.5000337243073,
				},
				["XPerl_FocusTarget"] = {
					["top"] = 608.000062888008,
					["left"] = 414.7000051447321,
				},
				["XPerl_Raid_Title4"] = {
					["top"] = 396.0000303149227,
					["left"] = 182.4000027179718,
				},
				["XPerl_Raid_Title1"] = {
					["top"] = 396.0000303149227,
					["left"] = 0,
				},
				["XPerl_Player"] = {
					["top"] = 757.2000714937822,
					["left"] = 20.69999773502354,
				},
				["XPerl_Raid_Title9"] = {
					["top"] = 396.0000303149227,
					["left"] = 486.4000560760505,
				},
				["XPerl_Raid_Title5"] = {
					["top"] = 396.0000303149227,
					["left"] = 243.2000280380253,
				},
				["XPerl_Player_Pet"] = {
					["top"] = 705.7000490171558,
					["left"] = 72.09999877214432,
				},
				["XPerl_Assists_Frame"] = {
					["top"] = 446,
					["left"] = 449.4000244140625,
				},
				["XPerl_Raid_Title6"] = {
					["top"] = 396.0000303149227,
					["left"] = 304.0000289440159,
				},
				["XPerl_TargetTarget"] = {
					["top"] = 759.6000480992443,
					["left"] = 413.0000356912606,
				},
				["XPerl_PetTarget"] = {
					["top"] = 994.1429396128151,
					["left"] = 233.500005178792,
				},
				["XPerl_Party_Anchor"] = {
					["top"] = 648.0000096559525,
					["left"] = 0,
				},
				["XPerl_AdminFrame"] = {
					["top"] = 393.0000305175781,
					["left"] = 544.4000244140625,
				},
				["XPerl_Raid_Title7"] = {
					["top"] = 396.0000303149227,
					["left"] = 364.8000054359436,
				},
				["XPerl_Raid_Title8"] = {
					["top"] = 396.0000303149227,
					["left"] = 425.6000063419342,
				},
				["XPerl_Target"] = {
					["top"] = 758.4000113010407,
					["left"] = 216.8000032305718,
				},
				["XPerl_Raid_Title2"] = {
					["top"] = 396.0000303149227,
					["left"] = 60.80000700950632,
				},
				["XPerl_Raid_Title3"] = {
					["top"] = 396.0000303149227,
					["left"] = 121.6000140190126,
				},
			},
		},
		["Hellscream"] = {
			["Aonarah"] = {
				["XPerl_Focus"] = {
					["top"] = 608.0000578880317,
					["left"] = 216.8000032305718,
				},
				["XPerl_MTList_Anchor"] = {
					["top"] = 392,
					["left"] = 589.4000244140625,
				},
				["XPerl_Check"] = {
					["top"] = 393.0000305175781,
					["left"] = 549.4000244140625,
				},
				["XPerl_TargetTargetTarget"] = {
					["top"] = 744.2000483615047,
					["left"] = 528.5000337243073,
				},
				["XPerl_FocusTarget"] = {
					["top"] = 608.000062888008,
					["left"] = 414.7000051447321,
				},
				["XPerl_Raid_Title4"] = {
					["top"] = 396.0000303149227,
					["left"] = 182.4000027179718,
				},
				["XPerl_Raid_Title1"] = {
					["top"] = 396.0000303149227,
					["left"] = 0,
				},
				["XPerl_Player"] = {
					["top"] = 757.2000714937822,
					["left"] = 20.69999773502354,
				},
				["XPerl_Raid_Title9"] = {
					["top"] = 396.0000303149227,
					["left"] = 486.4000560760505,
				},
				["XPerl_Raid_Title5"] = {
					["top"] = 396.0000303149227,
					["left"] = 243.2000280380253,
				},
				["XPerl_Player_Pet"] = {
					["top"] = 705.7000490171558,
					["left"] = 72.09999877214432,
				},
				["XPerl_Assists_Frame"] = {
					["top"] = 446,
					["left"] = 449.4000244140625,
				},
				["XPerl_Raid_Title6"] = {
					["top"] = 396.0000303149227,
					["left"] = 304.0000289440159,
				},
				["XPerl_Raid_Title2"] = {
					["top"] = 396.0000303149227,
					["left"] = 60.80000700950632,
				},
				["XPerl_PetTarget"] = {
					["top"] = 994.1429396128151,
					["left"] = 233.500005178792,
				},
				["XPerl_Party_Anchor"] = {
					["top"] = 648.0000096559525,
					["left"] = 0,
				},
				["XPerl_Raid_Title8"] = {
					["top"] = 396.0000303149227,
					["left"] = 425.6000063419342,
				},
				["XPerl_Raid_Title7"] = {
					["top"] = 396.0000303149227,
					["left"] = 364.8000054359436,
				},
				["XPerl_AdminFrame"] = {
					["top"] = 393.0000305175781,
					["left"] = 544.4000244140625,
				},
				["XPerl_Target"] = {
					["top"] = 758.4000113010407,
					["left"] = 216.8000032305718,
				},
				["XPerl_TargetTarget"] = {
					["top"] = 759.6000480992443,
					["left"] = 413.0000356912606,
				},
				["XPerl_Raid_Title3"] = {
					["top"] = 396.0000303149227,
					["left"] = 121.6000140190126,
				},
			},
			["Aonarap"] = {
				["XPerl_Focus"] = {
					["top"] = 608.0000578880317,
					["left"] = 216.8000032305718,
				},
				["XPerl_MTList_Anchor"] = {
					["top"] = 392,
					["left"] = 589.4000244140625,
				},
				["XPerl_Check"] = {
					["top"] = 393.0000305175781,
					["left"] = 549.4000244140625,
				},
				["XPerl_TargetTargetTarget"] = {
					["top"] = 744.2000483615047,
					["left"] = 528.5000337243073,
				},
				["XPerl_FocusTarget"] = {
					["top"] = 608.000062888008,
					["left"] = 414.7000051447321,
				},
				["XPerl_Raid_Title4"] = {
					["top"] = 396.0000303149227,
					["left"] = 182.4000027179718,
				},
				["XPerl_Raid_Title1"] = {
					["top"] = 396.0000303149227,
					["left"] = 0,
				},
				["XPerl_Player"] = {
					["top"] = 757.2000714937822,
					["left"] = 20.69999773502354,
				},
				["XPerl_Raid_Title9"] = {
					["top"] = 396.0000303149227,
					["left"] = 486.4000560760505,
				},
				["XPerl_Raid_Title5"] = {
					["top"] = 396.0000303149227,
					["left"] = 243.2000280380253,
				},
				["XPerl_Player_Pet"] = {
					["top"] = 705.7000490171558,
					["left"] = 72.09999877214432,
				},
				["XPerl_Assists_Frame"] = {
					["top"] = 446,
					["left"] = 449.4000244140625,
				},
				["XPerl_Raid_Title6"] = {
					["top"] = 396.0000303149227,
					["left"] = 304.0000289440159,
				},
				["XPerl_TargetTarget"] = {
					["top"] = 759.6000480992443,
					["left"] = 413.0000356912606,
				},
				["XPerl_PetTarget"] = {
					["top"] = 994.1429396128151,
					["left"] = 233.500005178792,
				},
				["XPerl_Party_Anchor"] = {
					["top"] = 648.0000096559525,
					["left"] = 0,
				},
				["XPerl_AdminFrame"] = {
					["top"] = 393.0000305175781,
					["left"] = 544.4000244140625,
				},
				["XPerl_Raid_Title7"] = {
					["top"] = 396.0000303149227,
					["left"] = 364.8000054359436,
				},
				["XPerl_Raid_Title8"] = {
					["top"] = 396.0000303149227,
					["left"] = 425.6000063419342,
				},
				["XPerl_Target"] = {
					["top"] = 758.4000113010407,
					["left"] = 216.8000032305718,
				},
				["XPerl_Raid_Title2"] = {
					["top"] = 396.0000303149227,
					["left"] = 60.80000700950632,
				},
				["XPerl_Raid_Title3"] = {
					["top"] = 396.0000303149227,
					["left"] = 121.6000140190126,
				},
			},
			["Aona"] = {
				["XPerl_RosterTextAnchor"] = {
					["top"] = 498.0000305175781,
					["height"] = 249.9999847412109,
					["left"] = 439.4000244140625,
					["width"] = 350,
				},
				["XPerl_Focus"] = {
					["top"] = 607.9999602317803,
					["left"] = 216.8000276446346,
				},
				["XPerl_OptionsAnchor"] = {
					["top"] = 672.0382690429688,
					["height"] = 520,
					["left"] = 290.1858520507813,
					["width"] = 760.5809326171875,
				},
				["XPerl_Assists_FrameAnchor"] = {
					["top"] = 446,
					["height"] = 123.9999923706055,
					["left"] = 449.4000244140625,
					["width"] = 330,
				},
				["XPerl_RaidMonitor_Anchor"] = {
					["top"] = 392,
					["left"] = 455.0000305175781,
				},
				["XPerl_MTList_Anchor"] = {
					["top"] = 392,
					["left"] = 455.0000305175781,
				},
				["XPerl_Check"] = {
					["top"] = 393,
					["left"] = 414.9999694824219,
				},
				["XPerl_TargetTargetTarget"] = {
					["top"] = 744.1999629122875,
					["left"] = 528.4999909996986,
				},
				["XPerl_AdminFrameAnchor"] = {
					["top"] = 459.0000305175781,
					["height"] = 150,
					["left"] = 544.4000244140625,
					["width"] = 140,
				},
				["XPerl_AdminFrame"] = {
					["top"] = 393,
					["left"] = 410,
				},
				["XPerl_FocusTarget"] = {
					["top"] = 607.9999774387907,
					["left"] = 414.7000905939494,
				},
				["XPerl_Raid_Title4"] = {
					["top"] = 396.0000059008598,
					["left"] = 182.4000149250032,
				},
				["XPerl_Raid_Title1"] = {
					["top"] = 396.8335020070299,
					["left"] = 0,
				},
				["XPerl_Player"] = {
					["top"] = 197.9157296203048,
					["left"] = 596.9445947820714,
				},
				["XPerl_Assists_Frame"] = {
					["top"] = 446.0000305175781,
					["left"] = 315,
				},
				["XPerl_Raid_Title9"] = {
					["top"] = 396.0000059008598,
					["left"] = 486.4000560760505,
				},
				["XPerl_Raid_Title5"] = {
					["top"] = 396.0000059008598,
					["left"] = 243.2000280380253,
				},
				["XPerl_Player_Pet"] = {
					["top"] = 705.7000062925472,
					["left"] = 72.09999877214432,
				},
				["XPerl_TargetTarget"] = {
					["top"] = 829.0304424246642,
					["left"] = 958.5461628752746,
				},
				["XPerl_Raid_Title6"] = {
					["top"] = 396.0000059008598,
					["left"] = 304.000004529953,
				},
				["XPerl_CheckAnchor"] = {
					["top"] = 504.0000305175781,
					["height"] = 240,
					["left"] = 364.3999938964844,
					["width"] = 499.9999694824219,
				},
				["XPerl_PetTarget"] = {
					["top"] = 994.1427687143805,
					["left"] = 233.4999838164877,
				},
				["XPerl_Party_Anchor"] = {
					["top"] = 730.5125108854845,
					["left"] = 68.27143656419867,
				},
				["XPerl_AggroAnchor"] = {
					["top"] = 470.1666564941406,
					["left"] = 522.33349609375,
				},
				["XPerl_Raid_Title8"] = {
					["top"] = 396.0000059008598,
					["left"] = 425.6000063419342,
				},
				["XPerl_Raid_Title7"] = {
					["top"] = 396.0000059008598,
					["left"] = 364.8000298500065,
				},
				["XPerl_Target"] = {
					["top"] = 824.8525513537607,
					["left"] = 355.2892386926596,
				},
				["XPerl_Raid_Title2"] = {
					["top"] = 396.0000059008598,
					["left"] = 60.80000700950632,
				},
				["XPerl_Raid_Title3"] = {
					["top"] = 396.0000059008598,
					["left"] = 121.6000140190126,
				},
			},
			["Abeninka"] = {
				["XPerl_Focus"] = {
					["top"] = 608.0000578880317,
					["left"] = 216.8000032305718,
				},
				["XPerl_MTList_Anchor"] = {
					["top"] = 392,
					["left"] = 589.4000244140625,
				},
				["XPerl_Check"] = {
					["top"] = 393.0000305175781,
					["left"] = 549.4000244140625,
				},
				["XPerl_TargetTargetTarget"] = {
					["top"] = 744.2000483615047,
					["left"] = 528.5000337243073,
				},
				["XPerl_FocusTarget"] = {
					["top"] = 608.000062888008,
					["left"] = 414.7000051447321,
				},
				["XPerl_Raid_Title4"] = {
					["top"] = 396.0000303149227,
					["left"] = 182.4000027179718,
				},
				["XPerl_Raid_Title1"] = {
					["top"] = 396.0000303149227,
					["left"] = 0,
				},
				["XPerl_Player"] = {
					["top"] = 757.2000714937822,
					["left"] = 20.69999773502354,
				},
				["XPerl_Raid_Title9"] = {
					["top"] = 396.0000303149227,
					["left"] = 486.4000560760505,
				},
				["XPerl_Raid_Title5"] = {
					["top"] = 396.0000303149227,
					["left"] = 243.2000280380253,
				},
				["XPerl_Player_Pet"] = {
					["top"] = 705.7000490171558,
					["left"] = 72.09999877214432,
				},
				["XPerl_Assists_Frame"] = {
					["top"] = 446,
					["left"] = 449.4000244140625,
				},
				["XPerl_Raid_Title6"] = {
					["top"] = 396.0000303149227,
					["left"] = 304.0000289440159,
				},
				["XPerl_Raid_Title2"] = {
					["top"] = 396.0000303149227,
					["left"] = 60.80000700950632,
				},
				["XPerl_PetTarget"] = {
					["top"] = 994.1429396128151,
					["left"] = 233.500005178792,
				},
				["XPerl_Party_Anchor"] = {
					["top"] = 648.0000096559525,
					["left"] = 0,
				},
				["XPerl_Raid_Title8"] = {
					["top"] = 396.0000303149227,
					["left"] = 425.6000063419342,
				},
				["XPerl_Raid_Title7"] = {
					["top"] = 396.0000303149227,
					["left"] = 364.8000054359436,
				},
				["XPerl_AdminFrame"] = {
					["top"] = 393.0000305175781,
					["left"] = 544.4000244140625,
				},
				["XPerl_Target"] = {
					["top"] = 758.4000113010407,
					["left"] = 216.8000032305718,
				},
				["XPerl_TargetTarget"] = {
					["top"] = 759.6000480992443,
					["left"] = 413.0000356912606,
				},
				["XPerl_Raid_Title3"] = {
					["top"] = 396.0000303149227,
					["left"] = 121.6000140190126,
				},
			},
			["Barimuri"] = {
				["XPerl_Focus"] = {
					["top"] = 608.0000578880317,
					["left"] = 216.8000032305718,
				},
				["XPerl_MTList_Anchor"] = {
					["top"] = 392,
					["left"] = 589.4000244140625,
				},
				["XPerl_Check"] = {
					["top"] = 393.0000305175781,
					["left"] = 549.4000244140625,
				},
				["XPerl_TargetTargetTarget"] = {
					["top"] = 744.2000483615047,
					["left"] = 528.5000337243073,
				},
				["XPerl_FocusTarget"] = {
					["top"] = 608.000062888008,
					["left"] = 414.7000051447321,
				},
				["XPerl_Raid_Title4"] = {
					["top"] = 396.0000303149227,
					["left"] = 182.4000027179718,
				},
				["XPerl_Raid_Title1"] = {
					["top"] = 396.0000303149227,
					["left"] = 0,
				},
				["XPerl_Player"] = {
					["top"] = 757.2000714937822,
					["left"] = 20.69999773502354,
				},
				["XPerl_Raid_Title9"] = {
					["top"] = 396.0000303149227,
					["left"] = 486.4000560760505,
				},
				["XPerl_Raid_Title5"] = {
					["top"] = 396.0000303149227,
					["left"] = 243.2000280380253,
				},
				["XPerl_Player_Pet"] = {
					["top"] = 705.7000490171558,
					["left"] = 72.09999877214432,
				},
				["XPerl_Assists_Frame"] = {
					["top"] = 446,
					["left"] = 449.4000244140625,
				},
				["XPerl_Raid_Title6"] = {
					["top"] = 396.0000303149227,
					["left"] = 304.0000289440159,
				},
				["XPerl_TargetTarget"] = {
					["top"] = 759.6000480992443,
					["left"] = 413.0000356912606,
				},
				["XPerl_PetTarget"] = {
					["top"] = 994.1429396128151,
					["left"] = 233.500005178792,
				},
				["XPerl_Party_Anchor"] = {
					["top"] = 648.0000096559525,
					["left"] = 0,
				},
				["XPerl_AdminFrame"] = {
					["top"] = 393.0000305175781,
					["left"] = 544.4000244140625,
				},
				["XPerl_Raid_Title7"] = {
					["top"] = 396.0000303149227,
					["left"] = 364.8000054359436,
				},
				["XPerl_Raid_Title8"] = {
					["top"] = 396.0000303149227,
					["left"] = 425.6000063419342,
				},
				["XPerl_Target"] = {
					["top"] = 758.4000113010407,
					["left"] = 216.8000032305718,
				},
				["XPerl_Raid_Title2"] = {
					["top"] = 396.0000303149227,
					["left"] = 60.80000700950632,
				},
				["XPerl_Raid_Title3"] = {
					["top"] = 396.0000303149227,
					["left"] = 121.6000140190126,
				},
			},
			["Dolivis"] = {
				["XPerl_Focus"] = {
					["top"] = 608.0000578880317,
					["left"] = 216.8000032305718,
				},
				["XPerl_MTList_Anchor"] = {
					["top"] = 392,
					["left"] = 589.4000244140625,
				},
				["XPerl_Check"] = {
					["top"] = 393.0000305175781,
					["left"] = 549.4000244140625,
				},
				["XPerl_TargetTargetTarget"] = {
					["top"] = 744.2000483615047,
					["left"] = 528.5000337243073,
				},
				["XPerl_FocusTarget"] = {
					["top"] = 608.000062888008,
					["left"] = 414.7000051447321,
				},
				["XPerl_Raid_Title4"] = {
					["top"] = 396.0000303149227,
					["left"] = 182.4000027179718,
				},
				["XPerl_Raid_Title1"] = {
					["top"] = 396.0000303149227,
					["left"] = 0,
				},
				["XPerl_Player"] = {
					["top"] = 757.2000714937822,
					["left"] = 20.69999773502354,
				},
				["XPerl_Raid_Title9"] = {
					["top"] = 396.0000303149227,
					["left"] = 486.4000560760505,
				},
				["XPerl_Raid_Title5"] = {
					["top"] = 396.0000303149227,
					["left"] = 243.2000280380253,
				},
				["XPerl_Player_Pet"] = {
					["top"] = 705.7000490171558,
					["left"] = 72.09999877214432,
				},
				["XPerl_Assists_Frame"] = {
					["top"] = 446,
					["left"] = 449.4000244140625,
				},
				["XPerl_Raid_Title6"] = {
					["top"] = 396.0000303149227,
					["left"] = 304.0000289440159,
				},
				["XPerl_Raid_Title2"] = {
					["top"] = 396.0000303149227,
					["left"] = 60.80000700950632,
				},
				["XPerl_PetTarget"] = {
					["top"] = 994.1429396128151,
					["left"] = 233.500005178792,
				},
				["XPerl_Party_Anchor"] = {
					["top"] = 648.0000096559525,
					["left"] = 0,
				},
				["XPerl_Raid_Title8"] = {
					["top"] = 396.0000303149227,
					["left"] = 425.6000063419342,
				},
				["XPerl_Raid_Title7"] = {
					["top"] = 396.0000303149227,
					["left"] = 364.8000054359436,
				},
				["XPerl_AdminFrame"] = {
					["top"] = 393.0000305175781,
					["left"] = 544.4000244140625,
				},
				["XPerl_Target"] = {
					["top"] = 758.4000113010407,
					["left"] = 216.8000032305718,
				},
				["XPerl_TargetTarget"] = {
					["top"] = 759.6000480992443,
					["left"] = 413.0000356912606,
				},
				["XPerl_Raid_Title3"] = {
					["top"] = 396.0000303149227,
					["left"] = 121.6000140190126,
				},
			},
			["Vanisa"] = {
				["XPerl_Focus"] = {
					["top"] = 608.0000578880317,
					["left"] = 216.8000032305718,
				},
				["XPerl_MTList_Anchor"] = {
					["top"] = 392,
					["left"] = 589.4000244140625,
				},
				["XPerl_Check"] = {
					["top"] = 393.0000305175781,
					["left"] = 549.4000244140625,
				},
				["XPerl_TargetTargetTarget"] = {
					["top"] = 744.2000483615047,
					["left"] = 528.5000337243073,
				},
				["XPerl_FocusTarget"] = {
					["top"] = 608.000062888008,
					["left"] = 414.7000051447321,
				},
				["XPerl_Raid_Title4"] = {
					["top"] = 396.0000303149227,
					["left"] = 182.4000027179718,
				},
				["XPerl_Raid_Title1"] = {
					["top"] = 396.0000303149227,
					["left"] = 0,
				},
				["XPerl_Player"] = {
					["top"] = 757.2000714937822,
					["left"] = 20.69999773502354,
				},
				["XPerl_Raid_Title9"] = {
					["top"] = 396.0000303149227,
					["left"] = 486.4000560760505,
				},
				["XPerl_Raid_Title5"] = {
					["top"] = 396.0000303149227,
					["left"] = 243.2000280380253,
				},
				["XPerl_Player_Pet"] = {
					["top"] = 705.7000490171558,
					["left"] = 72.09999877214432,
				},
				["XPerl_Assists_Frame"] = {
					["top"] = 446,
					["left"] = 449.4000244140625,
				},
				["XPerl_Raid_Title6"] = {
					["top"] = 396.0000303149227,
					["left"] = 304.0000289440159,
				},
				["XPerl_Raid_Title2"] = {
					["top"] = 396.0000303149227,
					["left"] = 60.80000700950632,
				},
				["XPerl_PetTarget"] = {
					["top"] = 994.1429396128151,
					["left"] = 233.500005178792,
				},
				["XPerl_Party_Anchor"] = {
					["top"] = 648.0000096559525,
					["left"] = 0,
				},
				["XPerl_Raid_Title8"] = {
					["top"] = 396.0000303149227,
					["left"] = 425.6000063419342,
				},
				["XPerl_Raid_Title7"] = {
					["top"] = 396.0000303149227,
					["left"] = 364.8000054359436,
				},
				["XPerl_AdminFrame"] = {
					["top"] = 393.0000305175781,
					["left"] = 544.4000244140625,
				},
				["XPerl_Target"] = {
					["top"] = 758.4000113010407,
					["left"] = 216.8000032305718,
				},
				["XPerl_TargetTarget"] = {
					["top"] = 759.6000480992443,
					["left"] = 413.0000356912606,
				},
				["XPerl_Raid_Title3"] = {
					["top"] = 396.0000303149227,
					["left"] = 121.6000140190126,
				},
			},
		},
	},
}
XPerlConfigSavePerCharacter = nil
