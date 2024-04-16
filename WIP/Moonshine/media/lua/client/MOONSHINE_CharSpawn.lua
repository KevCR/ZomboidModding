local MOD_ID = "KxMOONSHINE";
local MOD_NAME = "Moonshine";
local MOD_VERSION = "1.0";
local MOD_AUTHOR = "Kexxar";
local MOD_DESCRIPTION = "This mod allows players to brew and distil their own alcohol.";
local debugItems = true; --SET TO FALSE FOR RELEASE!

local function info()
    print ("Mod Loaded: ".. MOD_NAME .. " by " .. MOD_AUTHOR .. " (v" .. MOD_VERSION .. ")");
end

-- add mod items to inventory at start if local debutItems = true;
-- uncomment what you want in your inventory. Keep in mind the weight of each item!
local function giveItems()
    if debugItems then
        local player = getSpecificPlayer(0);
        player:getInventory():AddItem("KxMOONSHINE.KxYeastyPeach");
    end    
end

Events.OnGameBoot.Add(info);
Events.OnGameStart.Add(giveItems);