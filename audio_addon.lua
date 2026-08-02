local ADDON_NAME = ...
local SOUND_DIR = "Interface\\AddOns\\" .. ADDON_NAME .. "\\Sounds\\"

-- Un archivo .ogg en Sounds\ por entrada (ver Sounds\FORMATS.md).
-- clave = nombre de archivo CON extension, valor = nombre mostrado en EllesmereUI.
local CUES = {
  -- Ultrakill

    -- Gabriel
    ["ultrakill\\gab_behold.ogg"] = "Gabriel: Behold",
    ["ultrakill\\gab_defylight.ogg"] = "Gabriel: Defy The Light",
    ["ultrakill\\gab_divinejustice.ogg"] = "Gabriel: Divine Justice",
    ["ultrakill\\gab_youneedmorepower.ogg"] = "Gabriel: You Need More Power",

    -- Minos Prime
    ["ultrakill\\mp_crush.ogg"] = "Minos Prime: Crush",
    ["ultrakill\\mp_intro_long.ogg"] = "Minos Prime: Introduction Long",
    ["ultrakill\\mp_judgement.ogg"] = "Minos Prime: Judgement",
    ["ultrakill\\mp_prepare1.ogg"] = "Minos Prime: Prepare 1",
    ["ultrakill\\mp_prepare2.ogg"] = "Minos Prime: Prepare 2",
    ["ultrakill\\mp_thyend1.ogg"] = "Minos Prime: Thy End 1",
    ["ultrakill\\mp_thyend2.ogg"] = "Minos Prime: Thy End 2",
    ["ultrakill\\mp_useless.ogg"] = "Minos Prime: Useless",

    -- Sisyphus Prime
    ["ultrakill\\sp_begone.ogg"] = "Sisyphus Prime: Begone",
    ["ultrakill\\sp_keepthemcoming.ogg"] = "Sisyphus Prime: Keep Them Coming",
    ["ultrakill\\sp_nicetry.ogg"] = "Sisyphus Prime: Nice Try",
    ["ultrakill\\sp_thiswillhurt.ogg"] = "Sisyphus Prime: This Will Hurt",
    ["ultrakill\\sp_yesthatsit.ogg"] = "Sisyphus Prime: Yes That's It",

    -- Power
    ["ultrakill\\pow_glaive.ogg"] = "Power: Glaive",
    ["ultrakill\\pow_glaiveshot.ogg"] = "Power: Glaive Shot",
    ["ultrakill\\pow_greatsword.ogg"] = "Power: Greatsword",
    ["ultrakill\\pow_overhere.ogg"] = "Power: Over Here",
    ["ultrakill\\pow_spear.ogg"] = "Power: Spear",
    ["ultrakill\\pow_wrongtarget.ogg"] = "Power: Wrong Target",

    -- V1
    ["ultrakill\\v1_bell.ogg"] = "V1: Bell",
    ["ultrakill\\v1_chainsaw.ogg"] = "V1: Chainsaw",
    ["ultrakill\\v1_coinflip.ogg"] = "V1: Coin Flip",
    ["ultrakill\\v1_hpget.ogg"] = "V1: Health Pickup",
    ["ultrakill\\v1_pump.ogg"] = "V1: Pump Charging",
    ["ultrakill\\v1_punch.ogg"] = "V1: Punch",
    ["ultrakill\\v1_tv.ogg"] = "V1: Television Off",
    ["ultrakill\\v1_whip.ogg"] = "V1: Whiplash",

  -- World Of Warcraft

    -- Venel
    ["wow\\Venel_Crushed.ogg"] = "Venel: Crushed",
    ["wow\\Venel_bodies_broken.ogg"] = "Venel: Bodies Broken",

}

-- LibStub + LibSharedMedia-3.0 embebidos) ya cargaron, sin depender del
-- orden de carga entre addons.
local f = CreateFrame("Frame")
f:RegisterEvent("PLAYER_LOGIN")
f:SetScript("OnEvent", function()
    local LSM = LibStub and LibStub("LibSharedMedia-3.0", true)
    if not LSM then return end
    for file, label in pairs(CUES) do
        LSM:Register("sound", label, SOUND_DIR .. file)
    end
end)
