QBCore = exports['qb-core']:GetCoreObject()

RegisterCommand('do', function(source, args, rawCommand)
    --local ctype = args[1] -- Assuming you want to get the first argument as ctype
    local ctype = table.concat(args, ' ')
    if not ctype then
        TriggerEvent('chat:addMessage', {
            color = {255, 0, 0},
            args = {"^1Error^7", "Usage: /do [ctype]"}
        })
        return
    end

    local message = "" .. ctype
    TriggerEvent('chat:addMessage', {
        color = {255, 0, 0},
        args = {"DO", message}
    })
    
    if type(ctype) == "table" then
        ctype = table.concat(ctype, ", ") -- Use a suitable separator between table elements
    end
    
    -- Now you can safely concatenate ctype with other strings
end, false)
