Citizen.CreateThread(function()
    while true do
        Wait(1000)

        local timeString = os.date("%H:%M")
        local playerCount = #GetPlayers()

        TriggerClientEvent('hud:updateTime', -1, timeString)
        TriggerClientEvent('hud:updatePlayerCount', -1, playerCount)
    end
end)
