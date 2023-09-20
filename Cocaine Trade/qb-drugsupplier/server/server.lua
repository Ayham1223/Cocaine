local QBCore = exports['qb-core']:GetCoreObject()
--------- events ---------
RegisterServerEvent("drug13", function()
local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.AddItem("suspicious_pack", 1)
end)

    RegisterServerEvent('market:server:SellItems2', function()
        local Player = QBCore.Functions.GetPlayer(source)
        -- local price = 0
    
        if Player.PlayerData.items ~= nil and next(Player.PlayerData.items) ~= nil then
            for i = 1, #Player.PlayerData.items do
                if Player.PlayerData.items[i] ~= nil then
                    if Config.SellableItems[Player.PlayerData.items[i].name] ~= nil then 
                        -- price = price + (Config.SellableItems[Player.PlayerData.items[i].name] * Player.PlayerData.items[i].amount)
                        Player.Functions.RemoveItem(Player.PlayerData.items[i].name, Player.PlayerData.items[i].amount)
                        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items[Player.PlayerData.items[i].name], "remove")
                        Player.Functions.AddItem("dirty_money", 3)
                        TriggerClientEvent('QBCore:Notify', src, "you recived dirty money", 'success')
                    end
                end
            end
        end
    end)
