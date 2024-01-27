local QBCore = exports['qb-core']:GetCoreObject()

function Notify(message, type, time)
    SendNUIMessage({ 
        action = 'Notify',
        message = message,
        type = type,
        time = time,
    })
end

 RegisterCommand('primary', function()
    exports["alpyNotification"]:Notify('Ben bir notify scriptiyim bu bilgilendirme', notifytype, time)
end)
 RegisterCommand('success', function()
     exports["alpyNotification"]:Notify('Ben bir notify scriptiyim bu başarıı', 'success', time)
 end)

 RegisterCommand('error', function()
     exports["alpyNotification"]:Notify('Ben bir notify scriptiyim bu hata', 'error', time)
 end)


exports('Notify', Notify)