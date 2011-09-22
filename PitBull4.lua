
PitBull4DB = {
	["namespaces"] = {
		["LeaderIcon"] = {
		},
		["LibDualSpec-1.0"] = {
		},
		["RangeFader"] = {
		},
		["Border"] = {
		},
		["ComboPoints"] = {
		},
		["RoleIcon"] = {
		},
		["LuaTexts"] = {
			["profiles"] = {
				["Default"] = {
					["layouts"] = {
						["Normal"] = {
							["elements"] = {
								["Lua:Reputation"] = {
									["exists"] = true,
									["code"] = "local name,_,min,max,value = GetWatchedFactionInfo()\nif IsMouseOver() then\n  return name or ConfigMode() \nelse\n  local bar_cur,bar_max = value-min,max-min\n  return \"%d/%d (%s%%)\",bar_cur,bar_max,Percent(bar_cur,bar_max)\nend",
									["location"] = "center",
									["attach_to"] = "ReputationBar",
									["events"] = {
										["UNIT_FACTION"] = true,
										["UPDATE_FACTION"] = true,
									},
								},
								["Lua:Name"] = {
									["exists"] = true,
									["code"] = "return '%s %s%s%s',Name(unit),Angle(AFK(unit) or DND(unit))",
									["location"] = "left",
									["attach_to"] = "HealthBar",
									["events"] = {
										["PLAYER_FLAGS_CHANGED"] = true,
										["UNIT_NAME_UPDATE"] = true,
									},
								},
								["Lua:Threat"] = {
									["exists"] = true,
									["code"] = "local unit_a,unit_b = ThreatPair(unit)\nif unit_a and unit_b then\n  local _,_,percent = UnitDetailedThreatSituation(unit_a, unit_b)\n  if percent and percent ~= 0 then\n    return \"%s%%\",Round(percent,1)\n  end\nend\nreturn ConfigMode()",
									["location"] = "center",
									["attach_to"] = "ThreatBar",
									["events"] = {
										["UNIT_THREAT_LIST_UPDATE"] = true,
										["UNIT_THREAT_SITUATION_UPDATE"] = true,
									},
								},
								["Lua:Experience"] = {
									["exists"] = true,
									["code"] = "local cur, max, rest = XP(unit), MaxXP(unit), RestXP(unit)\nif rest then\n  return \"%s/%s (%s%%) R: %s%%\",cur,max,Percent(cur,max),Percent(rest,max)\nelse\n  return \"%s/%s (%s%%)\",cur,max,Percent(cur,max)\nend",
									["location"] = "center",
									["attach_to"] = "ExperienceBar",
									["events"] = {
										["UNIT_PET_EXPERIENCE"] = true,
										["PLAYER_XP_UPDATE"] = true,
									},
								},
								["Lua:Druid mana"] = {
									["exists"] = true,
									["code"] = "if UnitPowerType(unit) ~= 0 then\n  return \"%s/%s\",Power(unit,0),MaxPower(unit,0)\nend",
									["location"] = "center",
									["attach_to"] = "DruidManaBar",
									["events"] = {
										["UNIT_MAXPOWER"] = true,
										["UNIT_POWER"] = true,
									},
								},
								["Lua:Cast time"] = {
									["exists"] = true,
									["code"] = "local cast_data = CastData(unit)\nif cast_data then\n  if not cast_data.stop_time then\n    local delay,end_time = cast_data.delay, cast_data.end_time\n    local duration\n    if end_time then\n      duration = end_time - GetTime()\n    end\n    if delay and delay ~= 0 then\n      local delay_sign = '+'\n      if delay < 0 then\n        delay_sign = ''\n      end\n      if duration and duration >= 0 then\n        return \"|cffff0000%s%s|r %.1f\",delay_sign,Round(delay,1),duration\n      else\n        return \"|cffff0000%s%s|r\",delay_sign,Round(delay,1)\n      end\n    elseif duration and duration >= 0 then\n      return \"%.1f\",duration\n    end\n  end\nend\nreturn ConfigMode()",
									["location"] = "right",
									["attach_to"] = "CastBar",
									["events"] = {
										["UNIT_SPELLCAST_SUCCEEDED"] = true,
										["UNIT_SPELLCAST_START"] = true,
										["UNIT_SPELLCAST_CHANNEL_START"] = true,
										["UNIT_SPELLCAST_DELAYED"] = true,
										["UNIT_SPELLCAST_CHANNEL_STOP"] = true,
										["UNIT_SPELLCAST_CHANNEL_UPDATE"] = true,
										["UNIT_SPELLCAST_STOP"] = true,
										["UNIT_SPELLCAST_INTERRUPTED"] = true,
										["UNIT_SPELLCAST_FAILED"] = true,
									},
								},
								["Lua:Health"] = {
									["exists"] = true,
									["code"] = "local s = Status(unit)\nif s then\n  return s\nend\nlocal cur, max = HP(unit), MaxHP(unit)\nreturn \"%s/%s || %s%%\",Short(cur,true),Short(max,true),Percent(cur,max)",
									["location"] = "right",
									["attach_to"] = "HealthBar",
									["events"] = {
										["UNIT_HEALTH"] = true,
										["UNIT_AURA"] = true,
										["UNIT_MAXHEALTH"] = true,
									},
								},
								["Lua:PVPTimer"] = {
									["location"] = "out_right_top",
									["events"] = {
										["PLAYER_FLAGS_CHANGED"] = true,
									},
									["exists"] = true,
									["code"] = "if unit == \"player\" then\n  local pvp = PVPDuration()\n  if pvp then\n    return \"|cffff0000%s|r\",FormatDuration(pvp)\n  end\nend",
								},
								["Lua:Class"] = {
									["exists"] = true,
									["code"] = "local dr,dg,db = DifficultyColor(unit)\nlocal form = DruidForm(unit)\nlocal classification = Classification(unit)\nif UnitIsPlayer(unit) or (not UnitIsFriend(unit,\"player\") and not IsPet(unit)) then\n  local cr,cg,cb = ClassColor(unit)\n  if form then\n    return \"%s%s|cff%02x%02x%02x%s|r |cff%02x%02x%02x%s|r (%s) %s\",classification or '',classification and ' ' or '',dr,dg,db,Level(unit),cr,cg,cb,Class(unit),form,SmartRace(unit) or ''\n  else\n    return \"%s%s|cff%02x%02x%02x%s|r |cff%02x%02x%02x%s|r %s\",classification or '',classification and ' ' or '',dr,dg,db,Level(unit),cr,cg,cb,Class(unit),SmartRace(unit) or ''\n  end\nelse\n  if form then\n    return \"%s%s|cff%02x%02x%02x%s|r (%s) %s\",classification or '',classification and ' ' or '',dr,dg,db,Level(unit),form,SmartRace(unit) or ''\n  else\n    return \"%s%s|cff%02x%02x%02x%s|r %s\",classification or '',classification and ' ' or '',dr,dg,db,Level(unit),SmartRace(unit) or ''\n  end\nend",
									["location"] = "left",
									["attach_to"] = "PowerBar",
									["events"] = {
										["UNIT_LEVEL"] = true,
										["UNIT_CLASSIFICATION_CHANGED"] = true,
										["UNIT_AURA"] = true,
									},
								},
								["Lua:Cast"] = {
									["exists"] = true,
									["code"] = "local cast_data = CastData(unit)\nif cast_data then\n  local spell,stop_message,target = cast_data.spell,cast_data.stop_message,cast_data.target\n  local stop_time,stop_duration = cast_data.stop_time\n  if stop_time then\n    stop_duration = GetTime() - stop_time\n  end\n  Alpha(-(stop_duration or 0) + 1)\n  if stop_message then\n    return stop_message\n  elseif target then\n    return \"%s (%s)\",spell,target\n  else\n    return spell \n  end\nend\nreturn ConfigMode()",
									["location"] = "left",
									["attach_to"] = "CastBar",
									["events"] = {
										["UNIT_SPELLCAST_DELAYED"] = true,
										["UNIT_SPELLCAST_FAILED"] = true,
										["UNIT_SPELLCAST_CHANNEL_UPDATE"] = true,
										["UNIT_SPELLCAST_INTERRUPTED"] = true,
										["UNIT_SPELLCAST_CHANNEL_STOP"] = true,
										["UNIT_SPELLCAST_STOP"] = true,
										["UNIT_SPELLCAST_START"] = true,
										["UNIT_SPELLCAST_CHANNEL_START"] = true,
									},
								},
								["Lua:Power"] = {
									["exists"] = true,
									["code"] = "local max = MaxPower(unit)\nif max > 0 then\n  return \"%s/%s\",Power(unit),max\nend",
									["location"] = "right",
									["attach_to"] = "PowerBar",
									["events"] = {
										["UNIT_MAXPOWER"] = true,
										["UNIT_POWER"] = true,
									},
								},
							},
							["first"] = false,
						},
					},
				},
			},
		},
		["HostilityFader"] = {
		},
		["MasterLooterIcon"] = {
		},
		["CombatText"] = {
		},
		["ReadyCheckIcon"] = {
		},
		["Portrait"] = {
		},
		["ExperienceBar"] = {
		},
		["RaidTargetIcon"] = {
		},
		["Eclipse"] = {
		},
		["CastBar"] = {
		},
		["Aura"] = {
		},
		["DruidManaBar"] = {
		},
		["PowerBar"] = {
		},
		["HideBlizzard"] = {
		},
		["ReputationBar"] = {
		},
		["Aggro"] = {
		},
		["HealthBar"] = {
		},
		["CombatIcon"] = {
		},
		["ManaSpark"] = {
		},
		["VoiceIcon"] = {
		},
		["VisualHeal"] = {
		},
		["Background"] = {
		},
		["CombatFader"] = {
		},
		["Highlight"] = {
		},
		["CastBarLatency"] = {
		},
		["BlankSpace"] = {
			["profiles"] = {
				["Default"] = {
					["layouts"] = {
						["Normal"] = {
							["elements"] = {
								["Default"] = {
									["exists"] = true,
								},
							},
							["first"] = false,
						},
					},
				},
			},
		},
		["ThreatBar"] = {
		},
		["RestIcon"] = {
		},
		["Sounds"] = {
		},
		["PvPIcon"] = {
		},
	},
	["profileKeys"] = {
		["Aset - Auchindoun"] = "Default",
		["Meowfest - Auchindoun"] = "Default",
		["Sadr - Auchindoun"] = "Default",
	},
	["profiles"] = {
		["Default"] = {
			["class_order"] = {
				"WARRIOR", -- [1]
				"DEATHKNIGHT", -- [2]
				"PALADIN", -- [3]
				"PRIEST", -- [4]
				"SHAMAN", -- [5]
				"DRUID", -- [6]
				"ROGUE", -- [7]
				"MAGE", -- [8]
				"WARLOCK", -- [9]
				"HUNTER", -- [10]
			},
			["made_groups"] = true,
			["units"] = {
				["targettargettarget"] = {
					["position_x"] = -491.7943003086163,
					["position_y"] = -8.228570207557368,
				},
				["focustarget"] = {
				},
				["pet"] = {
					["position_x"] = 64.00002249236331,
					["position_y"] = -1.142935946458579,
				},
				["player"] = {
					["position_x"] = -489.5999453435571,
					["position_y"] = 265.8285329826962,
				},
				["focus"] = {
				},
				["target"] = {
					["position_x"] = -494.3872559394073,
					["position_y"] = 153.1191924454337,
				},
				["targettarget"] = {
					["position_x"] = -502.8114557261375,
					["position_y"] = -142.6743147262212,
				},
			},
			["groups"] = {
				["Party pets"] = {
					["enabled"] = true,
					["unit_group"] = "partypet",
				},
				["Party"] = {
					["enabled"] = true,
				},
			},
			["frame_snap"] = false,
		},
	},
}
