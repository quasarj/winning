
CT_RA_MainTanks = {
}
CT_RA_MainTankStats = nil
CT_RA_Stats = {
	{
	}, -- [1]
}
CT_RA_PartyMembers = {
	["Ardurren"] = 1,
	["Varegirne"] = 1,
	["Xzander"] = 1,
	["Innovindile"] = 1,
}
CT_RA_NumRaidMembers = 0
CT_RA_ChatInfo = {
	["Default"] = {
		["show"] = {
			"ChatFrame1", -- [1]
		},
		["r"] = 1,
		["g"] = 0.5,
		["b"] = 0,
	},
	["Aona"] = {
		["show"] = {
			"ChatFrame1", -- [1]
		},
		["r"] = 1,
		["g"] = 0.5,
		["b"] = 0,
	},
}
CT_RA_RaidParticipant = "Chukk"
CT_RA_CurrPositions = {
}
CT_RA_ModVersion = 2.005
CT_RAMenu_CurrSet = "Default"
CT_RAMenu_Locked = 1
CT_RA_HasJoinedRaid = 1
CT_RAMenu_Options = {
	["Default"] = {
		["BGOpacity"] = 0.4,
		["NotifyDebuffsClass"] = {
			1, -- [1]
			1, -- [2]
			1, -- [3]
			1, -- [4]
			1, -- [5]
			1, -- [6]
			1, -- [7]
			1, -- [8]
		},
		["ShowGroups"] = {
		},
		["SORTTYPE"] = "group",
		["DebuffColors"] = {
			{
				["a"] = 0.5,
				["type"] = "Curse",
				["index"] = 1,
				["r"] = 1,
				["id"] = 4,
				["g"] = 0,
				["b"] = 0.75,
			}, -- [1]
			{
				["a"] = 0.5,
				["type"] = "Magic",
				["index"] = 2,
				["r"] = 1,
				["id"] = 6,
				["g"] = 0,
				["b"] = 0,
			}, -- [2]
			{
				["a"] = 0.5,
				["type"] = "Poison",
				["index"] = 3,
				["r"] = 0,
				["id"] = 3,
				["g"] = 0.5,
				["b"] = 0,
			}, -- [3]
			{
				["a"] = 0.5,
				["type"] = "Disease",
				["index"] = 4,
				["r"] = 1,
				["id"] = 5,
				["g"] = 1,
				["b"] = 0,
			}, -- [4]
			{
				["a"] = 0.5,
				["type"] = "Weakened Soul",
				["index"] = 5,
				["r"] = 1,
				["id"] = 2,
				["g"] = 0,
				["b"] = 1,
			}, -- [5]
			{
				["a"] = 0.5,
				["type"] = "Recently Bandaged",
				["index"] = 6,
				["r"] = 0,
				["id"] = 1,
				["g"] = 0,
				["b"] = 0,
			}, -- [6]
		},
		["SpellCastDelay"] = 0.5,
		["ShowMTs"] = {
			1, -- [1]
			1, -- [2]
			1, -- [3]
			1, -- [4]
			1, -- [5]
		},
		["WindowPositions"] = {
		},
		["PlayRSSound"] = 1,
		["DefaultColor"] = {
			["a"] = 0.5,
			["r"] = 0,
			["g"] = 0.1,
			["b"] = 0.9,
		},
		["NotifyDebuffs"] = {
			1, -- [1]
			1, -- [2]
			1, -- [3]
			1, -- [4]
			1, -- [5]
			1, -- [6]
			1, -- [7]
			1, -- [8]
		},
		["MemberHeight"] = 40,
		["DefaultAlertColor"] = {
			["r"] = 1,
			["g"] = 1,
			["b"] = 1,
		},
		["PercentColor"] = {
			["r"] = 1,
			["g"] = 1,
			["b"] = 1,
		},
		["BuffArray"] = {
			{
				["show"] = 1,
				["name"] = {
					"Power Word: Fortitude", -- [1]
					"Prayer of Fortitude", -- [2]
				},
				["index"] = 1,
			}, -- [1]
			{
				["show"] = 1,
				["name"] = {
					"Mark of the Wild", -- [1]
					"Gift of the Wild", -- [2]
				},
				["index"] = 2,
			}, -- [2]
			{
				["show"] = 1,
				["name"] = {
					"Arcane Intellect", -- [1]
					"Arcane Brilliance", -- [2]
				},
				["index"] = 3,
			}, -- [3]
			{
				["show"] = 1,
				["name"] = {
					"Shadow Protection", -- [1]
					"Prayer of Shadow Protection", -- [2]
				},
				["index"] = 5,
			}, -- [4]
			{
				["show"] = 1,
				["name"] = "Power Word: Shield",
				["index"] = 6,
			}, -- [5]
			{
				["show"] = 1,
				["name"] = "Soulstone Resurrection",
				["index"] = 7,
			}, -- [6]
			{
				["show"] = 1,
				["name"] = {
					"Divine Spirit", -- [1]
					"Prayer of Spirit", -- [2]
				},
				["index"] = 8,
			}, -- [7]
			{
				["show"] = 1,
				["name"] = "Thorns",
				["index"] = 9,
			}, -- [8]
			{
				["show"] = 1,
				["name"] = "Fear Ward",
				["index"] = 10,
			}, -- [9]
			{
				["show"] = 1,
				["name"] = {
					"Blessing of Might", -- [1]
					"Greater Blessing of Might", -- [2]
				},
				["index"] = 11,
			}, -- [10]
			{
				["show"] = 1,
				["name"] = {
					"Blessing of Wisdom", -- [1]
					"Greater Blessing of Wisdom", -- [2]
				},
				["index"] = 12,
			}, -- [11]
			{
				["show"] = 1,
				["name"] = {
					"Blessing of Kings", -- [1]
					"Greater Blessing of Kings", -- [2]
				},
				["index"] = 13,
			}, -- [12]
			{
				["show"] = 1,
				["name"] = {
					"Blessing of Salvation", -- [1]
					"Greater Blessing of Salvation", -- [2]
				},
				["index"] = 14,
			}, -- [13]
			{
				["show"] = 1,
				["name"] = {
					"Blessing of Light", -- [1]
					"Greater Blessing of Light", -- [2]
				},
				["index"] = 15,
			}, -- [14]
			{
				["show"] = 1,
				["name"] = {
					"Blessing of Sanctuary", -- [1]
					"Greater Blessing of Sanctuary", -- [2]
				},
				["index"] = 16,
			}, -- [15]
			{
				["show"] = 1,
				["name"] = "Renew",
				["index"] = 17,
			}, -- [16]
			{
				["show"] = 1,
				["name"] = "Rejuvenation",
				["index"] = 18,
			}, -- [17]
			{
				["show"] = 1,
				["name"] = "Regrowth",
				["index"] = 19,
			}, -- [18]
			{
				["show"] = -1,
				["name"] = "Amplify Magic",
				["index"] = 20,
			}, -- [19]
			{
				["show"] = -1,
				["name"] = "Dampen Magic",
				["index"] = 21,
			}, -- [20]
		},
		["MenuLocked"] = 1,
	},
	["temp"] = {
		["StatusMeters"] = {
			["Mana Display"] = {
			},
			["Dead Count"] = true,
			["Health Display"] = {
				["Warrior"] = false,
				["Shaman"] = false,
			},
			["AFK Count"] = true,
			["Raid Health"] = {
				["Warrior"] = true,
				["Druid"] = true,
				["Shaman"] = true,
				["Warlock"] = true,
				["Rogue"] = true,
				["Mage"] = true,
				["Hunter"] = true,
				["Priest"] = true,
			},
			["Background"] = {
				["a"] = 0.5,
				["b"] = 1,
				["g"] = 0,
				["r"] = 0,
			},
			["Offline Count"] = false,
			["Raid Mana"] = {
				["Druid"] = true,
				["Shaman"] = true,
				["Priest"] = true,
				["Mage"] = true,
				["Warlock"] = true,
				["Hunter"] = true,
			},
		},
		["EMThreshold"] = 0.9,
		["ShowGroups"] = {
		},
		["ShowMTs"] = {
			1, -- [1]
			1, -- [2]
			1, -- [3]
			1, -- [4]
			1, -- [5]
		},
		["HideColorChange"] = 1,
		["PlayRSSound"] = 1,
		["LockGroups"] = true,
		["NotifyDebuffsClass"] = {
			1, -- [1]
			1, -- [2]
			1, -- [3]
			1, -- [4]
			1, -- [5]
			1, -- [6]
			1, -- [7]
			1, -- [8]
		},
		["MTScaling"] = 0.8100000000000001,
		["DebuffColors"] = {
			{
				["a"] = 0.5,
				["type"] = "Curse",
				["index"] = 1,
				["r"] = 1,
				["id"] = 4,
				["g"] = 0,
				["b"] = 0.75,
			}, -- [1]
			{
				["a"] = 0.5,
				["type"] = "Magic",
				["index"] = 2,
				["r"] = 1,
				["id"] = 6,
				["g"] = 0,
				["b"] = 0,
			}, -- [2]
			{
				["a"] = 0.5,
				["type"] = "Poison",
				["index"] = 3,
				["r"] = 0,
				["id"] = 3,
				["g"] = 0.5,
				["b"] = 0,
			}, -- [3]
			{
				["a"] = 0.5,
				["type"] = "Disease",
				["index"] = 4,
				["r"] = 1,
				["id"] = 5,
				["g"] = 1,
				["b"] = 0,
			}, -- [4]
			{
				["a"] = 0.5,
				["type"] = "Weakened Soul",
				["index"] = 5,
				["r"] = 1,
				["id"] = 2,
				["g"] = 0,
				["b"] = 1,
			}, -- [5]
			{
				["a"] = 0.5,
				["type"] = "Recently Bandaged",
				["index"] = 6,
				["r"] = 0,
				["id"] = 1,
				["g"] = 0,
				["b"] = 0,
			}, -- [6]
		},
		["WindowPositions"] = {
			["CT_RAMTGroupDrag"] = {
				550.3067016601563, -- [1]
				-20, -- [2]
			},
			["CT_RAGroupDrag4"] = {
				146, -- [1]
				-203.0001220703125, -- [2]
			},
			["CT_RAGroupDrag8"] = {
				161.5619049072266, -- [1]
				-132.3809814453125, -- [2]
			},
			["CT_RAGroupDrag3"] = {
				55.87304306030273, -- [1]
				-290.1461791992188, -- [2]
			},
			["CT_RAGroupDrag1"] = {
				56.49848175048828, -- [1]
				-89.19378662109375, -- [2]
			},
			["CT_RAGroupDrag6"] = {
				676.8350830078125, -- [1]
				4.34613037109375, -- [2]
			},
			["CT_RAGroupDrag2"] = {
				143.5619506835938, -- [1]
				-89.00653076171875, -- [2]
			},
			["CT_RA_EmergencyFrameDrag"] = {
				518.9168090820313, -- [1]
				-409.6668395996094, -- [2]
			},
			["CT_RAGroupDrag5"] = {
				209.9999847412109, -- [1]
				-339.7867431640625, -- [2]
			},
			["CT_RAGroupDrag7"] = {
				71, -- [1]
				-252.7867431640625, -- [2]
			},
		},
		["DefaultAlertColor"] = {
			["r"] = 1,
			["g"] = 1,
			["b"] = 1,
		},
		["HideSpace"] = 1,
		["WindowScaling"] = 0.96,
		["BuffArray"] = {
			{
				["show"] = 1,
				["name"] = {
					"Power Word: Fortitude", -- [1]
					"Prayer of Fortitude", -- [2]
				},
				["index"] = 1,
			}, -- [1]
			{
				["show"] = 1,
				["name"] = {
					"Mark of the Wild", -- [1]
					"Gift of the Wild", -- [2]
				},
				["index"] = 2,
			}, -- [2]
			{
				["show"] = 1,
				["name"] = {
					"Arcane Intellect", -- [1]
					"Arcane Brilliance", -- [2]
				},
				["index"] = 3,
			}, -- [3]
			{
				["show"] = 1,
				["name"] = {
					"Shadow Protection", -- [1]
					"Prayer of Shadow Protection", -- [2]
				},
				["index"] = 5,
			}, -- [4]
			{
				["show"] = 1,
				["name"] = "Power Word: Shield",
				["index"] = 6,
			}, -- [5]
			{
				["show"] = 1,
				["name"] = "Soulstone Resurrection",
				["index"] = 7,
			}, -- [6]
			{
				["show"] = 1,
				["name"] = {
					"Divine Spirit", -- [1]
					"Prayer of Spirit", -- [2]
				},
				["index"] = 8,
			}, -- [7]
			{
				["show"] = 1,
				["name"] = "Thorns",
				["index"] = 9,
			}, -- [8]
			{
				["show"] = 1,
				["name"] = "Fear Ward",
				["index"] = 10,
			}, -- [9]
			{
				["show"] = 1,
				["name"] = {
					"Blessing of Might", -- [1]
					"Greater Blessing of Might", -- [2]
				},
				["index"] = 11,
			}, -- [10]
			{
				["show"] = 1,
				["name"] = {
					"Blessing of Wisdom", -- [1]
					"Greater Blessing of Wisdom", -- [2]
				},
				["index"] = 12,
			}, -- [11]
			{
				["show"] = 1,
				["name"] = {
					"Blessing of Kings", -- [1]
					"Greater Blessing of Kings", -- [2]
				},
				["index"] = 13,
			}, -- [12]
			{
				["show"] = 1,
				["name"] = {
					"Blessing of Salvation", -- [1]
					"Greater Blessing of Salvation", -- [2]
				},
				["index"] = 14,
			}, -- [13]
			{
				["show"] = 1,
				["name"] = {
					"Blessing of Light", -- [1]
					"Greater Blessing of Light", -- [2]
				},
				["index"] = 15,
			}, -- [14]
			{
				["show"] = 1,
				["name"] = {
					"Blessing of Sanctuary", -- [1]
					"Greater Blessing of Sanctuary", -- [2]
				},
				["index"] = 16,
			}, -- [15]
			{
				["show"] = 1,
				["name"] = "Renew",
				["index"] = 17,
			}, -- [16]
			{
				["show"] = 1,
				["name"] = "Rejuvenation",
				["index"] = 18,
			}, -- [17]
			{
				["show"] = 1,
				["name"] = "Regrowth",
				["index"] = 19,
			}, -- [18]
			{
				["show"] = -1,
				["name"] = "Amplify Magic",
				["index"] = 20,
			}, -- [19]
			{
				["show"] = -1,
				["name"] = "Dampen Magic",
				["index"] = 21,
			}, -- [20]
		},
		["HideMTs"] = false,
		["BGOpacity"] = 0,
		["DefaultAlpha"] = 1,
		["EMScaling"] = 1,
		["DefaultColor"] = {
			["a"] = 0.5,
			["r"] = 0,
			["g"] = 0.1,
			["b"] = 0.9,
		},
		["ShowHP"] = 2,
		["NotifyGroupChange"] = 1,
		["HiddenGroups"] = {
		},
		["SORTTYPE"] = "group",
		["AggroNotifier"] = 1,
		["NotifyDebuffs"] = {
			1, -- [1]
			1, -- [2]
			1, -- [3]
			1, -- [4]
			1, -- [5]
			1, -- [6]
			1, -- [7]
			1, -- [8]
		},
		["ShowNumMTs"] = 2,
		["MemberHeight"] = 40,
		["ShowPTT"] = 1,
		["MenuLocked"] = 1,
		["PercentColor"] = {
			["r"] = 1,
			["g"] = 1,
			["b"] = 1,
		},
		["HideTooltip"] = false,
		["SpellCastDelay"] = 0.5,
	},
}
CT_RASets_ButtonPosition = 31
CT_RA_CustomPositions = {
}
CT_RA_Channel = nil
CT_RABoss_ScheduledActions = {
}
CT_RABoss_Save = {
	["Thaddius"] = {
		["status"] = 1,
	},
	["Ragnaros"] = {
		["status"] = 1,
	},
	["Anubisath Defenders"] = {
		["status"] = 1,
	},
	["Buru the Gorger"] = {
		["status"] = 1,
	},
	["Prophet Skeram"] = {
		["status"] = 1,
	},
	["Ebonroc"] = {
		["status"] = 1,
	},
	["Ossirian the Unscarred"] = {
		["status"] = 1,
	},
	["Heigan the Unclean"] = {
		["status"] = 1,
	},
	["Azuregos"] = {
		["status"] = 1,
	},
	["Anubisath Guardians"] = {
		["status"] = 1,
	},
	["Arlokk"] = {
		["status"] = 1,
	},
	["Twin Emperors"] = {
		["status"] = 1,
	},
	["Baron Geddon"] = {
		["status"] = 1,
	},
	["Viscidus"] = {
		["status"] = 1,
	},
	["Jeklik"] = {
		["status"] = 1,
	},
	["Gehennas"] = {
		["status"] = 1,
	},
	["Majordomo"] = {
		["status"] = 1,
	},
	["Maulgar"] = {
		["status"] = 1,
	},
	["Shazzrah"] = {
		["status"] = 1,
	},
	["Battleguard Sartura"] = {
		["status"] = 1,
	},
	["Nefarian"] = {
		["status"] = 1,
	},
	["Lucifron"] = {
		["status"] = 1,
	},
	["Vaelastrasz"] = {
		["status"] = 1,
	},
	["Moam"] = {
		["status"] = 1,
	},
	["Chromaggus"] = {
		["status"] = 1,
	},
	["Firemaw"] = {
		["status"] = 1,
	},
	["Gothik the Harvester"] = {
		["status"] = 1,
	},
	["Flamegor"] = {
		["status"] = 1,
	},
	["Hakkar"] = {
		["status"] = 1,
	},
	["Gluth"] = {
		["status"] = 1,
	},
	["Ayamiss the Hunter"] = {
		["status"] = 1,
	},
	["Grobbulus"] = {
		["status"] = 1,
	},
	["Jin'do"] = {
		["status"] = 1,
	},
	["Emeriss"] = {
		["status"] = 1,
	},
	["Magmadar"] = {
		["status"] = 1,
	},
	["Princess Huhuran"] = {
		["status"] = 1,
	},
	["General Rajaxx"] = {
		["status"] = 1,
	},
	["C'Thun"] = {
		["status"] = 1,
	},
	["Venoxis"] = {
		["status"] = 1,
	},
	["Bloodlord Mandokir"] = {
		["status"] = 1,
	},
	["Mar'li"] = {
		["status"] = 1,
	},
	["Onyxia"] = {
		["status"] = 1,
	},
}
CT_RABoss_Locations = {
	{
		"Naxxramas", -- [1]
		0, -- [2]
	}, -- [1]
	{
		"Ahn'Qiraj Temple", -- [1]
		0, -- [2]
	}, -- [2]
	{
		"Ahn'Qiraj Ruins", -- [1]
		0, -- [2]
	}, -- [3]
	{
		"Molten Core", -- [1]
		0, -- [2]
	}, -- [4]
	{
		"Blackwing's Lair", -- [1]
		0, -- [2]
	}, -- [5]
	{
		"Onyxia's Lair", -- [1]
		0, -- [2]
	}, -- [6]
	{
		"Zul'Gurub", -- [1]
		0, -- [2]
	}, -- [7]
	{
		"Outdoor", -- [1]
		0, -- [2]
	}, -- [8]
	{
		"Other", -- [1]
		0, -- [2]
	}, -- [9]
	{
		"Gruul's Lair", -- [1]
		0, -- [2]
	}, -- [10]
}
CT_RA_DebuffTemplates = nil
CT_RATarget = {
	["MainTanks"] = {
	},
}
CT_RATab_AutoPromotions = {
	["Nighttrace-Spinebreaker"] = true,
	["Twinkerzz-Alexstrasza"] = true,
	["Ardurren"] = true,
}
CT_RA_PTargets = {
}
CT_RATab_DefaultLootMethod = nil
CT_RA_Squelch = 0
