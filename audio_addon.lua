local ADDON_NAME = ...
local SOUND_DIR = "Interface\\AddOns\\" .. ADDON_NAME .. "\\Sounds\\"

-- Un archivo en Sounds\ (.ogg|.mp3|.wav, ver Sounds\FORMATS.md) por entrada.
-- clave = nombre de archivo CON extension, valor = nombre mostrado en EllesmereUI.
local CUES = {

    -- General, se incluyen audios de Ultrakill.

    -- Ultrakill Gabriel

    ["Gab_Behold.ogg"] = "Behold!",
    ["Gab_Taunt1.ogg"] = "You defy the light!",

    -- Ultrakill Minos Prime

    ["Mp_crush.ogg"] = "Crush!",
    ["Mp_judgement.ogg"] = "Judgement!",

    -- Audios de WoW

    -- Venel

    ["Venel_Crushed.ogg"] = "Crushed!",
    ["Venel_bodies_broken.ogg"] = "Bodies Broken!",


    -- Generados con IA

    -- Paladin Female
    ["Paladin_Judgement.mp3"] = "Paladin_Judgement_Female",
    ["Paladin_Blade.mp3"] = "Paladin_BladeOfJustice_Female",
    ["Paladin_WakeOfAshes.mp3"] = "Paladin_WakeOfAshes_Female",
    ["Paladin_DivineToll.mp3"] = "Paladin_DivineToll_Female",
    ["Paladin_Rebuke.mp3"] = "Paladin_Rebuke_Female",
    ["Paladin_"],

    -- Paladin SAM
    ["Paladin_Judgement_SAM.mp3"] = "Paladin_Judgement_SAM",
    ["Paladin_Blade_SAM.mp3"] = "Paladin_BladeOfJustice_SAM",
    ["Paladin_WakeOfAshes_SAM.mp3"] = "Paladin_WakeOfAshes_SAM",
    ["Paladin_DivineToll_SAM.mp3"] = "Paladin_DivineToll_SAM",
    ["Paladin_Rebuke_SAM.mp3"] = "Paladin_Rebuke_SAM",
    
}

-- PLAYER_LOGIN garantiza que todos los addons (incl. EllesmereUI, que trae
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
