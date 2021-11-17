ESX = nil
TriggerEvent(Config.SharedObjectName, function(obj) ESX = obj end)

function addMoney(xPlayer, money)
	if Config.BlackMoney then
		xPlayer.addAccountMoney('black_money', money)
	else
		xPlayer.addMoney(money)
	end
end

function removeItem(xPlayer, item, qty)
	xPlayer.removeInventoryItem(item, qty)
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
