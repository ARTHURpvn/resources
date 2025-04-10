local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
oC = Tunnel.getInterface("fluxo_toogle")
-------------------------------------------------------------------------------------------------
--[ MENU ]---------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------

local menuactive = false
function ToggleActionMenu()
	menuactive = not menuactive
	if menuactive then
		SetNuiFocus(true,true)
		SendNUIMessage({ showmenu = true })
	else
		SetNuiFocus(false)
		SendNUIMessage({ hidemenu = true })
	end
end
-------------------------------------------------------------------------------------------------
--[ BOTÕES ]-------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------
RegisterNUICallback("ButtonClick",function(data,cb)
	if data == "entrar-servico" then
		TriggerEvent("fechar-nui")
		DoScreenFadeOut(1000)
		SetTimeout(2150, function()
			DoScreenFadeIn(1000)
			TriggerServerEvent('servico:entrar')
		end)
	elseif data == 'sair-servico' then
		TriggerEvent("fechar-nui")
		DoScreenFadeOut(1000)
		SetTimeout(2150, function()
			DoScreenFadeIn(1000)
			TriggerServerEvent('servico:sair')
		end)
	elseif data == "fechar" then
		ToggleActionMenu()
		onmenu = false
	end
end)

RegisterNetEvent("fechar-nui")
AddEventHandler("fechar-nui", function()
	ToggleActionMenu()
	onmenu = false
end)


RegisterCommand('+fluxokey', function()
	TriggerServerEvent('servico:ver')
end, false)
RegisterKeyMapping('+fluxokey', 'Abrir menu de serviço', 'keyboard', 'f5')


RegisterCommand('staff', function()
	TriggerServerEvent('staff:ver')
end, false)

RegisterNetEvent('abrir:menu')
AddEventHandler('abrir:menu', function()
	ToggleActionMenu()
	onmenu = true
end)

RegisterCommand('policia', function()
	TriggerServerEvent('policia:ver')
end, false)



         