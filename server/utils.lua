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
