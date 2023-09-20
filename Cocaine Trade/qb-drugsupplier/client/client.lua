local QBCore = exports['qb-core']:GetCoreObject()
local isplayerinmission = false
CreateThread(function()
------Peds------
local Activeped = false
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(10)
        if not Activeped then
            local model = GetHashKey("a_m_o_beach_01")
            RequestModel(model)
            while not HasModelLoaded(model) do
            Citizen.Wait(10)
            end
local coords = vector4(-2166.17, 5198.67, 15.88, 132.12)
            local retval = CreatePed( 1, model, coords.x, coords.y, coords.z, coords.w, false, false)     
            print(model)
            FreezeEntityPosition(retval, true)
            FreezeEntityPosition(retval, true)
            SetEntityInvincible(retval, true)
            SetBlockingOfNonTemporaryEvents(retval, true) 
            TaskStartScenarioInPlace(retval, "WORLD_HUMAN_CLIPBOARD", 0,1)
            Activeped = true
        end
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------

------Targets------
exports['qb-target']:AddBoxZone('clean',vector3(870.39, -2314.45, 30.57), 2, 2, {   
    name = 'clean',
    useZ = 'true',
},
{
   options = {
   {
   event = 'ayham',
   icon = 'fa-solid fa-user-secret',
   label = 'Talk To drug supplier', 
   job = 'all',
   },
},
distance = 1.5
})
RegisterNetEvent("drug")
AddEventHandler("drug",function()
TriggerServerEvent("drug13")
end)

exports['qb-target']:AddBoxZone('clean23',vector3(-2166.23, 5198.59, 17.03), 1, 1, {
    name = 'clean23',
    useZ = 'true',
},
{
   options = {
   {
   event = 'deliver23',
   icon = 'fa-solid fa-user-secret',
   label = 'deliver pack', 
   job = 'all',
   },
},
distance = 1.5
}) 
-----------------------------------------------------------------------------------------------------------------------------------
------Events------
RegisterNetEvent("deliver23", function(data)
    
    local Menu = {

        {
            header = "dealer",
            isMenuHeader = true,
            icon = "fa-solid fa-user-secret"
        },
        {
            header = 'deliver Goods',
            txt = 'deliver the package and take your money',
            icon = 'fa-solid fa-user-secret',
            params = {
                event = 'market:client:SellItems',
                args = {
            message = 'This was called by clicking a button'
                }
            }
        }
    }
    exports['qb-menu']:openMenu(Menu)
end)

RegisterNetEvent("ayham800", function(data)
    isplayerinmission = true 
    if isplayerinmission then 
    local Menu = {

        {
            header = "𝐀𝐧𝐨𝐧𝐲𝐦𝐨𝐮𝐬",
            isMenuHeader = true,
            icon = "fa-solid fa-user-secret"
        },
        {
            header = 'take pack',
            txt = 'i will give you rare box ',
            icon = 'fa-solid fa-user-secret',
            params = {
                event = 'drug',
                args = {
            message = 'This was called by clicking a button'
                }
            }
        }
    }
    exports['qb-menu']:openMenu(Menu)
   
end
end)

RegisterNetEvent("ayham", function(data)
    
    if not isplayerinmission then 
 
        local Menu = {
    
            {
                header = "the supplier",
                isMenuHeader = true,
                icon = "fa-solid fa-user-secret"
            },
            {
                header = 'start mission',
                txt = 'your mission is to deliver the pack successfully',
                icon = 'fa-solid fa-user-secret',
                params = {
                    event = 'ayham800',
                    args = {
                message = 'This was called by clicking a button'
                    }
                }
            }
        }
        exports['qb-menu']:openMenu(Menu)  
    else
        QBCore.Functions.Notify("you are already in a mission", "error")
    
end
end)

RegisterNetEvent("market:client:SellItems", function()
    if isplayerinmission then 
    QBCore.Functions.Progressbar("sell_items", "price negotiation", 3000, false, true, {}, {}, {}, {},
        function() -- Done
            ClearPedTasks(PlayerPedId())
            TriggerServerEvent('market:server:SellItems2')
            isplayerinmission = false
        end, function() -- Cancel
        ClearPedTasks(PlayerPedId())
        QBCore.Functions.Notify("Canceled...", 'error')
    end)
else 
    QBCore.Functions.Notify("you are not in a mission", "error")
end
end)

RegisterNetEvent("drug", function(data)
    isplayerinmission = true
   SetNewWaypoint(-2165.897, 5197.8168)
   QBCore.Functions.Notify("go to the drop-off location", "success")
end)    
end)
-----------------------------------------------------------------------------------------------------------------------------------
------Blips------
local coord = vector3(829.89, -2404.62, 27.78)
CreateThread(function()
    local blip = AddBlipForCoord(coord.x, coord.y, coord.z)
    SetBlipSprite(blip, 66)
    SetBlipColour(blip, 83)

    BeginTextCommandSetBlipName("string")
    AddTextComponentString("unknown")
    EndTextCommandSetBlipName(blip)
    
end)
-----------------------------------------------------------------------------------------------------------------------------------


