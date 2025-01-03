local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP", GetCurrentResourceName())
Config = module(GetCurrentResourceName(), "config")

RegisterCommand("채팅공지", function(source, args, rawCommand)
    local user_id = vRP.getUserId({source})
    if user_id and vRP.hasPermission({user_id, Config.Chatperm}) then
        local message = table.concat(args, " ")

        if message ~= "" then
            TriggerClientEvent("sendNotice", -1, message)
        else
            vRPclient.notify(source, {"~r~공지 메시지가 비어 있습니다."})
        end
    else
        vRPclient.notify(source, {"~r~권한이 없습니다."})
    end
end, false)
