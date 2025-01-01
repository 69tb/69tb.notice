RegisterNetEvent("sendNotice")
AddEventHandler("sendNotice", function(message)
    SetNuiFocus(false, false)
    SendNUIMessage({
        type = "displayNotice",
        message = message
    })
end)