TEAM_CITIZEN = DarkRP.createJob("Citoyen", {
    color = Color(20, 150, 20, 255),
    model = {
        "models/player/Group01/Female_01.mdl",
        "models/player/Group01/Female_02.mdl",
        "models/player/Group01/Female_03.mdl",
        "models/player/Group01/Female_04.mdl",
        "models/player/Group01/Female_06.mdl",
        "models/player/group01/male_01.mdl",
        "models/player/Group01/Male_02.mdl",
        "models/player/Group01/male_03.mdl",
        "models/player/Group01/Male_04.mdl",
        "models/player/Group01/Male_05.mdl",
        "models/player/Group01/Male_06.mdl",
        "models/player/Group01/Male_07.mdl",
        "models/player/Group01/Male_08.mdl",
        "models/player/Group01/Male_09.mdl"
    },
    description = [[]],
    weapons = {"weapon_arc_atmcard", "weapon_fists"},
    command = "citizen",
    max = 0,
    salary = GAMEMODE.Config.normalsalary,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Citizens",
})

TEAM_MAYOR = DarkRP.createJob("Maire", {
    color = Color(150, 20, 20, 255),
    model = { 
	    "models/Obama/Obama.mdl",
		"models/Player/Donald_Trump.mdl"},
    description = [[]],
    weapons = {"weapon_arc_atmcard", "weapon_fists"},
    command = "mayor",
    max = 1,
    salary = 500,
    admin = 0,
    vote = true,
    hasLicense = false,
    mayor = true,
    category = "Civil Protection",
    PlayerDeath = function(ply, weapon, killer)
        ply:teamBan()
        ply:changeTeam(GAMEMODE.DefaultTeam, true)
        if killer:IsPlayer() then
            DarkRP.notifyAll(0, 4, "")
        else
            DarkRP.notifyAll(0, 4, "")
        end
    end
})

TEAM_COMMISSAIRE = DarkRP.createJob("*VIP* Comissaire De La Police", {
    color = Color(25, 25, 170, 255),
    model = "models/portal2/patrol_06.mdl",
    description = [[Chef de la police]],
    weapons = {"pass_police_nationale", "pass_police_nationale_1", "weapon_stunweap", "sent_sniffer", "fas2_m3s90", "weapon_r_handcuffs", "fas2_deagle", "cw_smoke_grenade", "stunstick", "weaponchecker", "weapon_arc_atmcard", "weapon_sh_doorcharge", "cw_p99", "driving_license_checker", "cw_flash_grenade"},
    command = "commissaire",
    max = 1,
    salary = GAMEMODE.Config.normalsalary * 1.45,
    admin = 0,
    vote = true,
    hasLicense = false,
    ammo = {
        ["pistol"] = 60,
    },
    category = "Civil Protection",
	customCheck = function(ply) return ply:GetNWString("usergroup") == "VIP" or ply:GetNWString("usergroup") == "superadmin" end,
	CustomCheckFailMsg = "Vous devez etre VIP!",
    PlayerDeath = function(ply, weapon, killer)
        ply:teamBan()
        ply:changeTeam(GAMEMODE.DefaultTeam, true)
        if killer:IsPlayer() then
            DarkRP.notifyAll(0, 4, "")
        else
            DarkRP.notifyAll(0, 4, "")
        end
    end
})

TEAM_POLICE = DarkRP.createJob("Policier", {
    color = Color(25, 25, 170, 255),
    model = "models/player/portal/f_police.mdl",
    description = [[]],
    weapons = {"pass_police_nationale", "pass_police_nationale_1", "weapon_stunweap", "sent_sniffer", "fas2_m1911", "weapon_r_handcuffs", "realrbn_tazer", "stunstick", "weaponchecker", "weapon_arc_atmcard", "weapon_sh_doorcharge", "driving_license_checker", "fine_list"},
    command = "cp",
    max = 4,
    salary = GAMEMODE.Config.normalsalary * 1.45,
    admin = 0,
    vote = true,
    hasLicense = false,
    ammo = {
        ["pistol"] = 60,
    },
    category = "Civil Protection",
    PlayerDeath = function(ply, weapon, killer)
        ply:teamBan()
        ply:changeTeam(GAMEMODE.DefaultTeam, true)
        if killer:IsPlayer() then
            DarkRP.notifyAll(0, 4, "")
        else
            DarkRP.notifyAll(0, 4, "")
        end
    end
})

TEAM_BRIGADIER = DarkRP.createJob("*VIP* Brigadier", {
    color = Color(25, 25, 170, 255),
    model = "models/player/portal/f_police.mdl",
    description = [[Comme la police]],
    weapons = {"pass_police_nationale", "weapon_r_handcuffs", "pass_police_nationale_1", "weapon_stunweap", "sent_sniffer", "fas2_m3s90", "cw_93r", "stunstick", "weaponchecker", "weapon_arc_atmcard", "weapon_sh_doorcharge", "driving_license_checker", "cw_smoke_grenade", "cw_flash_grenade", "fine_list"},
    command = "birgadier",
    max = 4,
    salary = GAMEMODE.Config.normalsalary * 1.45,
    admin = 0,
    vote = true,
    hasLicense = false,
    ammo = {
        ["pistol"] = 60,
    },
    category = "Civil Protection",
	customCheck = function(ply) return ply:GetNWString("usergroup") == "VIP" or ply:GetNWString("usergroup") == "superadmin" end,
	CustomCheckFailMsg = "Vous devez etre VIP!",
    PlayerDeath = function(ply, weapon, killer)
        ply:teamBan()
        ply:changeTeam(GAMEMODE.DefaultTeam, true)
        if killer:IsPlayer() then
            DarkRP.notifyAll(0, 4, "")
        else
            DarkRP.notifyAll(0, 4, "")
        end
    end
})

TEAM_BAC = DarkRP.createJob("BAC", {
    color = Color(25, 25, 170, 255),
    model = "models/player/Group01/Male_05.mdl",	
    description = [[]],
    weapons = {"pass_police_nationale_1", "weapon_r_restrains", "pass_police_nationale", "weapon_license_lourd", "weapon_license_legere", "weapon_fists", "sent_sniffer", "fas2_m1911", "weapon_stunweap", "stunstick", "weaponchecker", "weapon_arc_atmcard", "weapon_r_handcuffs", "weapon_sh_doorcharge", "driving_license_checker"},
    command = "bac",
    max = 4,
    salary = GAMEMODE.Config.normalsalary * 1.45,
    admin = 0,
    vote = true,
    hasLicense = false,
    ammo = {
        ["pistol"] = 60,
    },
    category = "Civil Protection",
    PlayerDeath = function(ply, weapon, killer)
        ply:teamBan()
        ply:changeTeam(GAMEMODE.DefaultTeam, true)
        if killer:IsPlayer() then
            DarkRP.notifyAll(0, 4, "")
        else
            DarkRP.notifyAll(0, 4, "")
        end
    end
})

TEAM_GRAID = DarkRP.createJob("*WHITELIST* Général RAID", {
    color = Color(25, 25, 170, 255),
    model = "models/player/RAID/RAID_01.mdl",	
    description = [[]],
    weapons = {"weapon_r_handcuffs", "weapon_polearm", "salute", "weapon_fists", "pass_police_nationale_1", "fine_list", "pass_police_nationale", "sent_sniffer", "fas2_m4a1", "fas2_deagle", "weapon_stunweap", "stunstick", "weaponchecker", "weapon_arc_atmcard", "weapon_sh_doorcharge", "driving_license_checker", "mw3_ump45", "realistic_hook", "cw_smoke_grenade", "cw_flash_grenade", "mw3_skorpion"},
    command = "graid",
    max = 6,
    salary = 500,
    admin = 0,
    vote = true,
    hasLicense = false,
    ammo = {
        ["pistol"] = 60,
    },
    category = "Civil Protection",
    PlayerDeath = function(ply, weapon, killer)
        ply:teamBan()
        ply:changeTeam(GAMEMODE.DefaultTeam, true)
        if killer:IsPlayer() then
            DarkRP.notifyAll(0, 4, "")
        else
            DarkRP.notifyAll(0, 4, "")
        end
    end
})

TEAM_CGIGN = DarkRP.createJob("*WHITELIST* Commandants RAID", {
    color = Color(25, 25, 170, 255),
    model = "models/player/RAID/RAID_02.mdl",	
    description = [[]],
    weapons = {"weapon_fists", "weapon_r_handcuffs", "weapon_polearm", "salute", "pass_police_nationale_1", "fine_list", "pass_police_nationale", "sent_sniffer", "fas2_g36c", "mw3_m4a1", "weapon_stunweap", "stunstick", "weaponchecker", "weapon_arc_atmcard", "weapon_sh_doorcharge", "driving_license_checker", "cw_smoke_grenade", "cw_flash_grenade", "mw3_ump45", "realistic_hook", "mw3_usp"},
    command = "cgign",
    max = 6,
    salary = 500,
    admin = 0,
    vote = true,
    hasLicense = false,
    ammo = {
        ["pistol"] = 60,
    },
    category = "Civil Protection",
    PlayerDeath = function(ply, weapon, killer)
        ply:teamBan()
        ply:changeTeam(GAMEMODE.DefaultTeam, true)
        if killer:IsPlayer() then
            DarkRP.notifyAll(0, 4, "")
        else
            DarkRP.notifyAll(0, 4, "")
        end
    end
})

TEAM_SGIGN = DarkRP.createJob("*WHITELIST* Sniper RAID", {
    color = Color(25, 25, 170, 255),
    model = "models/player/RAID/RAID_03.mdl",	
    description = [[]],
    weapons = {"cw_kk_ins2_doi_bino_us", "weapon_hookah", "weapon_polearm", "weapon_r_handcuffs", "sent_sniffer", "salute", "pass_police_nationale_1", "fine_list", "pass_police_nationale", "weapon_fists", "fas2_m24", "mw3_p90", "mw3_skorpion", "weapon_stunweap", "stunstick", "weaponchecker", "weapon_arc_atmcard", "weapon_sh_doorcharge", "driving_license_checker", "realistic_hook"},
    command = "sgign",
    max = 6,
    salary = 350,
    admin = 0,
    vote = true,
    hasLicense = false,
    ammo = {
        ["pistol"] = 60,
    },
    category = "Civil Protection",
    PlayerDeath = function(ply, weapon, killer)
        ply:teamBan()
        ply:changeTeam(GAMEMODE.DefaultTeam, true)
        if killer:IsPlayer() then
            DarkRP.notifyAll(0, 4, "")
        else
            DarkRP.notifyAll(0, 4, "")
        end
    end
})

TEAM_RAID = DarkRP.createJob("*WHITELIST* Officer RAID", {
    color = Color(25, 25, 170, 255),
    model = "models/player/RAID/RAID_04.mdl",	
    description = [[]],
    weapons = {"mw3_spas12", "pass_police_nationale", "weapon_r_handcuffs", "weapon_polearm", "salute", "fine_list", "pass_police_nationale_1", "fas2_famas", "weapon_fists", "sent_sniffer", "mw3_ump45", "weapon_stunweap", "stunstick", "weaponchecker", "weapon_arc_atmcard", "weapon_sh_doorcharge", "driving_license_checker", "cw_smoke_grenade", "cw_flash_grenade", "realistic_hook", "mw3_usp"},
    command = "oraid",
    max = 6,
    salary = 200,
    admin = 0,
    vote = true,
    hasLicense = false,
    ammo = {
        ["pistol"] = 60,
    },
    category = "Civil Protection",
    PlayerDeath = function(ply, weapon, killer)
        ply:teamBan()
        ply:changeTeam(GAMEMODE.DefaultTeam, true)
        if killer:IsPlayer() then
            DarkRP.notifyAll(0, 4, "")
        else
            DarkRP.notifyAll(0, 4, "")
        end
    end
})

TEAM_RECRUE = DarkRP.createJob("*WHITELIST* Recrue RAID", {
    color = Color(25, 25, 170, 255),
    model = "models/player/RAID/RAID_07.mdl",
    description = [[]],
    weapons = {"mw3_usp", "pass_police_nationale_1", "salute", "fas2_pp19", "weapon_polearm", "weapon_r_handcuffs", "fine_list", "weapon_fists", "sent_sniffer", "weapon_stunweap", "stunstick", "weaponchecker", "weapon_arc_atmcard", "weapon_sh_doorcharge", "driving_license_checker", "mw3_spas12", "cw_smoke_grenade", "cw_flash_grenade"},
    command = "recruerd",
    max = 6,
    salary = 150,
    admin = 0,
    vote = true,
    hasLicense = false,
    ammo = {
        ["pistol"] = 60,
    },
    category = "Civil Protection",
    PlayerDeath = function(ply, weapon, killer)
        ply:teamBan()
        ply:changeTeam(GAMEMODE.DefaultTeam, true)
        if killer:IsPlayer() then
            DarkRP.notifyAll(0, 4, "")
        else
            DarkRP.notifyAll(0, 4, "")
        end
    end
})

TEAM_TOWER = DarkRP.createJob("Garagiste", {
    color = Color(20, 150, 20, 255),
    model = "models/player/mechanic.mdl",
    description = [[]],
    weapons = {"weapon_arc_atmcard", "weapon_fists", "vc_wrench", "tow_attach"},
    command = "tower",
    max = 2,
    salary = GAMEMODE.Config.normalsalary,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Citizens",
    PlayerDeath = function(ply, weapon, killer)
        ply:teamBan()
        ply:changeTeam(GAMEMODE.DefaultTeam, true)
        if killer:IsPlayer() then
            DarkRP.notifyAll(0, 4, "")
        else
            DarkRP.notifyAll(0, 4, "")
        end
    end
})

TEAM_TAXI = DarkRP.createJob("Taximan", {
    color = Color(20, 150, 20, 255),
    model = {
        "models/player/Group01/Female_01.mdl",
        "models/player/Group01/Female_02.mdl",
        "models/player/Group01/Female_03.mdl",
        "models/player/Group01/Female_04.mdl",
        "models/player/Group01/Female_06.mdl",
        "models/player/group01/male_01.mdl",
        "models/player/Group01/Male_02.mdl",
        "models/player/Group01/male_03.mdl",
        "models/player/Group01/Male_04.mdl",
        "models/player/Group01/Male_05.mdl",
        "models/player/Group01/Male_06.mdl",
        "models/player/Group01/Male_07.mdl",
        "models/player/Group01/Male_08.mdl",
        "models/player/Group01/Male_09.mdl"
    },
    description = [[]],
    weapons = {"weapon_arc_atmcard", "weapon_fists"},
    command = "taximan",
    max = 4,
    salary = 150,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Citizens",
    PlayerDeath = function(ply, weapon, killer)
        ply:teamBan()
        ply:changeTeam(GAMEMODE.DefaultTeam, true)
        if killer:IsPlayer() then
            DarkRP.notifyAll(0, 4, "")
        else
            DarkRP.notifyAll(0, 4, "")
        end
    end
})

TEAM_ORGANNE = DarkRP.createJob("*VIP* Trafiquant d'organnes", {
    color = Color(20, 150, 20, 255),
    model = {
        "models/player/Group01/Female_01.mdl",
        "models/player/Group01/Female_02.mdl",
        "models/player/Group01/Female_03.mdl",
        "models/player/Group01/Female_04.mdl",
        "models/player/Group01/Female_06.mdl",
        "models/player/group01/male_01.mdl",
        "models/player/Group01/Male_02.mdl",
        "models/player/Group01/male_03.mdl",
        "models/player/Group01/Male_04.mdl",
        "models/player/Group01/Male_05.mdl",
        "models/player/Group01/Male_06.mdl",
        "models/player/Group01/Male_07.mdl",
        "models/player/Group01/Male_08.mdl",
        "models/player/Group01/Male_09.mdl"
    },
    description = [[]],
    weapons = {"weapon_arc_atmcard", "weapon_fists", "scalpel", "weapon_r_restrains"},
    command = "organnes",
    max = 2,
    salary = GAMEMODE.Config.normalsalary,
    admin = 0,
    vote = false,
    hasLicense = false,
	customCheck = function(ply) return ply:GetNWString("usergroup") == "VIP" or ply:GetNWString("usergroup") == "superadmin" end,
	CustomCheckFailMsg = "Vous devez etre VIP!",
    candemote = false,
    category = "Citizens",
    PlayerDeath = function(ply, weapon, killer)
        ply:teamBan()
        ply:changeTeam(GAMEMODE.DefaultTeam, true)
        if killer:IsPlayer() then
            DarkRP.notifyAll(0, 4, "")
        else
            DarkRP.notifyAll(0, 4, "")
        end
    end
})

TEAM_BITCOIN = DarkRP.createJob("*VIP*Fabriquant de bitcoin", {
    color = Color(20, 150, 20, 255),
    model = {
        "models/player/Group01/Female_01.mdl",
        "models/player/Group01/Female_02.mdl",
        "models/player/Group01/Female_03.mdl",
        "models/player/Group01/Female_04.mdl",
        "models/player/Group01/Female_06.mdl",
        "models/player/group01/male_01.mdl",
        "models/player/Group01/Male_02.mdl",
        "models/player/Group01/male_03.mdl",
        "models/player/Group01/Male_04.mdl",
        "models/player/Group01/Male_05.mdl",
        "models/player/Group01/Male_06.mdl",
        "models/player/Group01/Male_07.mdl",
        "models/player/Group01/Male_08.mdl",
        "models/player/Group01/Male_09.mdl"
    },
    description = [[]],
    weapons = {"weapon_arc_atmcard", "weapon_fists"},
    command = "bitcoin",
    max = 3,
    salary = GAMEMODE.Config.normalsalary,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Citizens",
	customCheck = function(ply) return ply:GetNWString("usergroup") == "VIP" or ply:GetNWString("usergroup") == "superadmin" end,
	CustomCheckFailMsg = "Vous devez etre VIP!",
    PlayerDeath = function(ply, weapon, killer)
        ply:teamBan()
        ply:changeTeam(GAMEMODE.DefaultTeam, true)
        if killer:IsPlayer() then
            DarkRP.notifyAll(0, 4, "")
        else
            DarkRP.notifyAll(0, 4, "")
        end
    end
})

TEAM_COCE = DarkRP.createJob("Fabriquant de cocaïne", {
    color = Color(20, 150, 20, 255),
    model = {
        "models/player/Group01/Female_01.mdl",
        "models/player/Group01/Female_02.mdl",
        "models/player/Group01/Female_03.mdl",
        "models/player/Group01/Female_04.mdl",
        "models/player/Group01/Female_06.mdl",
        "models/player/group01/male_01.mdl",
        "models/player/Group01/Male_02.mdl",
        "models/player/Group01/male_03.mdl",
        "models/player/Group01/Male_04.mdl",
        "models/player/Group01/Male_05.mdl",
        "models/player/Group01/Male_06.mdl",
        "models/player/Group01/Male_07.mdl",
        "models/player/Group01/Male_08.mdl",
        "models/player/Group01/Male_09.mdl"
    },
    description = [[]],
    weapons = {"weapon_arc_atmcard", "weapon_fists"},
    command = "coce",
    max = 3,
    salary = GAMEMODE.Config.normalsalary,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Citizens",
    PlayerDeath = function(ply, weapon, killer)
        ply:teamBan()
        ply:changeTeam(GAMEMODE.DefaultTeam, true)
        if killer:IsPlayer() then
            DarkRP.notifyAll(0, 4, "")
        else
            DarkRP.notifyAll(0, 4, "")
        end
    end
})

TEAM_ZMLAB_COOK = DarkRP.createJob("Fabriquant de meth", {
	color = Color(0, 128, 255, 255),
	model = {
        "models/player/Group01/Female_01.mdl",
        "models/player/Group01/Female_02.mdl",
        "models/player/Group01/Female_03.mdl",
        "models/player/Group01/Female_04.mdl",
        "models/player/Group01/Female_06.mdl",
        "models/player/group01/male_01.mdl",
        "models/player/Group01/Male_02.mdl",
        "models/player/Group01/male_03.mdl",
        "models/player/Group01/Male_04.mdl",
        "models/player/Group01/Male_05.mdl",
        "models/player/Group01/Male_06.mdl",
        "models/player/Group01/Male_07.mdl",
        "models/player/Group01/Male_08.mdl",
        "models/player/Group01/Male_09.mdl"
    },
	description = [[]],
	weapons = {},
	command = "MethCook",
	max = 3,
	salary = 0,
	admin = 0,
	vote = false,
	category = "Citizens",
	hasLicense = false,
    PlayerDeath = function(ply, weapon, killer)
        ply:teamBan()
        ply:changeTeam(GAMEMODE.DefaultTeam, true)
        if killer:IsPlayer() then
            DarkRP.notifyAll(0, 4, "")
        else
            DarkRP.notifyAll(0, 4, "")
        end
    end
})

TEAM_WEED = DarkRP.createJob("Fabriquant de Weed", {
	color = Color(0, 128, 255, 255),
	model = {
        "models/player/Group01/Female_01.mdl",
        "models/player/Group01/Female_02.mdl",
        "models/player/Group01/Female_03.mdl",
        "models/player/Group01/Female_04.mdl",
        "models/player/Group01/Female_06.mdl",
        "models/player/group01/male_01.mdl",
        "models/player/Group01/Male_02.mdl",
        "models/player/Group01/male_03.mdl",
        "models/player/Group01/Male_04.mdl",
        "models/player/Group01/Male_05.mdl",
        "models/player/Group01/Male_06.mdl",
        "models/player/Group01/Male_07.mdl",
        "models/player/Group01/Male_08.mdl",
        "models/player/Group01/Male_09.mdl"
    },
	description = [[]],
	weapons = {"sent_tablet"},
	command = "weed",
	max = 3,
	salary = 0,
	admin = 0,
	vote = false,
	category = "Citizens",
	hasLicense = false,
    PlayerDeath = function(ply, weapon, killer)
        ply:teamBan()
        ply:changeTeam(GAMEMODE.DefaultTeam, true)
        if killer:IsPlayer() then
            DarkRP.notifyAll(0, 4, "")
        else
            DarkRP.notifyAll(0, 4, "")
        end
    end
})

TEAM_CRACK = DarkRP.createJob("Fabriquant de crack", {
	color = Color(0, 128, 255, 255),
	model = {
        "models/player/Group01/Female_01.mdl",
        "models/player/Group01/Female_02.mdl",
        "models/player/Group01/Female_03.mdl",
        "models/player/Group01/Female_04.mdl",
        "models/player/Group01/Female_06.mdl",
        "models/player/group01/male_01.mdl",
        "models/player/Group01/Male_02.mdl",
        "models/player/Group01/male_03.mdl",
        "models/player/Group01/Male_04.mdl",
        "models/player/Group01/Male_05.mdl",
        "models/player/Group01/Male_06.mdl",
        "models/player/Group01/Male_07.mdl",
        "models/player/Group01/Male_08.mdl",
        "models/player/Group01/Male_09.mdl"
    },
	description = [[You are a Master manufacture of Methamphetamin]],
	weapons = {"weapon_arc_atmcard"},
	command = "fcrack",
	max = 3,
	salary = 0,
	admin = 0,
	vote = false,
	category = "Citizens",
	hasLicense = false,
    PlayerDeath = function(ply, weapon, killer)
        ply:teamBan()
        ply:changeTeam(GAMEMODE.DefaultTeam, true)
        if killer:IsPlayer() then
            DarkRP.notifyAll(0, 4, "")
        else
            DarkRP.notifyAll(0, 4, "")
        end
    end
})

TEAM_LSD = DarkRP.createJob("Fabriquant de LSD", {
	color = Color(0, 128, 255, 255),
	model = {
        "models/player/Group01/Female_01.mdl",
        "models/player/Group01/Female_02.mdl",
        "models/player/Group01/Female_03.mdl",
        "models/player/Group01/Female_04.mdl",
        "models/player/Group01/Female_06.mdl",
        "models/player/group01/male_01.mdl",
        "models/player/Group01/Male_02.mdl",
        "models/player/Group01/male_03.mdl",
        "models/player/Group01/Male_04.mdl",
        "models/player/Group01/Male_05.mdl",
        "models/player/Group01/Male_06.mdl",
        "models/player/Group01/Male_07.mdl",
        "models/player/Group01/Male_08.mdl",
        "models/player/Group01/Male_09.mdl"
    },
	description = [[]],
	weapons = {"swep_lsd_cellphone", "weapon_arc_atmcard"},
	command = "flsd",
	max = 3,
	salary = 0,
	admin = 0,
	vote = false,
	category = "Citizens",
	hasLicense = false,
    PlayerDeath = function(ply, weapon, killer)
        ply:teamBan()
        ply:changeTeam(GAMEMODE.DefaultTeam, true)
        if killer:IsPlayer() then
            DarkRP.notifyAll(0, 4, "")
        else
            DarkRP.notifyAll(0, 4, "")
        end
    end
})

TEAM_MOB = DarkRP.createJob("*WHITELIST* Tueur a gages", {
    color = Color(25, 25, 25, 255),
    model = {
        "models/player/Group01/Female_01.mdl",
        "models/player/Group01/Female_02.mdl",
        "models/player/Group01/Female_03.mdl",
        "models/player/Group01/Female_04.mdl",
        "models/player/Group01/Female_06.mdl",
        "models/player/group01/male_01.mdl",
        "models/player/Group01/Male_02.mdl",
        "models/player/Group01/male_03.mdl",
        "models/player/Group01/Male_04.mdl",
        "models/player/Group01/Male_05.mdl",
        "models/player/Group01/Male_06.mdl",
        "models/player/Group01/Male_07.mdl",
        "models/player/Group01/Male_08.mdl",
        "models/player/Group01/Male_09.mdl"
    },
    description = [[]],
    weapons = {"weapon_arc_atmcard", "weapon_hookah", "fas2_m24", "weapon_fists", "weapon_license_lourd", "weapon_license_legere"},
    command = "mobboss",
    max = 1,
    salary = 45,
    admin = 0,
    vote = false,
    hasLicense = false,
    category = "Citizens",
    PlayerDeath = function(ply, weapon, killer)
        ply:teamBan()
        ply:changeTeam(GAMEMODE.DefaultTeam, true)
        if killer:IsPlayer() then
            DarkRP.notifyAll(0, 4, "")
        else
            DarkRP.notifyAll(0, 4, "")
        end
    end
})

TEAM_BANQUE = DarkRP.createJob("Banquier", {
    color = Color(20, 150, 20, 255),
    model = {
        "models/player/Group01/Female_01.mdl",
        "models/player/Group01/Female_02.mdl",
        "models/player/Group01/Female_03.mdl",
        "models/player/Group01/Female_04.mdl",
        "models/player/Group01/Female_06.mdl",
        "models/player/group01/male_01.mdl",
        "models/player/Group01/Male_02.mdl",
        "models/player/Group01/male_03.mdl",
        "models/player/Group01/Male_04.mdl",
        "models/player/Group01/Male_05.mdl",
        "models/player/Group01/Male_06.mdl",
        "models/player/Group01/Male_07.mdl",
        "models/player/Group01/Male_08.mdl",
        "models/player/Group01/Male_09.mdl"
    },
    description = [[]],
    weapons = {"weapon_arc_atmcard", "weapon_fists"},
    command = "banquier",
    max = 1,
    salary = 100,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Citizens",
    PlayerDeath = function(ply, weapon, killer)
        ply:teamBan()
        ply:changeTeam(GAMEMODE.DefaultTeam, true)
        if killer:IsPlayer() then
            DarkRP.notifyAll(0, 4, "")
        else
            DarkRP.notifyAll(0, 4, "")
        end
    end
})

TEAM_GUN = DarkRP.createJob("Armurier", {
    color = Color(255, 140, 0, 255),
    model = {
        "models/player/Group01/Female_01.mdl",
        "models/player/Group01/Female_02.mdl",
        "models/player/Group01/Female_03.mdl",
        "models/player/Group01/Female_04.mdl",
        "models/player/Group01/Female_06.mdl",
        "models/player/group01/male_01.mdl",
        "models/player/Group01/Male_02.mdl",
        "models/player/Group01/male_03.mdl",
        "models/player/Group01/Male_04.mdl",
        "models/player/Group01/Male_05.mdl",
        "models/player/Group01/Male_06.mdl",
        "models/player/Group01/Male_07.mdl",
        "models/player/Group01/Male_08.mdl",
        "models/player/Group01/Male_09.mdl"
    },
    description = [[]],
    weapons = {"weapon_arc_atmcard", "weapon_fists", "weapon_license_arm"},
    command = "gundealer",
    max = 3,
    salary = GAMEMODE.Config.normalsalary,
    admin = 0,
    vote = false,
    hasLicense = false,
    category = "Citizens",
    PlayerDeath = function(ply, weapon, killer)
        ply:teamBan()
        ply:changeTeam(GAMEMODE.DefaultTeam, true)
        if killer:IsPlayer() then
            DarkRP.notifyAll(0, 4, "")
        else
            DarkRP.notifyAll(0, 4, "")
        end
    end
})

TEAM_ILLEGALE = DarkRP.createJob("Vendeur illegale", {
    color = Color(255, 140, 0, 255),
    model = {
        "models/player/Group01/Female_01.mdl",
        "models/player/Group01/Female_02.mdl",
        "models/player/Group01/Female_03.mdl",
        "models/player/Group01/Female_04.mdl",
        "models/player/Group01/Female_06.mdl",
        "models/player/group01/male_01.mdl",
        "models/player/Group01/Male_02.mdl",
        "models/player/Group01/male_03.mdl",
        "models/player/Group01/Male_04.mdl",
        "models/player/Group01/Male_05.mdl",
        "models/player/Group01/Male_06.mdl",
        "models/player/Group01/Male_07.mdl",
        "models/player/Group01/Male_08.mdl",
        "models/player/Group01/Male_09.mdl"
    },
    description = [[]],
    weapons = {"weapon_arc_atmcard", "weapon_fists"},
    command = "gundealeri",
    max = 1,
    salary = GAMEMODE.Config.normalsalary,
    admin = 0,
    vote = false,
    hasLicense = false,
    category = "Citizens",
    PlayerDeath = function(ply, weapon, killer)
        ply:teamBan()
        ply:changeTeam(GAMEMODE.DefaultTeam, true)
        if killer:IsPlayer() then
            DarkRP.notifyAll(0, 4, "")
        else
            DarkRP.notifyAll(0, 4, "")
        end
    end
})

TEAM_FISHERMAN = DarkRP.createJob("Pecheur", {
	color = Color(20, 150, 20, 255),
	model = {
		"models/player/Group01/Female_01.mdl",
		"models/player/Group01/Female_02.mdl",
		"models/player/Group01/Female_03.mdl",
		"models/player/Group01/Female_04.mdl",
		"models/player/Group01/Female_06.mdl",
		"models/player/group01/male_01.mdl",
		"models/player/Group01/Male_02.mdl",
		"models/player/Group01/male_03.mdl",
		"models/player/Group01/Male_04.mdl",
		"models/player/Group01/Male_05.mdl",
		"models/player/Group01/Male_06.mdl",
		"models/player/Group01/Male_07.mdl",
		"models/player/Group01/Male_08.mdl",
		"models/player/Group01/Male_09.mdl"
	},
	description = [[]],
	weapons = {"weapon_fishingrod", "weapon_fists", "weapon_arc_atmcard"},
	command = "fisherman",
	max = 3,
	salary = GAMEMODE.Config.normalsalary * 1.2,
	admin = 0,
	vote = false,
	hasLicense = false,
	candemote = false,
	category = "Citizens",
	PlayerDeath = function(ply, weapon, killer)
        ply:teamBan()
        ply:changeTeam(GAMEMODE.DefaultTeam, true)
        if killer:IsPlayer() then
            DarkRP.notifyAll(0, 4, "")
        else
            DarkRP.notifyAll(0, 4, "")
        end
    end			
})

TEAM_MINEUR = DarkRP.createJob("Mineur", {
	color = Color(20, 150, 20, 255),
	model = {
		"models/player/Group01/Female_01.mdl",
		"models/player/Group01/Female_02.mdl",
		"models/player/Group01/Female_03.mdl",
		"models/player/Group01/Female_04.mdl",
		"models/player/Group01/Female_06.mdl",
		"models/player/group01/male_01.mdl",
		"models/player/Group01/Male_02.mdl",
		"models/player/Group01/male_03.mdl",
		"models/player/Group01/Male_04.mdl",
		"models/player/Group01/Male_05.mdl",
		"models/player/Group01/Male_06.mdl",
		"models/player/Group01/Male_07.mdl",
		"models/player/Group01/Male_08.mdl",
		"models/player/Group01/Male_09.mdl"
	},
	description = [[]],
	weapons = {"mgs_pickaxe", "weapon_fists", "weapon_arc_atmcard"},
	command = "mineur",
	max = 6,
	salary = GAMEMODE.Config.normalsalary * 1.2,
	admin = 0,
	vote = false,
	hasLicense = false,
	candemote = false,
	category = "Citizens",
	PlayerDeath = function(ply, weapon, killer)
        ply:teamBan()
        ply:changeTeam(GAMEMODE.DefaultTeam, true)
        if killer:IsPlayer() then
            DarkRP.notifyAll(0, 4, "")
        else
            DarkRP.notifyAll(0, 4, "")
        end
    end			
})

TEAM_BUCHERON = DarkRP.createJob("Bucheron", {
	color = Color(20, 150, 20, 255),
	model = {
		"models/player/Group01/Female_01.mdl",
		"models/player/Group01/Female_02.mdl",
		"models/player/Group01/Female_03.mdl",
		"models/player/Group01/Female_04.mdl",
		"models/player/Group01/Female_06.mdl",
		"models/player/group01/male_01.mdl",
		"models/player/Group01/Male_02.mdl",
		"models/player/Group01/male_03.mdl",
		"models/player/Group01/Male_04.mdl",
		"models/player/Group01/Male_05.mdl",
		"models/player/Group01/Male_06.mdl",
		"models/player/Group01/Male_07.mdl",
		"models/player/Group01/Male_08.mdl",
		"models/player/Group01/Male_09.mdl"
	},
	description = [[]],
	weapons = {"swm_chopping_axe", "weapon_fists", "weapon_arc_atmcard"},
	command = "bucheron",
	max = 6,
	salary = GAMEMODE.Config.normalsalary * 1.2,
	admin = 0,
	vote = false,
	hasLicense = false,
	candemote = false,
	category = "Citizens",
	PlayerDeath = function(ply, weapon, killer)
        ply:teamBan()
        ply:changeTeam(GAMEMODE.DefaultTeam, true)
        if killer:IsPlayer() then
            DarkRP.notifyAll(0, 4, "")
        else
            DarkRP.notifyAll(0, 4, "")
        end
    end			
})

TEAM_GARBAGEMAN = DarkRP.createJob("Eboueur", {
	color = Color(20, 150, 20, 255),
	model = {"models/snowred/dab9595/hex/odessa.mdl"},
	description = [[]],
	weapons = {"weapon_fists", "weapon_arc_atmcard"},
	command = "garbageman",
	max = 4,
	salary = GAMEMODE.Config.normalsalary * 1.2,
	admin = 0,
	vote = false,
	hasLicense = false,
	candemote = false,
	category = "Citizens",
	PlayerDeath = function(ply, weapon, killer)
        ply:teamBan()
        ply:changeTeam(GAMEMODE.DefaultTeam, true)
        if killer:IsPlayer() then
            DarkRP.notifyAll(0, 4, "")
        else
            DarkRP.notifyAll(0, 4, "")
        end
    end			
})

TEAM_LIVREUR = DarkRP.createJob("Livreur", {
    color = Color(255, 140, 0, 255),
    model = {
        "models/player/Group01/Female_01.mdl",
        "models/player/Group01/Female_02.mdl",
        "models/player/Group01/Female_03.mdl",
        "models/player/Group01/Female_04.mdl",
        "models/player/Group01/Female_06.mdl",
        "models/player/group01/male_01.mdl",
        "models/player/Group01/Male_02.mdl",
        "models/player/Group01/male_03.mdl",
        "models/player/Group01/Male_04.mdl",
        "models/player/Group01/Male_05.mdl",
        "models/player/Group01/Male_06.mdl",
        "models/player/Group01/Male_07.mdl",
        "models/player/Group01/Male_08.mdl",
        "models/player/Group01/Male_09.mdl"
    },
    description = [[]],
    weapons = {"weapon_arc_atmcard", "weapon_fists"},
    command = "livreur",
    max = 3,
    salary = GAMEMODE.Config.normalsalary,
    admin = 0,
    vote = false,
    hasLicense = false,
    category = "Citizens",
    PlayerDeath = function(ply, weapon, killer)
        ply:teamBan()
        ply:changeTeam(GAMEMODE.DefaultTeam, true)
        if killer:IsPlayer() then
            DarkRP.notifyAll(0, 4, "")
        else
            DarkRP.notifyAll(0, 4, "")
        end
    end
})

TEAM_MEDIC = DarkRP.createJob("Ambulancier", {
    color = Color(47, 79, 79, 255),
    model = "models/player/kleiner.mdl",
    description = [[]],
    weapons = {"weapon_defibrillator", "weapon_fists", "weapon_arc_atmcard"},
    command = "medic",
    max = 2,
    salary = GAMEMODE.Config.normalsalary,
    admin = 0,
    vote = false,
    hasLicense = false,
    medic = true,
    category = "Citizens",
    PlayerDeath = function(ply, weapon, killer)
        ply:teamBan()
        ply:changeTeam(GAMEMODE.DefaultTeam, true)
        if killer:IsPlayer() then
            DarkRP.notifyAll(0, 4, "")
        else
            DarkRP.notifyAll(0, 4, "")
        end
    end
})

TEAM_ADMIN = DarkRP.createJob("Admin", {
    color = Color(47, 79, 79, 255),
    model = "models/cyanblue/fate/grandorder/saber.mdl",
    description = [[]],
    weapons = {"weapon_fists", "weapon_arc_atmcard"},
    command = "adminsetjob",
    max = 0,
    salary = 0,
    admin = 1,
    vote = false,
    hasLicense = false,
    medic = true,
    category = "Citizens",
	PlayerLoadout = function(ply)
    local GM = (GM or GAMEMODE or gmod.GetGamemode() or DarkRP)
    timer.Simple(GM.Config.babygodtime,function()
        ply:GodEnable()
    end)
end
})

if not DarkRP.disabledDefaults["modules"]["hungermod"] then
    TEAM_COOK = DarkRP.createJob("Cuisinier", {
        color = Color(238, 99, 99, 255),
        model = { 
		    "models/fearless/chef1.mdl",
			"models/fearless/chef2.mdl"
		},
        description = [[]],
        weapons = {"weapon_arc_atmcard"},
        command = "cook",
        max = 2,
        salary = 70,
        admin = 0,
        vote = false,
        hasLicense = false,
        cook = true,
		category = "Citizens",
        PlayerDeath = function(ply, weapon, killer)
            ply:teamBan()
            ply:changeTeam(GAMEMODE.DefaultTeam, true)
            if killer:IsPlayer() then
                DarkRP.notifyAll(0, 4, "")
            else
                DarkRP.notifyAll(0, 4, "")
            end
        end
})
end
--[[---------------------------------------------------------------------------
Define which team joining players spawn into and what team you change to if demoted
---------------------------------------------------------------------------]]
GAMEMODE.DefaultTeam = TEAM_CITIZEN
--[[---------------------------------------------------------------------------
Define which teams belong to civil protection
Civil protection can set warrants, make people wanted and do some other police related things
---------------------------------------------------------------------------]]
GAMEMODE.CivilProtection = {
    [TEAM_POLICE] = true,
    [TEAM_COMMISSAIRE] = true,
    [TEAM_MAYOR] = true,
	[TEAM_CGIGN] = true,
	[TEAM_SGIGN] = true,
	[TEAM_RECRUE] = true,
	[TEAM_BRIGADIER] = true,
	[TEAM_GRAID] = true,
	[TEAM_RAID] = true,
}
--[[---------------------------------------------------------------------------
Jobs that are hitmen (enables the hitman menu)
---------------------------------------------------------------------------]]
DarkRP.addHitmanTeam(TEAM_MOB)