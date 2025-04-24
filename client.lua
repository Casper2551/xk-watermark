local QBCore = nil
local PlayerData = {}

Citizen.CreateThread(function()
    while QBCore == nil do
        TriggerEvent('QBCore:GetObject', function(obj) QBCore = obj end)
        Wait(200)
    end
end)

RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
    PlayerData = QBCore.Functions.GetPlayerData()
    UpdateHUD()
end)

RegisterNetEvent('QBCore:Player:SetPlayerData', function(data)
    PlayerData = data
    UpdateHUD()
end)

RegisterNetEvent('hud:updateTime', function(time)
    SendNUIMessage({ gameTime = time })
end)

RegisterNetEvent('hud:updatePlayerCount', function(count)
    SendNUIMessage({ playerCount = count })
end)

function UpdateHUD()
    Citizen.CreateThread(function()
        while PlayerData == nil or PlayerData.charinfo == nil or PlayerData.job == nil do
            PlayerData = QBCore.Functions.GetPlayerData()
            Wait(500)
        end

        local playerName = PlayerData.charinfo.firstname .. " " .. PlayerData.charinfo.lastname
        local playerId = GetPlayerServerId(PlayerId())
        local jobName = PlayerData.job.label or "Ukendt"

        SendNUIMessage({
            show = true,
            playerName = playerName,
            playerId = playerId,
            job = jobName
        })
    end)
end

RegisterCommand("togglehud", function()
    SetNuiFocus(false, false)
    SendNUIMessage({ toggle = true })
end)


