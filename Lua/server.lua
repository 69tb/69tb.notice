local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP", GetCurrentResourceName())

RegisterCommand("채팅공지", function(source, args, rawCommand)
    -- [ 채팅공지 ] 로 되어있는거를 변경하시면 /채팅공지 외에 원하는 대로 커스텀이 가능합니다.
    local message = table.concat(args, " ")

    if message ~= "" then
        TriggerClientEvent("sendNotice", -1, message)
    else
        vRPclient.notify(source, {"공지 메시지가 비어 있습니다."})
    end
end, false)