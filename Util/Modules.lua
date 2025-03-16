  function CheckQuest()
	MyLevel = game:GetService("Players").LocalPlayer.Data.Level.Value
	if World1 then
	  if ((MyLevel == 1) or (MyLevel <= 9)) then
		Mon, NameQuest, LevelQuest = "Bandit", "BanditQuest1", 1
		MonPos, QuestPos = CFrame.new(1046, 27, 1561), CFrame.new(1059, 15, 1550)
	  elseif ((MyLevel == 10) or (MyLevel <= 14)) then
		Mon, NameQuest, LevelQuest = "Monkey", "JungleQuest", 1
		MonPos, QuestPos = CFrame.new(-1449, 68, 11), CFrame.new(-1598, 36, 153)
	  elseif ((MyLevel == 15) or (MyLevel <= 29)) then
	  	if (CheckMon("The Gorilla King") and (MyLevel >= 20)) then
			Mon, NameQuest, LevelQuest = "The Gorilla King", "JungleQuest", 3
			MonPos, QuestPos = CFrame.new(-1130, 40, -525), CFrame.new(-1598, 36, 153)
	  	else
			Mon, NameQuest, LevelQuest = "Gorilla", "JungleQuest", 2
			MonPos, QuestPos = CFrame.new(-1130, 40, -525), CFrame.new(-1598, 36, 153)
	  	end
	  elseif ((MyLevel == 30) or (MyLevel <= 39)) then
		Mon, NameQuest, LevelQuest = "Pirate", "BuggyQuest1", 1
		MonPos, QuestPos = CFrame.new(-1104, 14, 3896), CFrame.new(-1141, 4, 3832)
	  elseif ((MyLevel == 40) or (MyLevel <= 59)) then
		if (CheckMon("Bobby") and (MyLevel >= 55)) then
		  	Mon, NameQuest, LevelQuest = "Bobby", "BuggyQuest1", 3
		  	MonPos, QuestPos = CFrame.new(-1075, 22, 4487), CFrame.new(-1141, 4, 3832)
		else
		 	Mon, NameQuest, LevelQuest = "Brute", "BuggyQuest1", 2
			MonPos, QuestPos = CFrame.new(-1075, 22, 4487), CFrame.new(-1141, 4, 3832)
		end
	  elseif ((MyLevel == 60) or (MyLevel <= 74)) then
		Mon, NameQuest, LevelQuest = "Desert Bandit", "DesertQuest", 1
		MonPos, QuestPos = CFrame.new(1054, 52, 4491), CFrame.new(894, 5, 4392)
	  elseif ((MyLevel == 75) or (MyLevel <= 89)) then
		Mon, NameQuest, LevelQuest = "Desert Officer", "DesertQuest", 2
		MonPos, QuestPos = CFrame.new(1608, 9, 4371), CFrame.new(894, 5, 4392)
	  elseif ((MyLevel == 90) or (MyLevel <= 99)) then
		Mon, NameQuest, LevelQuest = "Snow Bandit", "SnowQuest", 1
		MonPos, QuestPos = CFrame.new(1420, 120, -1412), CFrame.new(1390, 88, -1299)
	  elseif ((MyLevel == 100) or (MyLevel <= 119)) then
		if (CheckMon("Yeti") and (MyLevel >= 105)) then
		  	Mon, NameQuest, LevelQuest = "Yeti", "SnowQuest", 3
		  	MonPos, QuestPos = CFrame.new(1202, 145, -1550), CFrame.new(1390, 88, -1299)
		else
		  	Mon, NameQuest, LevelQuest = "Snowman", "SnowQuest", 2
		  	MonPos, QuestPos = CFrame.new(1202, 145, -1550), CFrame.new(1390, 88, -1299)
		end
	  elseif ((MyLevel == 120) or (MyLevel <= 149)) then
		if (CheckMon("Vice Admiral") and (MyLevel >= 130)) then
		  	Mon, NameQuest, LevelQuest = "Vice Admiral", "MarineQuest2", 2
		  	MonPos, QuestPos = CFrame.new(-4881, 23, 4274), CFrame.new(-5040, 27, 4325)
		else
		  	Mon, NameQuest, LevelQuest = "Chief Petty Officer", "MarineQuest2", 1
		  	MonPos, QuestPos = CFrame.new(-4881, 23, 4274), CFrame.new(-5040, 27, 4325)
		end
	  elseif ((MyLevel == 150) or (MyLevel <= 174)) then
		Mon, NameQuest, LevelQuest = "Sky Bandit", "SkyQuest", 1
		MonPos, QuestPos = CFrame.new(-4953, 296, -2899), CFrame.new(-4840, 716, -2620)
	  elseif ((MyLevel == 175) or (MyLevel <= 189)) then
		Mon, NameQuest, LevelQuest = "Dark Master", "SkyQuest", 2
		MonPos, QuestPos = CFrame.new(-5260, 391, -2230), CFrame.new(-4840, 716, -2620)
	  elseif ((MyLevel == 190) or (MyLevel <= 209)) then
		Mon, NameQuest, LevelQuest = "Prisoner", "PrisonerQuest", 1
		MonPos, QuestPos = CFrame.new(5099, -0, 474), CFrame.new(5309, 2, 475)
	  elseif ((MyLevel == 210) or (MyLevel <= 249)) then
		if (CheckMon("Swan") and (MyLevel >= 240)) then
		 	Mon, NameQuest, LevelQuest = "Swan", "ImpelQuest", 3
			MonPos, QuestPos = CFrame.new(5655, 16, 866), CFrame.new(5191, 4, 692)
		elseif (CheckMon("Chief Warden") and (MyLevel >= 230)) then
		  	Mon, NameQuest, LevelQuest = "Chief Warden", "ImpelQuest", 2
		  	MonPos, QuestPos = CFrame.new(5655, 16, 866), CFrame.new(5191, 4, 692)
		elseif (CheckMon("Warden") and (MyLevel >= 220)) then
		  	Mon, NameQuest, LevelQuest = "Warden", "ImpelQuest", 1
		  	MonPos, QuestPos = CFrame.new(5655, 16, 866), CFrame.new(5191, 4, 692)
		else
		  	Mon, NameQuest, LevelQuest = "Dangerous Prisoner", "PrisonerQuest", 2
		  	MonPos, QuestPos = CFrame.new(5655, 16, 866), CFrame.new(5309, 2, 475)
		end
	  elseif ((MyLevel == 250) or (MyLevel <= 274)) then
		Mon, NameQuest, LevelQuest = "Toga Warrior", "ColosseumQuest", 1
		MonPos, QuestPos = CFrame.new(-1820, 52, -2741), CFrame.new(-1580, 6, -2986)
	  elseif ((MyLevel == 275) or (MyLevel <= 299)) then
		Mon, NameQuest, LevelQuest = "Gladiator",  "ColosseumQuest", 2
		MonPos, QuestPos = CFrame.new(-1275, 58, -3188), CFrame.new(-1580, 6, -2986)
	  elseif ((MyLevel == 300) or (MyLevel <= 324)) then
		Mon, NameQuest, LevelQuest = "Military Soldier", "MagmaQuest", 1
		MonPos, QuestPos = CFrame.new(-5411, 11, 8454), CFrame.new(-5313, 11, 8515)
	  elseif ((MyLevel == 325) or (MyLevel <= 374)) then
		if (CheckMon("Magma Admiral") and (MyLevel >= 350)) then
		  	Mon, NameQuest, LevelQuest = "Magma Admiral", "MagmaQuest", 3
		  	MonPos, QuestPos = CFrame.new(-5803, 86, 8829), CFrame.new(-5313, 11, 8515)
		else
		  	Mon, NameQuest, LevelQuest = "Military Spy", "MagmaQuest", 2
		  	MonPos, QuestPos = CFrame.new(-5803, 86, 8829), CFrame.new(-5313, 11, 8515)
		end
	  elseif ((MyLevel == 375) or (MyLevel <= 399)) then
		Mon, NameQuest, LevelQuest = "Fishman Warrior", "FishmanQuest", 1
		MonPos, QuestPos = CFrame.new(60878, 18, 1544), CFrame.new(61123, 18, 1569)
	  elseif ((MyLevel == 400) or (MyLevel <= 449)) then
		if (CheckMon("Fishman Lord") and (MyLevel >= 425)) then
		  	Mon, NameQuest, LevelQuest = "Fishman Lord", "FishmanQuest", 3
		  	MonPos, QuestPos = CFrame.new(61923, 18, 1494), CFrame.new(61123, 18, 1569)
		else
		  	Mon, NameQuest, LevelQuest = "Fishman Commando", "FishmanQuest", 2
		  	MonPos, QuestPos = CFrame.new(61923, 18, 1494), CFrame.new(61123, 18, 1569)
		end
	  elseif ((MyLevel == 450) or (MyLevel <= 474)) then
		Mon, NameQuest, LevelQuest = "God's Guard", "SkyExp1Quest", 1
		MonPos, QuestPos = CFrame.new(-4710, 845, -1927), CFrame.new(-4722, 844, -1950)
	  elseif ((MyLevel == 475) or (MyLevel <= 524)) then
		if (CheckMon("Wysper") and (MyLevel >= 500)) then
		  	Mon, NameQuest, LevelQuest = "Wysper", "SkyExp1Quest", 3
		  	MonPos, QuestPos = CFrame.new(-7678, 5566, -497), CFrame.new(-7859, 5544, -381)
		else
		  	Mon, NameQuest, LevelQuest = "Shanda", "SkyExp1Quest", 2
		  	MonPos, QuestPos = CFrame.new(-7678, 5566, -497), CFrame.new(-7859, 5544, -381)
		end
	  elseif ((MyLevel == 525) or (MyLevel <= 549)) then
		Mon, NameQuest, LevelQuest = "Royal Squad", "SkyExp2Quest", 1
		MonPos, QuestPos = CFrame.new(-7624, 5658, -1467), CFrame.new(-7907, 5635, -1412)
	  elseif ((MyLevel == 550) or (MyLevel <= 624)) then
		if (CheckMon("Thunder God") and (MyLevel >= 575)) then
		  	Mon, NameQuest, LevelQuest = "Thunder God", "SkyExp2Quest", 3
		  	MonPos, QuestPos = CFrame.new(-7837, 5646, -1791), CFrame.new(-7907, 5635, -1412)
		else
		 	Mon, NameQuest, LevelQuest = "Royal Soldier", "SkyExp2Quest", 2
		  	MonPos, QuestPos = CFrame.new(-7837, 5646, -1791), CFrame.new(-7907, 5635, -1412)
		end
	  elseif ((MyLevel >= 625) and (MyLevel <= 649)) then
		Mon, NameQuest, LevelQuest = "Galley Pirate", "FountainQuest", 1
		MonPos, QuestPos = CFrame.new(5551, 79, 3930), CFrame.new(5260, 37, 4050)
	  elseif (MyLevel >= 650) then
		if (CheckMon("Cyborg") and (MyLevel >= 675)) then
		  	Mon, NameQuest, LevelQuest = "Cyborg", "FountainQuest", 3
		  	MonPos, QuestPos = CFrame.new(5551, 79, 3930), CFrame.new(5260, 37, 4050)
		else
		  	Mon, NameQuest, LevelQuest = "Galley Captain", "FountainQuest", 2
		  	MonPos, QuestPos = CFrame.new(5442, 43, 4950), CFrame.new(5260, 37, 4050)
		end
	  end
	elseif World2 then
	  if ((MyLevel == 700) or (MyLevel <= 724)) then
		Mon, NameQuest, LevelQuest = "Raider", "Area1Quest", 1
		MonPos, QuestPos = CFrame.new(-728, 53, 2346), CFrame.new(-430, 72, 1836)
	  elseif ((MyLevel == 725) or (MyLevel <= 774)) then
		if (CheckMon("Diamond") and (MyLevel >= 750)) then
		  	Mon, NameQuest, LevelQuest = "Diamond", "Area1Quest", 3
		  	MonPos, QuestPos = CFrame.new(-1004, 80, 1425), CFrame.new(-430, 72, 1836)
		else
		  	Mon, NameQuest, LevelQuest = "Mercenary", "Area1Quest", 2
		  	MonPos, QuestPos = CFrame.new(-1004, 80, 1425), CFrame.new(-430, 72, 1836)
		end
	  elseif ((MyLevel == 775) or (MyLevel <= 799)) then
		Mon, NameQuest, LevelQuest = "Swan Pirate", "Area2Quest", 1
		MonPos, QuestPos = CFrame.new(1069, 138, 1322), CFrame.new(638, 72, 918)
	  elseif ((MyLevel == 800) or (MyLevel <= 874)) then
		if (CheckMon("Jeremy") and (MyLevel >= 850)) then
		  	Mon, NameQuest, LevelQuest = "Jeremy", "Area2Quest", 3
		  	MonPos, QuestPos = CFrame.new(73, 82, -27), CFrame.new(633, 73, 919)
		else
		  	Mon, NameQuest, LevelQuest = "Factory Staff", "Area2Quest", 2
		  	MonPos, QuestPos = CFrame.new(73, 82, -27), CFrame.new(633, 73, 919)
		end
	  elseif ((MyLevel == 875) or (MyLevel <= 899)) then
		Mon, NameQuest, LevelQuest = "Marine Lieutenant", "MarineQuest3", 1
		MonPos, QuestPos = CFrame.new(-2821, 76, -3070), CFrame.new(-2441, 72, -3216)
	  elseif ((MyLevel == 900) or (MyLevel <= 949)) then
		if (CheckMon("Fajita") and (MyLevel >= 925)) then
		  	Mon, NameQuest, LevelQuest = "Fajita", "MarineQuest3", 3
		  	MonPos, QuestPos = CFrame.new(-1861, 80, -3255), CFrame.new(-2441, 72, -3216)
		else
		  	Mon, NameQuest, LevelQuest = "Marine Captain", "MarineQuest3", 2
		  	MonPos, QuestPos = CFrame.new(-1861, 80, -3255), CFrame.new(-2441, 72, -3216)
		end
	  elseif ((MyLevel == 950) or (MyLevel <= 974)) then
		Mon, NameQuest, LevelQuest = "Zombie", "ZombieQuest", 1
		MonPos, QuestPos = CFrame.new(-5658, 79, -929), CFrame.new(-5497, 48, -795)
	  elseif ((MyLevel == 975) or (MyLevel <= 999)) then
		Mon, NameQuest, LevelQuest = "Vampire", "ZombieQuest", 2
		MonPos, QuestPos = CFrame.new(-6038, 32, -1341), CFrame.new(-5497, 48, -795)
	  elseif ((MyLevel == 1000) or (MyLevel <= 1049)) then
		Mon, NameQuest, LevelQuest = "Snow Trooper", "SnowMountainQuest", 1
		MonPos, QuestPos = CFrame.new(549, 427, -5564), CFrame.new(610, 400, -5372)
	  elseif ((MyLevel == 1050) or (MyLevel <= 1099)) then
		Mon, NameQuest, LevelQuest = "Winter Warrior", "SnowMountainQuest", 2
		MonPos, QuestPos = CFrame.new(1143, 476, -5200), CFrame.new(610, 400, -5372)
	  elseif ((MyLevel == 1100) or (MyLevel <= 1124)) then
		Mon, NameQuest, LevelQuest = "Lab Subordinate", "IceSideQuest", 1
		MonPos, QuestPos = CFrame.new(-5707, 16, -4513), CFrame.new(-6064, 15, -4903)
	  elseif ((MyLevel == 1125) or (MyLevel <= 1174)) then
		Mon, NameQuest, LevelQuest = "Horned Warrior", "IceSideQuest", 2
		MonPos, QuestPos = CFrame.new(-6341, 16, -5723), CFrame.new(-6064, 15, -4903)
	  elseif ((MyLevel == 1175) or (MyLevel <= 1199)) then
		Mon, NameQuest, LevelQuest = "Magma Ninja", "FireSideQuest", 1
		MonPos, QuestPos = CFrame.new(-5449, 77, -5808), CFrame.new(-5428, 15, -5300)
	  elseif ((MyLevel == 1200) or (MyLevel <= 1249)) then
		Mon, NameQuest, LevelQuest = "Lava Pirate", "FireSideQuest", 2
		MonPos, QuestPos = CFrame.new(-5213, 50, -4701), CFrame.new(-5428, 15, -5300)
	  elseif ((MyLevel == 1250) or (MyLevel <= 1274)) then
		Mon, NameQuest, LevelQuest = "Ship Deckhand", "ShipQuest1", 1
		MonPos, QuestPos = CFrame.new(1212, 151, 33059), CFrame.new(1038, 125, 32912)
	  elseif ((MyLevel == 1275) or (MyLevel <= 1299)) then
		Mon, NameQuest, LevelQuest = "Ship Engineer", "ShipQuest1", 2
		MonPos, QuestPos = CFrame.new(919, 44, 32780), CFrame.new(1038, 125, 32912)
	  elseif ((MyLevel == 1300) or (MyLevel <= 1324)) then
		Mon, NameQuest, LevelQuest = "Ship Steward", "ShipQuest2", 1
		MonPos, QuestPos = CFrame.new(919, 130, 33436), CFrame.new(969, 125, 33244)
	  elseif ((MyLevel == 1325) or (MyLevel <= 1349)) then
		Mon, NameQuest, LevelQuest = "Ship Officer", "ShipQuest2", 2
		MonPos, QuestPos = CFrame.new(1036, 181, 33316), CFrame.new(969, 125, 33244)
	  elseif ((MyLevel == 1350) or (MyLevel <= 1374)) then
		Mon, NameQuest, LevelQuest = "Arctic Warrior", "FrostQuest", 1
		MonPos, QuestPos = CFrame.new(5966, 63, -6180), CFrame.new(5668, 27, -6486)
	  elseif ((MyLevel == 1375) or (MyLevel <= 1424)) then
		Mon, NameQuest, LevelQuest = "Snow Lurker", "FrostQuest", 2	
		MonPos, QuestPos = CFrame.new(5407, 69, -6881), CFrame.new(5668, 27, -6486)
	  elseif ((MyLevel == 1425) or (MyLevel <= 1449)) then
		Mon, NameQuest, LevelQuest = "Sea Soldier", "ForgottenQuest", 1
		MonPos, QuestPos = CFrame.new(-3028, 65, -9775), CFrame.new(-3054, 236, -10143)
	  elseif (MyLevel >= 1450) then
		Mon, NameQuest, LevelQuest = "Water Fighter", "ForgottenQuest", 2
		MonPos, QuestPos = CFrame.new(-3353, 285, -10535), CFrame.new(-3054, 236, -10143)
	  end
	elseif World3 then
	  if ((MyLevel == 1500) or (MyLevel <= 1524)) then
		Mon, NameQuest, LevelQuest = "Pirate Millionaire", "PiratePortQuest", 1
		MonPos, QuestPos = CFrame.new(-246, 47, 5584), CFrame.new(-290, 43, 5582)
	  elseif ((MyLevel == 1525) or (MyLevel <= 1574)) then
		Mon, NameQuest, LevelQuest = "Pistol Billionaire", "PiratePortQuest", 2
		MonPos, QuestPos = CFrame.new(-187, 86, 6014), CFrame.new(-290, 43, 5582)
	  elseif ((MyLevel == 1575) or (MyLevel <= 1599)) then
		Mon, NameQuest, LevelQuest = "Dragon Crew Warrior", "DragonCrewQuest", 1
		MonPos, QuestPos = CFrame.new(6141, 51, -1341), CFrame.new(5833, 52, -1102)
	  elseif ((MyLevel == 1600) or (MyLevel <= 1624)) then
		Mon, NameQuest, LevelQuest = "Dragon Crew Archer", "DragonCrewQuest", 2
		MonPos, QuestPos = CFrame.new(6616, 442, 446), CFrame.new(5833, 52, -1103)
	  elseif ((MyLevel == 1625) or (MyLevel <= 1649)) then
		Mon, NameQuest, LevelQuest = "Hydra Enforcer", "VenomCrewQuest", 1
		MonPos, QuestPos = CFrame.new(4704, 1044, 680), CFrame.new(5211, 1004, 756)
	  elseif ((MyLevel == 1650) or (MyLevel <= 1699)) then
		Mon, NameQuest, LevelQuest = "Venomous Assailant", "VenomCrewQuest", 2
		MonPos, QuestPos = CFrame.new(4731, 1090, 1078), CFrame.new(5211, 1004, 756)
	  elseif ((MyLevel == 1700) or (MyLevel <= 1724)) then
		Mon, NameQuest, LevelQuest = "Marine Commodore", "MarineTreeIsland", 1
		MonPos, QuestPos = CFrame.new(2286, 73, -7160), CFrame.new(2181, 28, -6742)
	  elseif ((MyLevel == 1725) or (MyLevel <= 1774)) then
		Mon, NameQuest, LevelQuest = "Marine Rear Admiral", "MarineTreeIsland", 2
		MonPos, QuestPos = CFrame.new(3657, 161, -7002), CFrame.new(2180, 29, -6740)
	  elseif ((MyLevel == 1775) or (MyLevel <= 1799)) then
		Mon, NameQuest, LevelQuest = "Fishman Raider", "DeepForestIsland3", 1
		MonPos, QuestPos = CFrame.new(-10408, 332, -8369), CFrame.new(-10582, 331, -8761)
	  elseif ((MyLevel == 1800) or (MyLevel <= 1824)) then
		Mon, NameQuest, LevelQuest = "Fishman Captain", "DeepForestIsland3", 2
		MonPos, QuestPos = CFrame.new(-10995, 352, -9002), CFrame.new(-10582, 331, -8761)
	  elseif ((MyLevel == 1825) or (MyLevel <= 1849)) then
		Mon, NameQuest, LevelQuest = "Forest Pirate", "DeepForestIsland", 1
		MonPos, QuestPos = CFrame.new(-13274, 332, -7770), CFrame.new(-13234, 332, -7625)
	  elseif ((MyLevel == 1850) or (MyLevel <= 1899)) then
		Mon, NameQuest, LevelQuest = "Mythological Pirate", "DeepForestIsland", 2
		MonPos, QuestPos = CFrame.new(-13681, 501, -6991), CFrame.new(-13234, 332, -7625)
	  elseif ((MyLevel == 1900) or (MyLevel <= 1924)) then
		Mon, NameQuest, LevelQuest = "Jungle Pirate", "DeepForestIsland2", 1
		MonPos, QuestPos = CFrame.new(-12256, 332, -10486), CFrame.new(-12680, 390, -9902)
	  elseif ((MyLevel == 1925) or (MyLevel <= 1974)) then
		Mon, NameQuest, LevelQuest = "Musketeer Pirate", "DeepForestIsland2", 2
		MonPos, QuestPos = CFrame.new(-13458, 392, -9860), CFrame.new(-12680, 390, -9902)
	  elseif ((MyLevel == 1975) or (MyLevel <= 1999)) then
		Mon, NameQuest, LevelQuest = "Reborn Skeleton", "HauntedQuest1", 1
		MonPos, QuestPos = CFrame.new(-8764, 166, 6160), CFrame.new(-9480, 141, 5566)
	  elseif ((MyLevel == 2000) or (MyLevel <= 2024)) then
		Mon, NameQuest, LevelQuest = "Living Zombie", "HauntedQuest1", 2
		MonPos, QuestPos = CFrame.new(-10144, 139, 5838), CFrame.new(-9480, 141, 5566)
	  elseif ((MyLevel == 2025) or (MyLevel <= 2049)) then
		Mon, NameQuest, LevelQuest = "Demonic Soul", "HauntedQuest2", 1
		MonPos, QuestPos = CFrame.new(-9506, 172, 6159), CFrame.new(-9517, 172, 6078)
	  elseif ((MyLevel == 2050) or (MyLevel <= 2074)) then
		Mon, NameQuest, LevelQuest = "Posessed Mummy", "HauntedQuest2", 2
		MonPos, QuestPos = CFrame.new(-9582, 6, 6205), CFrame.new(-9517, 172, 6078)
	  elseif ((MyLevel == 2075) or (MyLevel <= 2099)) then
		Mon, NameQuest, LevelQuest = "Peanut Scout", "NutsIslandQuest", 1
		MonPos, QuestPos = CFrame.new(-2143, 48, -10030), CFrame.new(-2104, 38, -10194)
	  elseif ((MyLevel == 2100) or (MyLevel <= 2124)) then
		Mon, NameQuest, LevelQuest = "Peanut President", "NutsIslandQuest", 2
		MonPos, QuestPos = CFrame.new(-1859, 38, -10422), CFrame.new(-2104, 38, -10194)
	  elseif ((MyLevel == 2125) or (MyLevel <= 2149)) then
		Mon, NameQuest, LevelQuest = "Ice Cream Chef", "IceCreamIslandQuest", 1
		MonPos, QuestPos = CFrame.new(-872, 66, -10920), CFrame.new(-821, 66, -10966)
	  elseif ((MyLevel == 2150) or (MyLevel <= 2199)) then
		Mon, NameQuest, LevelQuest = "Ice Cream Commander", "IceCreamIslandQuest", 2
		MonPos, QuestPos = CFrame.new(-558, 112, -11291), CFrame.new(-821, 66, -10966)
	  elseif ((MyLevel == 2200) or (MyLevel <= 2224)) then
		Mon, NameQuest, LevelQuest = "Cookie Crafter", "CakeQuest1", 1
		MonPos, QuestPos = CFrame.new(-2374, 38, -12125), CFrame.new(-2021, 38, -12029)
	  elseif ((MyLevel == 2225) or (MyLevel <= 2249)) then
		Mon, NameQuest, LevelQuest = "Cake Guard", "CakeQuest1", 2
		MonPos, QuestPos = CFrame.new(-1598, 44, -12245), CFrame.new(-2021, 38, -12029)
	  elseif ((MyLevel == 2250) or (MyLevel <= 2274)) then
		Mon, NameQuest, LevelQuest = "Baking Staff", "CakeQuest2", 1
		MonPos, QuestPos = CFrame.new(-1888, 78, -12998), CFrame.new(-1928, 38, -12843)
	  elseif ((MyLevel == 2275) or (MyLevel <= 2299)) then
		Mon, NameQuest, LevelQuest = "Head Baker", "CakeQuest2", 2
		MonPos, QuestPos = CFrame.new(-2216, 83, -12869), CFrame.new(-1928, 38, -12843)
	  elseif ((MyLevel == 2300) or (MyLevel <= 2324)) then
		Mon, NameQuest, LevelQuest = "Cocoa Warrior", "ChocQuest1", 1
		MonPos, QuestPos = CFrame.new(-22, 81, -12352), CFrame.new(233, 30, -12201)
	  elseif ((MyLevel == 2325) or (MyLevel <= 2349)) then
		Mon, NameQuest, LevelQuest = "Chocolate Bar Battler", "ChocQuest1", 2
		MonPos, QuestPos = CFrame.new(583, 77, -12463), CFrame.new(233, 30, -12201)
	  elseif ((MyLevel == 2350) or (MyLevel <= 2374)) then
		Mon, NameQuest, LevelQuest = "Sweet Thief", "ChocQuest2", 1
		MonPos, QuestPos = CFrame.new(165, 76, -12601), CFrame.new(151, 31, -12775)
	  elseif ((MyLevel == 2375) or (MyLevel <= 2399)) then
		Mon, NameQuest, LevelQuest = "Candy Rebel", "ChocQuest2", 2
		MonPos, QuestPos = CFrame.new(135, 77, -12877), CFrame.new(151, 31, -12775)
	  elseif ((MyLevel == 2400) or (MyLevel <= 2424)) then
		Mon, NameQuest, LevelQuest = "Candy Pirate", "CandyQuest1", 1
		MonPos, QuestPos = CFrame.new(-1311, 26, -14562), CFrame.new(-1150, 20, -14446)
	  elseif ((MyLevel == 2425) or (MyLevel <= 2449)) then
		Mon, NameQuest, LevelQuest = "Snow Demon", "CandyQuest1", 2
		MonPos, QuestPos = CFrame.new(-880, 71, -14539), CFrame.new(-1150, 20, -14446)
	  elseif ((MyLevel == 2450) or (MyLevel <= 2474)) then
		Mon, NameQuest, LevelQuest = "Isle Outlaw", "TikiQuest1", 1
		MonPos, QuestPos = CFrame.new(-16443, 116, -264), CFrame.new(-16548, 61, -173)
	  elseif ((MyLevel == 2475) or (MyLevel <= 2499)) then
		Mon, NameQuest, LevelQuest = "Island Boy", "TikiQuest1", 2
		MonPos, QuestPos = CFrame.new(-16901, 84, -193), CFrame.new(-16548, 61, -173)
	  elseif ((MyLevel == 2500) or (MyLevel <= 2524)) then
		Mon, NameQuest, LevelQuest = "Sun-kissed Warrior", "TikiQuest2", 1
		MonPos, QuestPos = CFrame.new(-16350, 92, 1123), CFrame.new(-16539, 56, 1052)
	  elseif ((MyLevel == 2525) or (MyLevel <= 2550)) then
		Mon, NameQuest, LevelQuest = "Isle Champion", "TikiQuest2", 2
		MonPos, QuestPos = CFrame.new(-16750, 127, 1013), CFrame.new(-16539, 56, 1052)
	  elseif ((MyLevel == 2550) or (MyLevel <= 2574)) then
		Mon, NameQuest, LevelQuest = "Serpent Hunter", "TikiQuest3", 1
		MonPos, QuestPos = CFrame.new(-16830, 123, 1720), CFrame.new(-16665, 105, 1580)
	  elseif ((MyLevel == 2575) or (MyLevel <= 2600)) then
		Mon, NameQuest, LevelQuest = "Skull Slayer", "TikiQuest3", 2
		MonPos, QuestPos = CFrame.new(-16830, 123, 1720), CFrame.new(-16665, 105, 1580)
	  end
	end
  end
  
