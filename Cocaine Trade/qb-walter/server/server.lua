local QBCore = exports['qb-core']:GetCoreObject()
--------- events ---------
RegisterServerEvent('pan-3',function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local removeitem = Player.Functions.RemoveItem("dirty_money", 15)

    if removeitem then
       Player.Functions.AddItem('cocaine_pack', 1)
       TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['cocaine_pack'], "add") 
       TriggerClientEvent('QBCore:Notify', src, "you recived cocaine pack", 'success')
    else
            TriggerClientEvent('QBCore:Notify', src, "you dont have enough dirty money to exchange", 'error')
    end
end)

RegisterServerEvent('pan-10',function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local removeitem = Player.Functions.RemoveItem("cocaine_pack", 1)

    if removeitem then
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['cocaine_pack'], "remove") 
       Player.Functions.AddMoney("bank", 8500)
       TriggerClientEvent('QBCore:Notify', src, "you got 8500", 'success')
    else
            TriggerClientEvent('QBCore:Notify', src, "you dont have cocaine pack to sell", 'error')
    end
end)

QBCore.Functions.CreateCallback("pan-payment", function(source, cb)
    local src = source
    local xPlayer = QBCore.Functions.GetPlayer(src)
    if xPlayer.Functions.RemoveMoney("cash", 500, "Car Rental") then

        cb(true)
    else
        cb(false)
    end
end)

    QBCore.Functions.CreateCallback("pan-payment-2", function(source, cb)
        local src = source
        local xPlayer = QBCore.Functions.GetPlayer(src)
        if xPlayer.Functions.RemoveMoney("cash", 1500, "to start mission") then
    
            cb(true)
        else
            cb(false)
        end
    end)

    QBCore.Functions.CreateCallback("pan-payment-3", function(source, cb)
        local src = source
        local xPlayer = QBCore.Functions.GetPlayer(src)
        if xPlayer.Functions.RemoveMoney("cash", 500, "cocaine") then
    
            cb(true)
        else
            cb(false)
        end
    end)

-------------------------------------------------------------------------------------------------------------------------------------------------------