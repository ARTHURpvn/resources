-----------------------------------------------------------------------------------------------------------------------------------------
-- ITEMLIST
-----------------------------------------------------------------------------------------------------------------------------------------
local cfgItems = module("cfg/items")
local itemlist = cfgItems.items
-----------------------------------------------------------------------------------------------------------------------------------------
-- GENERATE:ADVTOOLBOX
-----------------------------------------------------------------------------------------------------------------------------------------
for i = 1,99 do
	itemlist["toolboxes"..i] = {
		index = "toolbox",
		name = "+ Caixa de Ferramentas",
		type = "use",
		weight = 5.0
	}
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- ALLITEMS
-----------------------------------------------------------------------------------------------------------------------------------------
function vRP.GetAllItems()
	if itemlist then 
		return itemlist
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- ITEMBODYLIST
-----------------------------------------------------------------------------------------------------------------------------------------
function vRP.itemBodyList(item)
	if itemlist[item] then
		return itemlist[item]
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- ITEMINDEXLIST
-----------------------------------------------------------------------------------------------------------------------------------------
function vRP.itemIndexList(item)
	if itemlist[item] then
		return itemlist[item].index
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- ITEMNAMELIST
-----------------------------------------------------------------------------------------------------------------------------------------
function vRP.itemNameList(item)
	if itemlist[item] then
		return itemlist[item][1]
	end
	return "Deleted"
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- ITEMTYPELIST
-----------------------------------------------------------------------------------------------------------------------------------------
function vRP.itemTypeList(item)
	if itemlist[item] then
		return itemlist[item][2]
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- ITEMAMMOLIST
-----------------------------------------------------------------------------------------------------------------------------------------
function vRP.itemAmmoList(item)
	if itemlist[item] then
		return itemlist[item].ammo
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- ITEMWEIGHTLIST
-----------------------------------------------------------------------------------------------------------------------------------------
function vRP.getItemWeight(item)
	if itemlist[item] then
		return itemlist[item][3]
	end
	return 0
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- COMPUTEINVWEIGHT
-----------------------------------------------------------------------------------------------------------------------------------------
function vRP.getInventoryWeight(user_id)
	local weight = 0
	local inventory = vRP.getInventory(user_id)
	if inventory then
		for k,v in pairs(inventory) do
			if vRP.itemBodyList(v.item) then
				weight = weight + vRP.getItemWeight(v.item) * parseInt(v.amount)
			end
		end
		return weight
	end
	return 0
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- COMPUTECHESTWEIGHT
-----------------------------------------------------------------------------------------------------------------------------------------
function vRP.computeChestWeight(items)
	local weight = 0
	for k,v in pairs(items) do
		if vRP.itemBodyList(k) then
			weight = weight + vRP.getItemWeight(k) * parseInt(v.amount)
		end
	end
	return weight
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- GETINVENTORYITEMAMOUNT
-----------------------------------------------------------------------------------------------------------------------------------------
function vRP.getInventoryItemAmount(user_id,idname)
	local data = vRP.getInventory(user_id)
	if data then
		for k,v in pairs(data) do
			if v.item == idname then
				return parseInt(v.amount)
			end
		end
	end
	return 0
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- SWAPSLOT
-----------------------------------------------------------------------------------------------------------------------------------------
function vRP.swapSlot(user_id,slot,target)
	local data = vRP.getInventory(user_id)
	if data then
		local temp = data[tostring(slot)]
		data[tostring(slot)] = data[tostring(target)]
		data[tostring(target)] = temp
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- elementGebenInventar
-----------------------------------------------------------------------------------------------------------------------------------------
function vRP.elementGebenInventar(user_id,idname,amount,notify,slot)
	local data = vRP.getInventory(user_id)
	if data and parseInt(amount) > 0 then
		if notify == nil then notify = true end
		if not slot then
			local initial = 0
			repeat
				initial = initial + 1
			until data[tostring(initial)] == nil or (data[tostring(initial)] and data[tostring(initial)].item == idname)
			initial = tostring(initial)
			
			if data[initial] == nil then
				data[initial] = { item = idname, amount = parseInt(amount) }
			elseif data[initial] and data[initial].item == idname then
				data[initial].amount = parseInt(data[initial].amount) + parseInt(amount)
			end


			if notify and vRP.itemBodyList(idname) then
				TriggerClientEvent("itensNotify",vRP.getUserSource (user_id), {"RECEBEU", idname, parseInt(amount), vRP.itemNameList(idname)})
			else
				TriggerClientEvent( "Notify", source, "negado", "Este item <b>"..idname.."</b> não existe cadastrado na base.", 7000 )
			end
		else
			slot = tostring(slot)

			if data[slot] then
				if data[slot].item == idname then
					local oldAmount = parseInt(data[slot].amount)
					data[slot] = { item = idname, amount = parseInt(oldAmount) + parseInt(amount) }
				end
			else
				data[slot] = { item = idname, amount = parseInt(amount) }
			end

			if notify and vRP.itemBodyList(idname) then
				TriggerClientEvent("itensNotify",vRP.getUserSource (user_id), {"RECEBEU", idname, parseInt(amount), vRP.itemNameList(idname)})
			end
		end
	end
end

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- --#giveInventoryItem
-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- function vRP.giveInventoryItem(user_id,idname,amount)
-- 	local amount = parseInt(amount)
-- 	local data = vRP.getUserDataTable(user_id)
-- 	if data and amount > 0 then
-- 		local entry = data.inventory[idname]
-- 		if entry then
-- 			entry.amount = entry.amount + amount
-- 		else
-- 			data.inventory[idname] = { amount = amount }
-- 		end
-- 	end
-- end

-----------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------
-- TRYGETINVENTORYITEM
-----------------------------------------------------------------------------------------------------------------------------------------
function vRP.tryGetInventoryItem(user_id,idname,amount,notify,slot)
	local data = vRP.getInventory(user_id)
	if data then
		if not slot then
			for k,v in pairs(data) do
				if v.item == idname and parseInt(v.amount) >= parseInt(amount) then
					v.amount = parseInt(v.amount) - parseInt(amount)

					if parseInt(v.amount) <= 0 then
						data[k] = nil
					end

					if notify and vRP.itemBodyList(idname) then
						TriggerClientEvent("itensNotify",vRP.getUserSource (user_id), {"REMOVIDO", idname, parseInt(amount), vRP.itemNameList(idname)})
					end
					return true
				end
			end
		else
			local slot  = tostring(slot)

			if data[slot] and data[slot].item == idname and parseInt(data[slot].amount) >= parseInt(amount) then
				data[slot].amount = parseInt(data[slot].amount) - parseInt(amount)

				if parseInt(data[slot].amount) <= 0 then
					data[slot] = nil
				end

				if notify and vRP.itemBodyList(idname) then
					TriggerClientEvent("itensNotify",vRP.getUserSource (user_id), {"REMOVIDO", idname, parseInt(amount), vRP.itemNameList(idname)})
				end
				return true
			end
		end
	end

	return false
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- REMOVEINVENTORYITEM
-----------------------------------------------------------------------------------------------------------------------------------------
function vRP.removeInventoryItem(user_id,idname,amount,notify)
	local data = vRP.getInventory(user_id)
	if data then
		for k,v in pairs(data) do
			if v.item == idname and parseInt(v.amount) >= parseInt(amount) then
				v.amount = parseInt(v.amount) - parseInt(amount)

				if parseInt(v.amount) <= 0 then
					data[k] = nil
				end

				if notify and vRP.itemBodyList(idname) then
					TriggerClientEvent("itensNotify",vRP.getUserSource (user_id), {"REMOVIDO", idname, parseInt(amount), vRP.itemNameList(idname)})
				end

				break
			end
		end
	end
end
-- -----------------------------------------------------------------------------------------------------------------------------------------
-- -- CREATEDURABILITY
-- -----------------------------------------------------------------------------------------------------------------------------------------
-- function vRP.createDurability(itemName)
-- 	local advFile = LoadResourceFile("logsystem","toolboxes.json")
-- 	local advDecode = json.decode(advFile)

-- 	if advDecode[itemName] then
-- 		advDecode[itemName] = advDecode[itemName] - 1

-- 		if advDecode[itemName] <= 0 then
-- 			advDecode[itemName] = nil
-- 			vRP.removeInventoryItem(user_id,itemName,1,true)
-- 		end
-- 	else
-- 		advDecode[itemName] = 9
-- 	end

-- 	SaveResourceFile("logsystem","toolboxes.json",json.encode(advDecode),-1)
-- end
-----------------------------------------------------------------------------------------------------------------------------------------
-- ACTIVED
-----------------------------------------------------------------------------------------------------------------------------------------
local actived = {}
local activedAmount = {}
Citizen.CreateThread(function()
	while true do
		local slyphe = 500
		if actived then
			slyphe = 100 
			for k,v in pairs(actived) do
				if actived[k] > 0 then
					actived[k] = v - 1
					if actived[k] <= 0 then
						actived[k] = nil
					end
				end
			end
		end
		Citizen.Wait(slyphe)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- VARLOGS
-----------------------------------------------------------------------------------------------------------------------------------------
local policeLogs = ""
-----------------------------------------------------------------------------------------------------------------------------------------
-- TRYCHESTITEM
-----------------------------------------------------------------------------------------------------------------------------------------
function vRP.tryChestItem(user_id,chestData,itemName,amount,slot)
	if actived[user_id] == nil then
		actived[user_id] = 1
		local data = vRP.getSData(chestData)
		local items = json.decode(data) or {}
		if data and items ~= nil then
			if items[itemName] ~= nil and parseInt(items[itemName].amount) >= parseInt(amount) then

				if parseInt(amount) > 0 then
					activedAmount[user_id] = parseInt(amount)
				else
					activedAmount[user_id] = parseInt(items[itemName].amount)
				end

				local new_weight = vRP.getInventoryWeight(user_id) + vRP.getItemWeight(itemName) * parseInt(activedAmount[user_id])
				if new_weight <= vRP.getInventoryMaxWeight(user_id) then
					vRP.elementGebenInventar(user_id,itemName,parseInt(activedAmount[user_id]),true,slot)

					items[itemName].amount = parseInt(items[itemName].amount) - parseInt(activedAmount[user_id])

					if chestData == "chest:Police" then
						vRP.createWeebHook(policeLogs,"```PASSAPORTE: "..user_id.." ( RETIROU )\nITEM: "..vRP.format(parseInt(activedAmount[user_d])).."x "..vRP.itemNameList(itemName).."```")
					end

					if parseInt(items[itemName].amount) <= 0 then
						items[itemName] = nil
					end

					vRP.setSData(chestData,json.encode(items))
					return true
				end
			end
		end
	end
	return false
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- STORECHESTITEM
-----------------------------------------------------------------------------------------------------------------------------------------
function vRP.storeChestItem(user_id,chestData,itemName,amount,chestWeight,slot)
	if actived[user_id] == nil then
		actived[user_id] = 1
		local slot = tostring(slot)
		local data = vRP.getSData(chestData)
		local items = json.decode(data) or {}
		if data and items ~= nil then

			if parseInt(amount) > 0 then
				activedAmount[user_id] = parseInt(amount)
			else
				local inv = vRP.getInventory(user_id)
				if inv[slot] then
					activedAmount[user_id] = parseInt(inv[slot].amount)
				end
			end

			local new_weight = vRP.computeChestWeight(items) + vRP.getItemWeight(itemName) * parseInt(activedAmount[user_id])
			if new_weight <= chestWeight then
				if vRP.tryGetInventoryItem(user_id,itemName,parseInt(activedAmount[user_id]),true,slot) then
					if items[itemName] ~= nil then
						items[itemName].amount = parseInt(items[itemName].amount) + parseInt(activedAmount[user_id])
					else
						items[itemName] = { amount = parseInt(activedAmount[user_id]) }
					end

					if chestData == "chest:Police" then
						vRP.createWeebHook(policeLogs,"```PASSAPORTE: "..user_id.." ( GUARDOU )\nITEM: "..vRP.format(parseInt(activedAmount[user_id])).."x "..vRP.itemNameList(itemName).."```")
					end

					vRP.setSData(chestData,json.encode(items))
					return true
				end
			end
		end
	end
	return false
end

AddEventHandler("vRP:playerJoin", function(user_id,source,name)
	local data = vRP.getUserDataTable(user_id)
	if not data.inventorys then
		data.inventorys = {}
	end
end)



------------ CLEAR INVENTORY -> LIMPAR INVENTÁRIO


RegisterServerEvent("clearInventory")
AddEventHandler("clearInventory",function()
    local source = source
    local user_id = vRP.getUserId(source)
    if user_id then
        local data = vRP.getUserDataTable(user_id)
        if data then
            data.inventorys = {}
        end

        
        vRPclient._clearWeapons(source)
        vRPclient._setHandcuffed(source,false)

        if not vRP.hasPermission(user_id,"mochila.permissao") then
            vRP.setExp(user_id,"physical","strength",20)
        end
    end
end)

local cache = {}
cache['inArena'] = {}

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- SETARENA
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function vRP.setArena(source, status)
	if status then
		cache['inArena'][source] = true
	else
		cache['inArena'][source] = nil
	end
end

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- CRIAR ITENS
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
local cfg = module("cfg/items")

vRP.items = {}

function vRP.defInventoryItem(idname, name, tipo, weight, fome, sede)
	if weight == nil then
		weight = 0
	end
	
	local item = { name = name, tipo = tipo, weight = weight, fome = fome, sede = sede }
	vRP.items[idname] = item
end


for k,v in pairs(cfg.items) do
    vRP.defInventoryItem(k,v[1],v[2],v[3],v[4],v[5])
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- FUNCTIONS PADROES
-----------------------------------------------------------------------------------------------------------------------------------------
function vRP.getAllItens()
	return vRP.items
end

function vRP.getItemName(idname)
	local args = vRP.parseItem(idname)
	local item = vRP.items[args[1]]
	if item then
		return vRP.computeItemName(item,args)
	end
	return args[1]
end

function vRP.getItemWeight(idname)
	local args = vRP.parseItem(idname)
	local item = vRP.items[args[1]]
	if item then
		return vRP.computeItemWeight(item,args)
	end
	return 0
end

function vRP.itemFood(args)
    local item = vRP.items[args]
    if item then
        return item.fome,item.sede
    end
end

function vRP.computeItemName(item,args)
	if type(item.name) == "string" then
		return item.name
	else
		return item.name(args)
	end
end

function vRP.computeItemWeight(item,args)
	if type(item.weight) == "number" then
		return item.weight
	else
		return item.weight(args)
	end
end

function vRP.getItemType(args)
	local item = vRP.items[args]
	if item then
		return item.tipo
	end
end

function vRP.computeInvWeight(user_id)
	local weight = 0
	local inventory = vRP.getInventory(user_id)
	if inventory then
		for k in pairs(inventory) do
			if vRP.items[inventory[k].item] then
				weight = weight + vRP.getItemWeight(inventory[k].item) * parseInt(inventory[k].amount)
			end
		end
		return weight
	end
	return 0
end 

function vRP.computeItemsWeight(items)
	local weight = 0
	if items then
		for k in pairs(items) do
			if vRP.items[items[k].item] then
				weight = weight + vRP.getItemWeight(items[k].item) * parseInt(items[k].amount)
			end
		end
		return weight
	end
	return 0
end 

function vRP.getInventoryItemAmount(user_id,idname)
	local data = vRP.getInventory(user_id)
	if data then
		for k in pairs(data) do
			if data[k].item == idname then
				return parseInt(data[k].amount)
			end
		end
	end
	return 0
end

function vRP.getItemInSlot(user_id, idname, target)
	local data = vRP.getInventory(user_id)
	if data then
		for k in pairs(data) do
			if data[k].item == idname then
				return k
			end
		end
	end
	return target
end

function vRP.getInventoryMaxWeight(user_id)
	local data = vRP.getUserDataTable(user_id)
	if data then
		local mochila = data.mochila
		
		if user_id then
			if vRP.hasGroup(user_id, "developer") or vRP.hasGroup(user_id, "developeroff") then 
				return 1000000+30*tonumber(mochila.quantidade)
			else
				return 10+30*tonumber(mochila.quantidade)
			end
		end
	end
end

function vRP.clearInventory(user_id)
	local data = vRP.getUserDataTable(user_id)
	if data then
		data.inventorys = {}
	end
end

function vRP.parseItem(idname)
	return splitString(idname,"|")
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- FUNÇÕES DO INVENTARIO
-----------------------------------------------------------------------------------------------------------------------------------------
function vRP.elementGebenInventar(user_id,idname,amount,notify, slot)
	local source = vRP.getUserSource(user_id)
	local data = vRP.getInventory(user_id)
	if user_id then
		if idname ~= "money" then
			if source then
				if cache['inArena'][source] ~= nil then
					return
				end
			end
		end

		if vRP.items[idname] == nil and idname then
			TriggerClientEvent( "Notify", source, "negado", "Este item <b>"..idname.."</b> não existe cadastrado na base.", 7000 )
			return
		end
		
		if data and parseInt(amount) > 0 then
			if not slot then
				local initial = 0
				repeat
					initial = initial + 1
				until data[tostring(initial)] == nil or (data[tostring(initial)] and data[tostring(initial)].item == idname)
				
				initial = tostring(initial)
				
				if data[initial] == nil then
					data[initial] = { item = idname, amount = parseInt(amount) }
				elseif data[initial] and data[initial].item == idname then
					data[initial].amount = parseInt(data[initial].amount) + parseInt(amount)
				end

				if notify then
					TriggerClientEvent("itensNotify",source,{"RECEBEU", idname, parseInt(amount), vRP.getItemName(idname)})
				end
			else
				slot = tostring(slot)

				if data[slot] then
					if data[slot].item == idname then
						local oldAmount = parseInt(data[slot].amount)
						data[slot] = { item = idname, amount = parseInt(oldAmount) + parseInt(amount) }
					end
				else
					data[slot] = { item = idname, amount = parseInt(amount) }
				end

				if notify then
					TriggerClientEvent("itensNotify",source,{"RECEBEU", idname, parseInt(amount), vRP.getItemName(idname)})
				end
			end
		end
	end
end

function vRP.tryGetInventoryItem(user_id,idname,amount,notify,slot)
	local source = vRP.getUserSource(user_id)
	local data = vRP.getInventory(user_id)
	if user_id then
		if data then
			if not slot then
				for k,v in pairs(data) do
					if v.item == idname and parseInt(v.amount) >= parseInt(amount) then
						v.amount = parseInt(v.amount) - parseInt(amount)

						if parseInt(v.amount) <= 0 then
							data[k] = nil
						end

						if notify then
							TriggerClientEvent("itensNotify",source,{"REMOVEU", idname, parseInt(amount), vRP.getItemName(idname)})
						end

						return true
					end
				end
			else
				local slot  = tostring(slot)

				if data[slot] and data[slot].item == idname and parseInt(data[slot].amount) >= parseInt(amount) then
					data[slot].amount = parseInt(data[slot].amount) - parseInt(amount)

					if parseInt(data[slot].amount) <= 0 then
						data[slot] = nil
					end

					if notify then
						TriggerClientEvent("itensNotify",source,{"REMOVEU", idname, parseInt(amount), vRP.getItemName(idname)})
					end
					
					return true
				end
			end
		end
	end
	return false
end

function vRP.removeInventoryItem(user_id,idname,amount)
	local source = vRP.getUserSource(user_id)
	local data = vRP.getInventory(user_id)
	if user_id then
		if data then
			for k,v in pairs(data) do
				if v.item == idname and parseInt(v.amount) >= parseInt(amount) then
					v.amount = parseInt(v.amount) - parseInt(amount)

					if parseInt(v.amount) <= 0 then
						data[k] = nil
					end
					break
				end
			end
			
			TriggerClientEvent("itensNotify",source,{"REMOVEU", idname, parseInt(amount), vRP.getItemName(idname)})
		end
	end
end

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- SISTEMA DE MOCHILA
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function vRP.addMochila(user_id)
	local data = vRP.getUserDataTable(user_id)
	local mochila = data.mochila

	if data then
		if not mochila.perder then
			mochila.perder = 0
		end

		data.mochila = { quantidade = mochila.quantidade+1, perder = mochila.perder }
	end
end

function vRP.remMochila(user_id)
	local data = vRP.getUserDataTable(user_id)
	if data then
		if data.mochila then

			if not data.mochila.perder then
				data.mochila.perder = 0
			end

			data.mochila = { quantidade = 0, perder = data.mochila.perder }
		end
	end
end

function vRP.getMochilaAmount(user_id)
	local data = vRP.getUserDataTable(user_id)
	if data then
		if data.mochila then
			return (data.mochila.quantidade or 0)
		end
	end

	return 0
end

function vRP.atualizarMochila(user_id, time)
	local data = vRP.getUserDataTable(user_id)
	local mochila = data.mochila

	if data then
		data.mochila = { quantidade = mochila.quantidade, perder = time }
	end
end

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- EVENTOS
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
AddEventHandler("vRP:playerJoin", function(user_id,source,name)
	local data = vRP.getUserDataTable(user_id)

	if not data.inventory then
		data.inventory = {}
	end

	if not data.mochila then
		data.mochila = { quantidade = 0, perder = 0 }
	end
end)

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- NATION GET INVENTARIO
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function vRP.getVehicleName(name)
	return exports["bm_module"]:getVehicleName(name)
end

function vRP.getVehicleTrunk(name)
	return exports["bm_module"]:getVehicleTrunk(name)
end