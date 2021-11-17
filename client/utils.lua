ESX = nil
Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent(Config.SharedObjectName, function(obj) ESX = obj end)
        Citizen.Wait(250)
    end
    while ESX.GetPlayerData().job == nil do
        Citizen.Wait(250)
    end
    ESX.PlayerData = ESX.GetPlayerData()
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
    ESX.PlayerData.job = job
end)

RegisterNetEvent('ak47_drugdealerv2:notify')
AddEventHandler('ak47_drugdealerv2:notify', function(msg)
    ESX.ShowNotification(msg)
end)

RegisterNetEvent('ak47_drugdealerv2:policeAlert')
AddEventHandler('ak47_drugdealerv2:policeAlert', function(targetCoords, street)
    if Config.Cops[ESX.PlayerData.job.name] then
        TriggerEvent('ak47_drugdealerv2:notify', '~b~Citizen Report:~s~ ~r~Drug sell in progress at '..street)
        local alpha = 250
        local sellerBlip = AddBlipForRadius(targetCoords.x, targetCoords.y, targetCoords.z, 50.0)
        SetBlipHighDetail(sellerBlip, true)
        SetBlipColour(sellerBlip, 1)
        SetBlipAlpha(sellerBlip, alpha)
        SetBlipAsShortRange(sellerBlip, true)
        while alpha ~= 0 do
            Citizen.Wait(Config.CopAlertBlipTime * 4)
            alpha = alpha - 1
            SetBlipAlpha(sellerBlip, alpha)
            if alpha == 0 then
                RemoveBlip(sellerBlip)
                return
            end
        end
    end
end)

function GetStreet()
    local playerCoords = GetEntityCoords(PlayerPedId())
    streetName, _ = GetStreetNameAtCoord(playerCoords.x, playerCoords.y, playerCoords.z)
    playerStreet = GetStreetNameFromHashKey(streetName)
    return playerStreet
end

function getRandomOffset()
    local x = {
        [1] = 2.0,
        [2] = 2.2,
        [3] = 2.4,
        [4] = 2.6,
        [5] = 2.8,
        [6] = 3.0,
        [7] = -2.0,
        [8] = -2.2,
        [9] = -2.4,
        [10] = -2.6,
        [11] = -2.8,
        [12] = -3.0,
    }
    local y = {
        [1] = 2.0,
        [2] = 2.2,
        [3] = 2.4,
        [4] = 2.6,
        [5] = 2.8,
        [6] = 3.0,
        [7] = -2.0,
        [8] = -2.2,
        [9] = -2.4,
        [10] = -2.6,
        [11] = -2.8,
        [12] = -3.0,
    }
    return x[math.random(1,#x)], y[math.random(1,#y)]
end

Locales = {}

function translate(str, ...)
    if Locales[Config.Locale] ~= nil then
        if Locales[Config.Locale][str] ~= nil then
            return string.format(Locales[Config.Locale][str], ...)
        else
            return 'Translation [' .. Config.Locale .. '][' .. str .. '] does not exist'
        end
    else
        return 'Locale [' .. Config.Locale .. '] does not exist'
    end
end

function _U(str, ...)
    return tostring(translate(str, ...):gsub("^%l", string.upper))
end
