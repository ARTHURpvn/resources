local cfg = module("cfg/player_state")

AddEventHandler("vRP:playerSpawn",function(user_id,source,first_spawn)
	local source = source
	local user_id = vRP.getUserId(source)
	local data = vRP.getUserDataTable(user_id)
	vRPclient._setFriendlyFire(source,true)

	if first_spawn then
		if data.colete then
			vRPclient.setArmour(source,data.colete)
		end

		if data.customization == nil then
			data.customization = cfg.default_customization
		end

		if data.position then
			vRPclient.teleport(source,data.position.x,data.position.y,data.position.z)
		end

		if data.customization then
			vRPclient.setCustomization(source,data.customization) 
			if data.weapons then
				local valor = vRP.getUData(user_id, 'FxF:userWeapons') or nil
				local weapons = json.decode(valor) or nil
				local policial = vRP.hasPermission(user_id, 'policia.permissao')
				if not policial then
					if weapons ~= nil and weapons then
						vRPclient._clearWeapons(source)
						vRPclient._giveWeapons(source, weapons, true, true)
						-- for k,v in pairs(weapons) do
						-- 	vRP.elementGebenInventar(user_id,k,1,false)
						-- 	if v.ammo > 0 then
						-- 		vRP.elementGebenInventar(user_id,vRP.itemAmmoList(k),v.ammo,false)
						-- 	end
						-- end
					end
					-- TriggerClientEvent('Notify', source, 'importante', 'Para a sua segurança, suas armas foram guardadas em seu inventário!',15000)
				else
					vRPclient._clearWeapons(source)
					TriggerClientEvent('Notify', source , 'importante', 'Suas armas foram guardadas pelo governo no arsenal policial!',15000)
				end

				if data.health then
					vRPclient.setHealth(source,data.health)
					SetTimeout(5000,function()
						if vRPclient.isInComa(source) then
							vRPclient.killComa(source)
						end
					end)
				end
			end
		else
			if data.weapons then
				local valor = vRP.getUData(user_id, 'FxF:userWeapons') or nil
				local weapons = json.decode(valor) or nil
				local policial = vRP.hasPermission(user_id, 'policia.permissao')
				if not policial then
					if weapons ~= nil and weapons then
						vRPclient._clearWeapons(source)
						vRPclient._giveWeapons(source, weapons, true, true)
						-- for k,v in pairs(weapons) do
						-- 	vRP.elementGebenInventar(user_id,k,1,false)
						-- 	if v.ammo > 0 then
						-- 		vRP.elementGebenInventar(user_id,vRP.itemAmmoList(k),v.ammo,false)
						-- 	end
						-- end
					end
					-- TriggerClientEvent('Notify', source, 'importante', 'Para a sua segurança, suas armas foram guardadas em seu inventário!',15000)
				else
					vRPclient._clearWeapons(source)
					TriggerClientEvent('Notify', source , 'importante', 'Suas armas foram guardadas pelo governo no arsenal policial!',15000)
				end
			end

			if data.health then
				vRPclient.setHealth(source,data.health)
			end
		end
	else
		vRPclient._setHandcuffed(source,false)

		if not vRP.hasPermission(user_id,"mochila.permissao") then
			data.gaptitudes = {}
		end

		if data.customization then
			vRPclient._setCustomization(source,data.customization)
		end
	end
	
	vRPclient._playerStateReady(source,true)
end)

function tvRP.updatePos(x,y,z)
	local user_id = vRP.getUserId(source)
	if user_id then
		local data = vRP.getUserDataTable(user_id)
		local tmp = vRP.getUserTmpTable(user_id)
		if data and (not tmp or not tmp.home_stype) then
			data.position = { x = tonumber(x), y = tonumber(y), z = tonumber(z) }
		end
	end
end

function tvRP.updateArmor(armor)
	local user_id = vRP.getUserId(source)
	if user_id then
		local data = vRP.getUserDataTable(user_id)
		if data then
			data.colete = armor
		end
	end
end

function tvRP.updateWeapons(weapons)
	local user_id = vRP.getUserId(source)
	if user_id then
		local data = vRP.getUserDataTable(user_id)
		if data then
			data.weapons = weapons
		end
	end
end

function tvRP.updateCustomization(customization)
	local user_id = vRP.getUserId(source)
	if user_id then
		local data = vRP.getUserDataTable(user_id)
		if data then
			data.customization = customization
		end
	end
end

function tvRP.updateHealth(health)
	local user_id = vRP.getUserId(source)
	if user_id then
		local data = vRP.getUserDataTable(user_id)
		if data then
			data.health = health
		end
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- MALA
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("trymala")
AddEventHandler("trymala",function(nveh)
	TriggerClientEvent("syncmala",-1,nveh)
end)

------- HOMES -----------
function vRP.atualizarPosicao(user_id,x,y,z)
    local data = vRP.getUserDataTable(user_id)
    if user_id then
        if data then
            data.position = { x = x, y = y, z = z }
        end
    end
end 

