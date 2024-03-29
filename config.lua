Config = {}

-- The targeting solution (3rd eye) to use.
-- false       = don't use any targeting solution. 
-- 'qb-target' = qb-target by BerkieBb and its many other contributors. (https://github.com/BerkieBb/qb-target)
-- 'qtarget'   = qTarget by Linden (thelindat), Noms (OfficialNoms) and its many other contributors. (https://github.com/overextended/qtarget)
-- 'ox_target' = ox_target by Linden (thelindat) and its many other contributors. (https://github.com/overextended/ox_target)
Config.Target = false

-- Targeting
Config.Targeting = {
    Icon = "fas fa-binoculars",
    Label = "Use Telescope"
}

-- Localisation
Config.Localization = {
    HelpText = "Appuyez sur ~INPUT_PICKUP~ pour regarder dans le télescope",
    NonFound = "Aucun télescope n'a été trouvé !",
    TelescopeInUse = "Quelqu'un d'autre utilise déjà le télescope !",
    TelescopeTooTilted = "Ce télescope est trop incliné pour être utilisé !",
    ToFarAway = "Vous êtes trop loin !",
    Exit = "Quitter le télescope"
}

-- Other
Config.UseDistanceThread = true
Config.MaxInteractionDist = 1.75

Config.MaxTilt = 20.0

Config.MovementSpeed = {
    Keyboard = 2.75,
    Controller = 1.0
}

Config.Zoom = {
    Max = 50.0,
    Min = 5.0,
    Speed = 5.0
}

Config.Animations = {
    ["default"] = {
        enter = "enter_front",
        enterTime = 1500,
        exit = "exit_front",
        idle = "idle"
    },
    ["public"] = {
        enter = "public_enter_front",
        enterTime = 1500,
        exit = "public_exit_front",
        idle = "public_idle"
    },
    ["upright"] = {
        enter = "upright_enter_front",
        enterTime = 2500,
        exit = "upright_exit_front",
        idle = "upright_idle"
    }
}

Config.Models = {
    [`prop_telescope_01`] = { MaxHorizontal = 55.0, MaxVertical = 20.0, offset = vector3(-0.03, 0.96, 0.0), headingOffset = 180.0, animation = "public", cameraOffset = vector3(0.0, -0.5, 0.7), scaleform = "OBSERVATORY_SCOPE" }, -- Public
    [`prop_telescope`] = { MaxHorizontal = 55.0, MaxVertical = 20.0, offset = vector3(0.02, -0.78, 1.0), animation = "upright", cameraOffset = vector3(0.0, 0.2, 1.7), scaleform = "BINOCULARS" }, -- Mount Chilliad
    [`prop_t_telescope_01b`] = { MaxHorizontal = 55.0, MaxVertical = 35.0, offset = vector3(1.14, 0.0, 0.0), headingOffset = 90.0, animation = "default", cameraOffset = vector3(-0.25, 0.0, 1.3), scaleform = "OBSERVATORY_SCOPE" }, -- Domestic
    [`xs_prop_arena_telescope_01`] = { MaxHorizontal = 55.0, MaxVertical = 20.0, offset = vector3(-0.03, 0.96, 0.0), headingOffset = 180.0, animation = "public", cameraOffset = vector3(0.0, -0.5, 0.7), scaleform = "BINOCULARS" }, -- Arena
}
