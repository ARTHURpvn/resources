local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")
Webhooks = module("vrp", "cfg/webhooks")
oC = {}
Tunnel.bindInterface("fluxo_toogle",oC)

local webhookToogle = Webhooks.toogle
local staff = false

local policiatoogle = {
	{['grupoter'] = 'PaisanaRecruta', ['grupoganhar'] = 'Recruta', ['policia'] = 'sim'},
	{['grupoter'] = 'PaisanaSoldado', ['grupoganhar'] = 'Soldado', ['policia'] = 'sim'},
	{['grupoter'] = 'PaisanaSargento', ['grupoganhar'] = 'Sargento', ['policia'] = 'sim'},
	{['grupoter'] = 'PaisanaTenente', ['grupoganhar'] = 'Tenente', ['policia'] = 'sim'},
	{['grupoter'] = 'PaisanaCapitão', ['grupoganhar'] = 'Capitão', ['policia'] = 'sim'},
	{['grupoter'] = 'PaisanaTenCoronel', ['grupoganhar'] = 'TenCoronel', ['policia'] = 'sim'},
	{['grupoter'] = 'PaisanaCoronel', ['grupoganhar'] = 'Coronel', ['policia'] = 'sim'},
	{['grupoter'] = 'PaisanaLiderPM', ['grupoganhar'] = 'LiderPM', ['policia'] = 'sim'},
	{['grupoter'] = 'PaisanaPRF', ['grupoganhar'] = 'PRF', ['policia'] = 'sim'},
	{['grupoter'] = 'LiderPRFPaisana', ['grupoganhar'] = 'LiderPRF', ['policia'] = 'sim'},	
	{['grupoter'] = 'PolicialCivil', ['grupoganhar'] = 'PaisanaCivil', ['policia'] = 'sim'},
	{['grupoter'] = 'LiderCivilPaisana', ['grupoganhar'] = 'LiderCivil', ['policia'] = 'sim'},
	{['grupoter'] = 'LiderROTAPaisana', ['grupoganhar'] = 'LiderROTA', ['policia'] = 'sim'},
	{['grupoter'] = 'PaisanaROTA', ['grupoganhar'] = 'ROTA', ['policia'] = 'sim'},
	{['grupoter'] = 'LiderExercitoPaisana', ['grupoganhar'] = 'LiderExercito', ['policia'] = 'sim'},
	{['grupoter'] = 'PaisanaExercito', ['grupoganhar'] = 'Exercito', ['policia'] = 'sim'},

	{['grupoter'] = 'PaisanaEnfermeiro', ['grupoganhar'] = 'Enfermeiro', ['policia'] = 'nao'},
	{['grupoter'] = 'PaisanaParamedico', ['grupoganhar'] = 'Paramedico', ['policia'] = 'nao'},
	{['grupoter'] = 'PaisanaMedico', ['grupoganhar'] = 'Medico', ['policia'] = 'nao'},
	{['grupoter'] = 'PaisanaDiretor', ['grupoganhar'] = 'DiretorHP', ['policia'] = 'nao'},

	{['grupoter'] = 'PaisanaCoronelFME', ['grupoganhar'] = 'CoronelEspecializado', ['policia'] = 'nao'},
	{['grupoter'] = 'PaisanaSubCoronelFME', ['grupoganhar'] = 'SubCoronelEspecializado', ['policia'] = 'nao'},

	{['grupoter'] = 'PaisanaCozinheiro', ['grupoganhar'] = 'Cozinheiro', ['policia'] = 'nao'},
	{['grupoter'] = 'PaisanaGerenteRestaurante', ['grupoganhar'] = 'GerenteRestaurante', ['policia'] = 'nao'},
	{['grupoter'] = 'PaisanaChefeCozinha', ['grupoganhar'] = 'ChefeCozinha', ['policia'] = 'nao'},

	{['grupoter'] = 'PaisanaRedlineChefe', ['grupoganhar'] = 'RedlineChefe', ['policia'] = 'nao'},
	{['grupoter'] = 'PaisanaRedline', ['grupoganhar'] = 'Redline', ['policia'] = 'nao'},
	{['grupoter'] = 'PaisanaredlineRecruta', ['grupoganhar'] = 'RedlineRecruta', ['policia'] = 'nao'},		
}

local stafftoogle = {
	{['grupoter'] = 'OFFPRESIDENTE', ['grupoganhar'] = 'PRESIDENTE', ['policia'] = 'nao'},
	{['grupoter'] = 'OFFCOORDENADOR', ['grupoganhar'] = 'COORDENADOR', ['policia'] = 'nao'},
	{['grupoter'] = 'OFFMOD', ['grupoganhar'] = 'MOD', ['policia'] = 'nao'},
	{['grupoter'] = 'OFFSUPORTE', ['grupoganhar'] = 'SUPORTE', ['policia'] = 'nao'},
}

RegisterServerEvent('servico:ver')
AddEventHandler('servico:ver', function()
	local user_id = vRP.getUserId(source)
	for k,v in pairs(policiatoogle) do
		if vRP.hasGroup(user_id,v.grupoter) or vRP.hasGroup(user_id,v.grupoganhar) then
			staff = false
			TriggerClientEvent('abrir:menu',source)
		end
	end
end)

RegisterServerEvent('staff:ver')
AddEventHandler('staff:ver', function()
	local user_id = vRP.getUserId(source)
	for k,v in pairs(stafftoogle) do
		if vRP.hasGroup(user_id,v.grupoter) or vRP.hasGroup(user_id,v.grupoganhar) then
			staff = true
			TriggerClientEvent('abrir:menu',source)
		end
	end
end)

RegisterServerEvent('policia:ver')
AddEventHandler('policia:ver', function()
	local user_id = vRP.getUserId(source)
	for k,v in pairs(stafftoogle) do
		if vRP.hasGroup(user_id,v.grupoter) or vRP.hasGroup(user_id,v.grupoganhar) then
			staff = true
			TriggerClientEvent('abrir:menu',source)
		end
	end
end)

function vRP.remEquip()
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
		vRPclient.setArmour(source,0)
		vRPclient._replaceWeapons(source,{["WEAPON_UNARMED"] = { ammo = 0 }})
	end
end

RegisterServerEvent('servico:entrar')
AddEventHandler('servico:entrar', function()
	local user_id = vRP.getUserId(source)
	local tocheck = policiatoogle
	if staff then tocheck = stafftoogle end
	for k,v in pairs(tocheck) do
		if vRP.hasGroup(user_id,v.grupoter) then
			vRP.addUserGroup(user_id,v.grupoganhar)
			if staff then vRP.removeUserGroup(user_id, v.grupoter) end
			TriggerClientEvent("Notify",source,"sucesso","Você entrou em serviço!")
			local identity = vRP.getUserIdentity(tonumber(user_id))
            PerformHttpRequest(webhookToogle, function(err, text, headers) end, 'POST', json.encode({
                embeds = {
                    { 
                        title = "REGISTRO DE ENTRAR EM SERVIÇO:",
                        thumbnail = {
                            url = "https://media.discordapp.net/attachments/854776258672066580/1060988031718391818/boneco-seguranca-do-trabalho-png.png?width=521&height=671"
                        }, 
                        fields = {
                            { 
                                name = "**IDENTIFICAÇÃO DO PLAYER QUE ENTROU EM SERVIÇO:**",
                                value = "**"..identity.name.." "..identity.firstname.."** [ **ID: "..user_id.."** ] \n⠀"
                            },
                            { 
                                name = "**CARGO:**",
                                value = "[ **"..v.grupoganhar.."** ] \n⠀"
                            },
        
                        }, 
                        footer = { 
                            text = os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S"),
                            icon_url = "https://media.discordapp.net/attachments/854776258672066580/1060988031718391818/boneco-seguranca-do-trabalho-png.png?width=521&height=671"
                        },
                        color = 15906321 
                    }
                }
            }), { ['Content-Type'] = 'application/json' })
			if v.policia == 'sim' then
				TriggerEvent('eblips:add',{ name = v.grupoganhar, src = source, color = 65 })
			end
		end
	end
end)
RegisterServerEvent('servico:sair')
AddEventHandler('servico:sair', function()
	local user_id = vRP.getUserId(source)
	local tocheck = policiatoogle
	if staff then tocheck = stafftoogle end
	for k,v in pairs(tocheck) do
		if vRP.hasGroup(user_id,v.grupoganhar) then
			vRP.removeUserGroup(user_id,v.grupoganhar) --
			if staff then vRP.removeUserGroup(user_id, v.grupoganhar) end
			vRP.remEquip()

			print("removido") --

			TriggerClientEvent("Notify",source,"sucesso","Você saiu de serviço!")
			TriggerClientEvent("Notify",source,"aviso","Seus equipamentos foram automáticamente guardados de volta no arsenal.",5000)
			local identity = vRP.getUserIdentity(tonumber(user_id))
            PerformHttpRequest(webhookToogle, function(err, text, headers) end, 'POST', json.encode({
                embeds = {
                    { 
                        title = "REGISTRO DE SAIR DE SERVIÇO:",
                        thumbnail = {
                            url = "https://media.discordapp.net/attachments/854776258672066580/1060988031718391818/boneco-seguranca-do-trabalho-png.png?width=521&height=671"
                        }, 
                        fields = {
                            { 
                                name = "**IDENTIFICAÇÃO DO PLAYER QUE SAIU DE SERVIÇO:**",
                                value = "**"..identity.name.." "..identity.firstname.."** [ **ID: "..user_id.."** ] \n⠀"
                            },
                            { 
                                name = "**CARGO:**",
                                value = "[ **"..v.grupoter.."** ] \n⠀"
                            },
        
                        }, 
                        footer = { 
                            text = os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S"),
                            icon_url = "https://media.discordapp.net/attachments/854776258672066580/1060988031718391818/boneco-seguranca-do-trabalho-png.png?width=521&height=671"
                        },
                        color = 15906321 
                    }
                }
            }), { ['Content-Type'] = 'application/json' })
			if v.policia == 'sim' then
				TriggerEvent('eblips:remove',source)
			end
		end
	end
end)

