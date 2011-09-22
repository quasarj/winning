
ElkBuffBarsDB = {
	["account"] = {
		["maxcharges"] = {
			["TENCH"] = {
			},
			["DEBUFF"] = {
			},
			["BUFF"] = {
			},
		},
		["maxtimes"] = {
			["TENCH"] = {
				["Sharpened (+3 Damage)"] = 1422.978,
				["Reef Axe"] = 0,
			},
			["DEBUFF"] = {
				["Moonfire Rank 12"] = 11.651,
			},
			["BUFF"] = {
				["Righteous Fury "] = 78.173,
				["Sanctity Aura "] = 0,
				["Blessing of Wisdom Rank 3"] = 590.0990000000001,
				["Honorless Target "] = 29.931,
			},
		},
		["build"] = "8606",
	},
	["profiles"] = {
		["Default"] = {
			["detachedTooltip"] = {
			},
			["bargroups"] = {
				{
					["anchortext"] = "BUFFS & TRACKING",
					["growup"] = false,
					["barspacing"] = 0,
					["anchorshown"] = true,
					["y"] = 311.6429138183594,
					["x"] = 1666.999755859375,
					["filter"] = {
						["type"] = {
							["BUFF"] = true,
							["TRACKING"] = true,
						},
					},
					["target"] = "player",
					["bars"] = {
						["textBR"] = false,
						["textTRfont"] = "Friz Quadrata TT",
						["tooltipanchor"] = "default",
						["textBRfontsize"] = 14,
						["icon"] = "LEFT",
						["abbreviate_name"] = 0,
						["bgbar"] = true,
						["iconcount"] = true,
						["textTLalign"] = "LEFT",
						["textBLcolor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["textTR"] = "TIMELEFT",
						["bar"] = true,
						["textBL"] = false,
						["textBRfont"] = "Friz Quadrata TT",
						["textTL"] = "NAMERANKCOUNT",
						["barcolor"] = {
							0.3, -- [1]
							0.5, -- [2]
							1, -- [3]
							0.8, -- [4]
						},
						["textTLfont"] = "Friz Quadrata TT",
						["textTRcolor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["iconcountfont"] = "Arial Narrow",
						["height"] = 20,
						["textTRfontsize"] = 14,
						["iconcountanchor"] = "CENTER",
						["textBRcolor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
						},
						["timeformat"] = "CONDENSED",
						["barbgcolor"] = {
							0, -- [1]
							0.5, -- [2]
							1, -- [3]
							0.3, -- [4]
						},
						["textTLfontsize"] = 14,
						["barright"] = false,
						["textTLcolor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["iconcountcolor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["alpha"] = 1,
						["iconcountfontsize"] = 14,
						["textBLfont"] = "Friz Quadrata TT",
						["textBLfontsize"] = 14,
						["debufftypecolor"] = true,
						["width"] = 250,
						["bartexture"] = "Otravi",
						["padding"] = 1,
						["textBLalign"] = "LEFT",
						["timelessfull"] = false,
					},
					["id"] = 1,
					["sorting"] = "timeleft",
				}, -- [1]
				{
					["id"] = 2,
					["growup"] = false,
					["barspacing"] = 0,
					["anchorshown"] = true,
					["anchortext"] = "DEBUFFS",
					["y"] = 342.3572387695313,
					["x"] = 10.99997806549072,
					["filter"] = {
						["type"] = {
							["DEBUFF"] = true,
						},
					},
					["target"] = "player",
					["bars"] = {
						["textBR"] = false,
						["textTRfont"] = "Friz Quadrata TT",
						["tooltipanchor"] = "default",
						["textBRfontsize"] = 14,
						["icon"] = "LEFT",
						["abbreviate_name"] = 0,
						["bgbar"] = true,
						["iconcount"] = true,
						["textTLalign"] = "LEFT",
						["textBLcolor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["textTR"] = "TIMELEFT",
						["bar"] = true,
						["textBL"] = false,
						["textBRfont"] = "Friz Quadrata TT",
						["textTL"] = "NAMERANKCOUNT",
						["barcolor"] = {
							1, -- [1]
							0, -- [2]
							0, -- [3]
							0.8, -- [4]
						},
						["textTLfont"] = "Friz Quadrata TT",
						["textTRcolor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["iconcountfont"] = "Arial Narrow",
						["height"] = 20,
						["textTRfontsize"] = 14,
						["iconcountanchor"] = "CENTER",
						["textBRcolor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
						},
						["timeformat"] = "CONDENSED",
						["barbgcolor"] = {
							1, -- [1]
							0, -- [2]
							0, -- [3]
							0.3, -- [4]
						},
						["textTLfontsize"] = 14,
						["barright"] = false,
						["textTLcolor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["iconcountcolor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["alpha"] = 1,
						["iconcountfontsize"] = 14,
						["textBLfont"] = "Friz Quadrata TT",
						["textBLfontsize"] = 14,
						["debufftypecolor"] = true,
						["width"] = 250,
						["bartexture"] = "Otravi",
						["padding"] = 1,
						["textBLalign"] = "LEFT",
						["timelessfull"] = false,
					},
					["stickside"] = "",
					["sorting"] = "timeleft",
				}, -- [2]
				{
					["id"] = 3,
					["growup"] = false,
					["barspacing"] = 0,
					["stickto"] = 2,
					["anchortext"] = "TENCH",
					["anchorshown"] = false,
					["filter"] = {
						["type"] = {
							["TENCH"] = true,
						},
					},
					["target"] = "player",
					["bars"] = {
						["textBR"] = false,
						["textTRfont"] = "Friz Quadrata TT",
						["tooltipanchor"] = "default",
						["textBRfontsize"] = 14,
						["icon"] = "LEFT",
						["abbreviate_name"] = 0,
						["bgbar"] = true,
						["iconcount"] = true,
						["textTLalign"] = "LEFT",
						["textBLcolor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["textTR"] = "TIMELEFT",
						["bar"] = true,
						["textBL"] = false,
						["textBRfont"] = "Friz Quadrata TT",
						["textTL"] = "NAMERANKCOUNT",
						["barcolor"] = {
							0.5, -- [1]
							0, -- [2]
							0.5, -- [3]
							0.8, -- [4]
						},
						["textTLfont"] = "Friz Quadrata TT",
						["textTRcolor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["iconcountfont"] = "Arial Narrow",
						["height"] = 20,
						["textTRfontsize"] = 14,
						["iconcountanchor"] = "CENTER",
						["textBRcolor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
						},
						["timeformat"] = "CONDENSED",
						["barbgcolor"] = {
							0.5, -- [1]
							0, -- [2]
							0.5, -- [3]
							0.3, -- [4]
						},
						["textTLfontsize"] = 14,
						["barright"] = false,
						["textTLcolor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["iconcountcolor"] = {
							1, -- [1]
							1, -- [2]
							1, -- [3]
							1, -- [4]
						},
						["alpha"] = 1,
						["iconcountfontsize"] = 14,
						["textBLfont"] = "Friz Quadrata TT",
						["textBLfontsize"] = 14,
						["debufftypecolor"] = true,
						["width"] = 250,
						["bartexture"] = "Otravi",
						["padding"] = 1,
						["textBLalign"] = "LEFT",
						["timelessfull"] = false,
					},
					["stickside"] = "",
					["sorting"] = "timeleft",
				}, -- [3]
			},
		},
	},
}
