-- NPC CONTROL
-----------------------------------------------------------------------------------------------------------------------------------------

Citizen.CreateThread(function()
	local player = PlayerPedId()
    while true do
        SetVehicleDensityMultiplierThisFrame(0.0)
        SetPedDensityMultiplierThisFrame(0.0)
        SetRandomVehicleDensityMultiplierThisFrame(0.0)
        SetParkedVehicleDensityMultiplierThisFrame(0.0)
        SetScenarioPedDensityMultiplierThisFrame(0.0, 0.0)
		SetGarbageTrucks(false)
		SetRandomBoats(false)
        SetCreateRandomCops(false) --Desactiva a Policia a andar pela cidade
    	SetCreateRandomCopsNotOnScenarios(false) --Para o Spanw Aleatorio de Policias Fora do Cenario
    	SetCreateRandomCopsOnScenarios(false) --Para o Spanw Aleatorio de Policias no Cenario
		
    Citizen.Wait(0)
    end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
--[ DISPATCH ]---------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
	for i = 1,120 do
		EnableDispatchService(i,false)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
--[ DESABILITAR X NA MOTO ]--------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
	while true do
        local timeDistance = 500
        local ped = PlayerPedId()
        if IsPedInAnyVehicle(ped) then
            local vehicle = GetVehiclePedIsIn(ped)
            if (GetPedInVehicleSeat(vehicle, -1) == ped or GetPedInVehicleSeat(vehicle, 0) == ped) and GetVehicleClass(vehicle) == 8 then
                timeDistance = 4
                DisableControlAction(0, 345, true)
            end
        end
        Citizen.Wait(timeDistance)
    end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- [ ERRO DE TANKAR HS ]-----------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
    while true do
        Wait(4)

        SetPedSuffersCriticalHits(PlayerPedId(-1), true)
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
--[ DESABILITAR A CORONHADA ]------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
    while true do
       	local idle = 1000
        local ped = PlayerPedId()
		if IsPedArmed(ped,6) then
			idle = 5
            DisableControlAction(0,140,true)
            DisableControlAction(0,141,true)
            DisableControlAction(0,142,true)
		end
		Citizen.Wait(idle)
    end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- DESABILITAR AUTO-CAPACETE NA MOTO
-----------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread( function()
	while true do
		local sleep = 1000
		local ped = PlayerPedId()
		if IsPedInAnyVehicle(ped) then
			sleep = 5
			local veh = GetVehiclePedIsUsing(PlayerPedId())
			if veh ~= 0 then 
				SetPedConfigFlag(PlayerPedId(),35,false) 
			end
		end
		Citizen.Wait(sleep)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- DESABILITAR O Q
-----------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
    while true do
        local sleep = 1000
		local ped = PlayerPedId()
		if not IsPedInAnyVehicle(ped) then
			sleep = 1
			local ped = PlayerPedId()
			local health = GetEntityHealth(ped)
			if health >= 101 then
				DisableControlAction(0,44,true)
			end
		end
		Citizen.Wait(sleep)
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
--[ REMOVER ARMA ABAIXO DE 40MPH DENTRO DO CARRO ]---------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1000)
		local ped = PlayerPedId()
		if IsPedInAnyVehicle(ped) then
			local vehicle = GetVehiclePedIsIn(PlayerPedId())
			if GetPedInVehicleSeat(vehicle,-1) == ped then
				local speed = GetEntitySpeed(vehicle)*2.236936
				if speed >= 80 then
					SetPlayerCanDoDriveBy(PlayerId(),false)
				else
					SetPlayerCanDoDriveBy(PlayerId(),true)
				end
			end
		end
	end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
--[ DRIFT ]------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
	while true do
		local idle = 1000
		local ped = PlayerPedId()
		local vehicle = GetVehiclePedIsIn(PlayerPedId())
		if IsPedInAnyVehicle(ped) then
			local speed = GetEntitySpeed(vehicle)*2.236936
			if GetPedInVehicleSeat(vehicle,-1) == ped 
				and (GetEntityModel(vehicle) ~= GetHashKey("coach") 
					and GetEntityModel(vehicle) ~= GetHashKey("bus") 
					and GetEntityModel(vehicle) ~= GetHashKey("youga2") 
					and GetEntityModel(vehicle) ~= GetHashKey("ratloader") 
					and GetEntityModel(vehicle) ~= GetHashKey("taxi") 
					and GetEntityModel(vehicle) ~= GetHashKey("boxville4") 
					and GetEntityModel(vehicle) ~= GetHashKey("trash2") 
					and GetEntityModel(vehicle) ~= GetHashKey("tiptruck") 
					and GetEntityModel(vehicle) ~= GetHashKey("rebel") 
					and GetEntityModel(vehicle) ~= GetHashKey("speedo") 
					and GetEntityModel(vehicle) ~= GetHashKey("phantom") 
					and GetEntityModel(vehicle) ~= GetHashKey("packer") 
					and GetEntityModel(vehicle) ~= GetHashKey("paramedicoambu")) then
						idle = 100
					if speed <= 100.0 then
					if IsControlPressed(1,21) then
						SetVehicleReduceGrip(vehicle,true)
					else
						SetVehicleReduceGrip(vehicle,false)
					end
				end    
			end
		end
		Citizen.Wait(idle)
	end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
--[ TASERTIME ]--------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------

local tasertime = false
Citizen.CreateThread(function()
	while true do
		local idle = 1000
		local ped = PlayerPedId()
		if IsPedBeingStunned(ped) then
			idle = 100
			SetPedToRagdoll(ped,10000,10000,0,0,0,0)
		end

		if IsPedBeingStunned(ped) and not tasertime then
			idle = 100
			tasertime = true
			SetTimecycleModifier("REDMIST_blend")
			ShakeGameplayCam("FAMILY5_DRUG_TRIP_SHAKE",1.0)
		elseif not IsPedBeingStunned(ped) and tasertime then
			tasertime = false
			SetTimeout(5000,function()
				SetTimecycleModifier("hud_def_desat_Trevor")
				SetTimeout(10000,function()
					SetTimecycleModifier("")
					SetTransitionTimecycleModifier("")
					StopGameplayCamShaking()
				end)
			end)
		end
		Citizen.Wait(idle)
	end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
--[ COOLDOWN BUNNYHOP ]------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------

-- local bunnyhop = 0
-- Citizen.CreateThread(function()
--     while true do
--         Citizen.Wait(5000)
--         if bunnyhop > 0 then
--             bunnyhop = bunnyhop - 5
--         end
--     end
-- end)


-- Citizen.CreateThread(function()
--     while true do
--         local ped = PlayerPedId()
--         if IsPedJumping(ped) and bunnyhop <= 0 then
--             bunnyhop = 5
--         end
--         if bunnyhop > 0 then
--             DisableControlAction(0,22,true)
--         end
--         Citizen.Wait(5)
--     end
-- end)
-- -----------------------------------------------------------------------------------------------------------------------------------------
-- -- ARMA NAS COSTAS
-- -----------------------------------------------------------------------------------------------------------------------------------------
-- local aWeapons = {}
-- local weapons = {
--     { hash = "WEAPON_SMG", x = 0.15, y = -0.13, z = 0.04, xR = 0.0, yR = 150.0, zR = 5.0, model = "w_sb_smg" },
--     { hash = "WEAPON_CARBINERIFLE", x = 0.15, y = -0.13, z = 0.04, xR = 0.0, yR = 150.0, zR = 5.0, model = "w_ar_carbinerifle" },
--     { hash = "WEAPON_PUMPSHOTGUN", x = 0.12, y = -0.13, z = 0.08, xR = 0.0, yR = 180.0, zR = 5.0, model = "w_sg_pumpshotgun" },
--     { hash = "WEAPON_BULLPUPRIFLE", x = 0.10, y = -0.13, z = -0.02, xR = 0.0, yR = 150.0, zR = 5.0, model = "w_ar_bullpuprifle" },
--     { hash = "WEAPON_BULLPUPRIFLE_MK2", x = 0.10, y = -0.13, z = -0.02, xR = 0.0, yR = 150.0, zR = 5.0, model = "w_ar_bullpupriflemk2" },
--     { hash = "WEAPON_SPECIALCARBINE_MK2", x = 0.05, y = 0.18, z = 0.04, xR = 0.0, yR = 150.0, zR = 5.0, model = "w_ar_specialcarbinemk2" },
--     { hash = "WEAPON_SPECIALCARBINE", x = 0.05, y = 0.18, z = 0.04, xR = 0.0, yR = 150.0, zR = 5.0, model = "w_ar_specialcarbine" },
--     { hash = "WEAPON_ASSAULTSMG", x = 0.15, y = -0.13, z = 0.04, xR = 0.0, yR = 150.0, zR = 5.0, model = "w_sb_assaultsmg" },
--     { hash = "WEAPON_ASSAULTRIFLE", x = 0.05, y = 0.18, z = 0.04, xR = 0.0, yR = 150.0, zR = 5.0, model = "w_ar_assaultrifle" },
--     { hash = "WEAPON_ASSAULTRIFLE_MK2", x = 0.05, y = 0.18, z = 0.04, xR = 0.0, yR = 150.0, zR = 5.0, model = "w_ar_assaultriflemk2" },
--     { hash = "WEAPON_GUSENBERG", x = 0.15, y = -0.13, z = 0.04, xR = 0.0, yR = 150.0, zR = 5.0, model = "w_sb_gusenberg" },
--     { hash = "WEAPON_MUSKET", x = 0.15, y = -0.13, z = 0.04, xR = 0.0, yR = 150.0, zR = 5.0, model = "w_ar_musket" }
-- }

-- Citizen.CreateThread(function()
--     while true do
--         local ped = GetPlayerPed(-1)

--         for k,v in pairs(weapons) do
--             if not aWeapons[v.model] then
--                 if HasPedGotWeapon(ped,GetHashKey(v.hash),false) then
--                     RequestModel(v.model)
--                     while not HasModelLoaded(v.model) do
--                         RequestModel(v.model)
--                         Citizen.Wait(10)
--                     end

--                     aWeapons[v.model] = { hash = GetHashKey(v.hash), handle = CreateObject(GetHashKey(v.model),1.0,1.0,1.0,true,true,false) }
--                     AttachEntityToEntity(aWeapons[v.model].handle,ped,GetPedBoneIndex(ped,24818),v.x,v.y,v.z,v.xR,v.yR,v.zR,false,false,false,false,2,true)
--                     SetEntityAsMissionEntity(aWeapons[v.model].handle,true,true)
--                     SetEntityAsNoLongerNeeded(aWeapons[v.model].handle)
--                 end
--             end
--         end

--         for k,v in pairs(aWeapons) do
--             if GetSelectedPedWeapon(ped) == v.hash or not HasPedGotWeapon(ped,v.hash,false) then
--                 if DoesEntityExist(v.handle) then
--                     SetEntityAsMissionEntity(v.handle,false,false)
--                     DeleteObject(v.handle)
--                     aWeapons[k] = nil
--                 end
--             end
--         end

--         Wait(200)
--     end
-- end)
------------------------------------------------------------------------------------
--------------------------------- RECOIL--------------------------------------------
------------------------------------------------------------------------------------
local recoil = {
	[453432689] = 0.3, -- PISTOL
	[3219281620] = 0.8, -- PISTOL MK2
	[584646201] = 0.1, -- AP PISTOL
	[2578377531] = 0.6, -- PISTOL .50
	[324215364] = 0.2, -- MICRO SMG
	[4024951519] = 0.0, -- ASSAULT SMG
	[3220176749] = 0.0, -- ASSAULT RIFLE
	[2937143193] = 0.1, -- ADVANCED RIFLE
	[2634544996] = 0.1, -- MG
	[2144741730] = 0.0, -- COMBAT MG
	[3686625920] = 0.0, -- COMBAT MG MK2
	[487013001] = 0.0, -- PUMP SHOTGUN



	[961495388] = 0.000, -- ASSAULT RIFLE MK2
	[-2084633992] = 0.0, -- CARBINE RIFLE
	[-86904375] = 0.000, -- CARBINE RIFLE MK2
	[-1768145561] = 0.000, -- SPECIAL CARBINE MK2


	[-1075685676] = 0.00, -- PISTOL MK2
	[1593441988] = 0.00, -- COMBAT PISTOL
	[-1076751822] = 0.80, -- SNS PISTOL
	[-771403250] = 0.80, -- HEAVY PISTOL

	[1432025498] = 0.0, -- PUMP SHOTGUN MK2
	[2017895192] = 0.9, -- SAWNOFF SHOTGUN
	[3800352039] = 0.0, -- ASSAULT SHOTGUN
	[2640438543] = 0.02, -- BULLPUP SHOTGUN
	[911657153] = 0.1, -- STUN GUN
	[100416529] = 0.5, -- SNIPER RIFLE
	[205991906] = 0.7, -- HEAVY SNIPER
	[177293209] = 0.6, -- HEAVY SNIPER MK2
	[856002082] = 1.2, -- REMOTE SNIPER
	[2726580491] = 1.0, -- GRENADE LAUNCHER
	[1305664598] = 1.0, -- GRENADE LAUNCHER SMOKE
	[2982836145] = 0.0, -- RPG
	[1752584910] = 0.0, -- STINGER
	[3218215474] = 0.2, -- SNS PISTOL
	[1627465347] = 0.1, -- GUSENBERG
	[3523564046] = 0.5, -- HEAVY PISTOL
	[2132975508] = 0.2, -- BULLPUP RIFLE

	[-619010992] = 0.0, -- MACHINE PISTOL
	[736523883] = 0.0, -- SMG
	[2024373456] = 0.0, -- SMG MK2
	[171789620] = 0.0, -- COMBAT PDW

	[-2066285827] = 0.15, -- BULLPUP RIFLE MK2
	[137902532] = 0.4, -- VINTAGE PISTOL
	[2828843422] = 0.7, -- MUSKET
	[984333226] = 0.2, -- HEAVY SHOTGUN
	[3342088282] = 0.3, -- MARKSMAN RIFLE
	[1785463520] = 0.25, -- MARKSMAN RIFLE MK2
	[1672152130] = 0, -- HOMING LAUNCHER
	[1198879012] = 0.9, -- FLARE GUN
	[3696079510] = 0.9, -- MARKSMAN PISTOL
	[1834241177] = 2.4, -- RAILGUN
	[3675956304] = 0.3, -- MACHINE PISTOL
	[3249783761] = 0.6, -- REVOLVER
	[-879347409] = 0.6, -- REVOLVER MK2
	[4019527611] = 0.7, -- DOUBLE BARREL SHOTGUN
	[1649403952] = 0.3, -- COMPACT RIFLE
	[317205821] = 0.2, -- AUTO SHOTGUN
	[125959754] = 0.5, -- COMPACT LAUNCHER
	[3173288789] = 0.1, -- MINI SMG			
}
------------------------------------------------------------------------------
-- DANO POR OSSO + RECOIL CONFIG
------------------------------------------------------------------------------
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(10)
		if IsPedShooting(PlayerPedId()) then
			local wep = GetSelectedPedWeapon(PlayerPedId())
			-- ShakeGameplayCam('JOLT_SHAKE',0.5)
			if recoil[wep] and recoil[wep] ~= 0 then
				Wait(0)
				p = GetGameplayCamRelativePitch()
				if not IsPedInAnyHeli(PlayerPedId()) then
					SetGameplayCamRelativePitch(p+recoil[wep], 1.2)
				end
			end
        end
        local headshotFive = HasPedBeenDamagedByWeapon(PlayerPedId(), -1075685676, 0) -- Pistol
        local headshotGlock = HasPedBeenDamagedByWeapon(PlayerPedId(), 1593441988, 0) -- Pistol
		local headshotFajuta = HasPedBeenDamagedByWeapon(PlayerPedId(), -1076751822, 0) -- Pistol
		local headshotPesada = HasPedBeenDamagedByWeapon(PlayerPedId(), 3523564046, 0) -- Pistol

		local headshotTec = HasPedBeenDamagedByWeapon(PlayerPedId(), -619010992, 0) -- SMG
		local headshotSmg = HasPedBeenDamagedByWeapon(PlayerPedId(), 736523883, 0) -- SMG
		local headshotSmg2 = HasPedBeenDamagedByWeapon(PlayerPedId(), 0x78A97CD0, 0) -- SMG MK2
        local headshotMtar = HasPedBeenDamagedByWeapon(PlayerPedId(), 3675956304, 0) -- SMG
		local headshotSig = HasPedBeenDamagedByWeapon(PlayerPedId(), 171789620, 0) -- SMG

		local headshotAK = HasPedBeenDamagedByWeapon(PlayerPedId(), GetHashKey('weapon_assaultrifle'), 0) -- Fuzil
		local headshotAK2 = HasPedBeenDamagedByWeapon(PlayerPedId(), 961495388, 0) -- Fuzil
		local headshotM4 = HasPedBeenDamagedByWeapon(PlayerPedId(), -2084633992, 0) -- Fuzil
		local headshotMPX = HasPedBeenDamagedByWeapon(PlayerPedId(), -86904375, 0) -- Fuzil
		local headshotG3 = HasPedBeenDamagedByWeapon(PlayerPedId(), -1768145561, 0) -- G3

		local headshot12 = HasPedBeenDamagedByWeapon(PlayerPedId(), 487013001, 0) -- 12
		local headshotMini12 = HasPedBeenDamagedByWeapon(PlayerPedId(), 2017895192, 0) -- 12
		local a, b = GetPedLastDamageBone(PlayerPedId())
		if a and b == 31086 then
			if headshotFive or headshotGlock or headshotFajuta or headshotPesada or headshotSmg or headshotSmg2 or headshotMtar or headshotSig or headshotTec then
				Wait(200)
				SetEntityHealth(PlayerPedId(), 101)
			elseif headshotAK or headshotAK2 or headshotM4 or headshotMPX or headshotG3 or headshotG32 or headshot12 or headshotMini12 then
				Wait(200)
				SetEntityHealth(PlayerPedId(), GetEntityHealth(PlayerPedId()) - 101)
			end
			a, b, headshotFive, headshotGlock, headshotFajuta, headshotPesada, headshotTec, headshotSmg, headshotSmg2, headshotMtar, headshotSig, headshotAK, headshotAK2, headshotM4, headshotMPX, headshotG3, headshotG32, headshot12, headshotMini12 = nil, nil, nil, nil, nil, nil
		end
	end
end)

Citizen.CreateThread(function()
	while true do
		local sleep = 100
		if IsPedArmed(PlayerPedId(),6) then
			sleep = 4
			DisableControlAction(1,140,true)
			DisableControlAction(1,141,true)
			DisableControlAction(1,142,true)
		end
		Citizen.Wait(sleep)
	end
end)

----------------------------------------------------------------------------------
---Nao pular pro P1
----------------------------------------------------------------------------------
local disableShuffle = true
function disableSeatShuffle(flag)
    disableShuffle = flag
end

Citizen.CreateThread(function()
    while true do
        local sleep = 1000
        if IsPedInAnyVehicle(GetPlayerPed(-1), false) and disableShuffle then
			sleep = 1
            if GetPedInVehicleSeat(GetVehiclePedIsIn(GetPlayerPed(-1), false), 0) == GetPlayerPed(-1) then
                if GetIsTaskActive(GetPlayerPed(-1), 165) then
                    SetPedIntoVehicle(GetPlayerPed(-1), GetVehiclePedIsIn(GetPlayerPed(-1), false), 0)
                end
            end
        end
		Citizen.Wait(sleep)
    end
end)

RegisterNetEvent("SeatShuffle")
AddEventHandler("SeatShuffle", function()
    if IsPedInAnyVehicle(GetPlayerPed(-1), false) then
        disableSeatShuffle(false)
        Citizen.Wait(5000)
        disableSeatShuffle(true)
    else
        CancelEvent()
    end
end)

RegisterCommand("seat", function(source, args, raw) --change command here
    TriggerEvent("SeatShuffle")
end, false)


---------- desativar sons gta ---------
CreateThread(function()
	while true do
		StartAudioScene("CHARACTER_CHANGE_IN_SKY_SCENE");
		SetAudioFlag("PoliceScannerDisabled",true);
		Wait(0)
	end
  end)

---------Estourar pneus quando capota:--------
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(5)
        local ped = PlayerPedId()
        if IsPedInAnyVehicle(ped) then
            local vehicle = GetVehiclePedIsIn(ped)
            if GetPedInVehicleSeat(vehicle,-1) == ped then
                local roll = GetEntityRoll(vehicle)
                if (roll > 75.0 or roll < -75.0) and GetEntitySpeed(vehicle) < 2 then
                      if IsVehicleTyreBurst(vehicle, wheel_rm1, 0) == false then
                    SetVehicleTyreBurst(vehicle, 0, 1)
                    Citizen.Wait(100)
                    SetVehicleTyreBurst(vehicle, 1, 1)
                    Citizen.Wait(100)
                    SetVehicleTyreBurst(vehicle, 2, 1)
                    Citizen.Wait(100)
                    SetVehicleTyreBurst(vehicle, 3, 1)
                    Citizen.Wait(100)
                    SetVehicleTyreBurst(vehicle, 4, 1)
                    Citizen.Wait(100)
                    SetVehicleTyreBurst(vehicle, 5, 1)
                    Citizen.Wait(100)
                    SetVehicleTyreBurst(vehicle, 45, 1)
                    Citizen.Wait(100)
                    SetVehicleTyreBurst(vehicle, 47, 1)
                    end
                end
            end
        end
    end
end) 

