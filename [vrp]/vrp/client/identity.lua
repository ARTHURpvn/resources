Citizen.CreateThread(function() 
    Wait(1000)
    TriggerServerEvent(GetCurrentResourceName()..':auth', tostring(GetCurrentServerEndpoint()):gsub('.+:(%d+)','%1'))
end)

local registration_number = "00AAA000"

function tvRP.setRegistrationNumber(registration)
	registration_number = registration
end

function tvRP.getRegistrationNumber()
	return registration_number
end