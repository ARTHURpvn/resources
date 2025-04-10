local cfg = {}
-- ITEM | NOME | DESC | TYPE | PESO | FOME | SEDE

cfg.items = {
	["none"] = { "none", "none", 0.0, nil, nil },
	["roupas"] = { "Roupas", "none", 0.0, nil, nil },
	["dinheiro"] = { "Dinheiro", "none", 0.0, nil, nil },
	["bitcoin"] = { "Bitcoin", "usar", 0.0, nil, nil },
	-- ITENS VIP
	["alterarrg"] = { "Alterar RG", "usarVIP", 0.0, nil, nil },
	["alterartelefone"] = { "Alterar Telefone", "usarVIP", 0.0, nil, nil },
	["plastica"] = { "Plastica", "usarVIP", 0.0, nil, nil },
	["valemansao500k"] = { "Vale mansao 500k", "usarVIP", 0.0, nil, nil },
	["valemansao1m"] = { "Vale mansao 1m", "usarVIP", 0.0, nil, nil },
	["valemansao8m"] = { "Vale mansao 8m", "usarVIP", 0.0, nil, nil },
	["valemansao10m"] = { "Vale mansao 10m", "usarVIP", 0.0, nil, nil },
	["valemansao100m"] = { "Vale mansao 100m", "usarVIP", 0.0, nil, nil },

	-- Restaurante

	["trigo"] = { "Trigo", "none", 0.2, nil, nil },
	["leite"] = { "Leite", "none", 0.2, nil, nil },
	["sopao"] = { "Sopão", "none", 0.2, nil, nil },
	["molhodetomate"] = { "Molho de Tomate", "none", 0.2, nil, nil },
	["queijo"] = { "Queijo", "none", 0.2, nil, nil },
	["massadepizza"] = { "Massa de Pizza", "none", 0.2, nil, nil },
	["pizzarecheada"] = { "Pizza Recheada", "none", 0.2, nil, nil },
	["legumes"] = { "Legumes", "none", 0.2, nil, nil },
	["legumespicados"] = { "Legumes Picados", "none", 0.2, nil, nil },
	["macarrao"] = { "Macarrão", "none", 0.2, nil, nil },
	["carnemoida"] = { "Carne Moida", "none", 0.2, nil, nil },
	["tempero"] = { "Tempero", "none", 0.2, nil, nil },
	["carnedehamburguer"] = { "Carne H. Crua", "none", 0.2, nil, nil },
	["carnefrita"] = { "Carne de Hamburguer", "none", 0.2, nil, nil },
	["pao"] = { "Pão", "none", 0.2, nil, nil },

	-- Sexual
	["vibrador"] = { "Vibrador", "none", 0.2, nil, nil },
	["camisinha"] = { "Camisinha", "none", 0.2, nil, nil },

	-- Vender Droga
	["mesa"] = { "mesa", "usar", 5.0, nil, nil },

	-- Utilitarios
	["mochila"] = { "Mochila", "usar", 1.0, nil, nil },
	["skate"] = { "Skate", "usar", 1.0, nil, nil },
	["algemas"] = { "Algemas", "usar", 1.0, nil, nil },
	["ticket"] = { "Ticket Corrida", "usar", 1.0, nil, nil },
	["distintivopolicial"] = { "Distintivo Policial", "usar", 0.3, nil, nil },
	["corda"] = { "Corda", "usar", 1.0, nil, nil },
	["chave_algemas"] = { "Chave de algemas", "usar", 0.3, nil, nil },
	["emptybottle"] = { "Garrafa Vazia", "usar", 0.2, nil, nil },
	["attachs"] = { "Attachs", "usar", 0.2, nil, nil },
	["alianca"] = { "Alianca", "usar", 1.0, nil, nil },
	["rccar"] = { "rccar", "usar", 1.0, nil, nil },
	["switch"] = { "Switch", "usar", 1.0, nil, nil },
	["casino_token"] = { "Token Cassino", "usar", 0.0, nil, nil },
	["casino_ticket"] = { "Ticket Cassino", "usar", 0.0, nil, nil },

	-- Jobs
	["tomate"] = { "Tomate", "usar", 0.1, nil, nil },
	["laranja"] = { "Laranja", "usar", 0.1, nil, nil },
	["laudoteoricocnh"] = { "Laudo Teórico CNH", "none", 0.1, nil, nil },
	["garrafavazia"] = { "Garrafa de Leite Vazia", "usar", 0.1, nil, nil },
	["garrafadeleite"] = { "Garrafa de Leite", "usar", 0.1, nil, nil },
	["garrafadeleitevazia"] = { "Garrafa L. Vazia", "usar", 0.1, nil, nil },

	-- Mecanica
	["pneus"] = { "Pneus", "usar", 3.0, nil, nil },
	["repairkit"] = { "Jogue Fora", "none", 1.0, nil, nil },
	["repairkit2"] = { "Kit de Reparos", "usar", 1.0, nil, nil },
	["militec"] = { "Militec", "usar", 1.0, nil, nil },

	-- Eletronicos
	["radio"] = { "Radio", "usar", 1.0, nil, nil },
	["celular"] = { "Celular", "none", 1.0, nil, nil },
	["apple_watch"] = { "Apple Watch", "none", 0.5, nil, nil },

	-- Nitro
	["garrafanitro"] = { "garrafanitro", "usar", 0.3, nil, nil },
	["kitnitro"] = { "kitnitro", "usar", 0.3, nil, nil },

	-- Itens para Roubar
	["keycard"] = { "Keycard", "none", 1.0, nil, nil },
	["c4"] = { "C4", "none", 2.0, nil, nil },
	--["bolsadinheiro"] = { "Bolsa de Dinheiro", "none", 2.0, nil, nil},
	["masterpick"] = { "MasterPick", "none", 1.0, nil, nil },
	["pendrive"] = { "Pendrive", "none", 1.0, nil, nil },
	["furadeira"] = { "Furadeira", "none", 3.0, nil, nil },
	["lockpick"] = { "Lock Pick", "usar", 1.5, nil, nil },

	-- Itens Mafia
	["m-aco"] = { "Aço", "none", 0.3, nil, nil },
	["metal"] = { "Placa de Metal", "none", 0.3, nil, nil },
	["pecadearma"] = { "Peça de arma", "none", 0.3, nil, nil },
	["corpodearma"] = { "Corpo de arma", "none", 0.3, nil, nil },
	["molas"] = { "Molas", "none", 0.3, nil, nil },
	["m-capa_colete"] = { "Capa Colete", "none", 0.50, nil, nil },
	["m-corpo_ak47_mk2"] = { "Corpo de AK47", "none", 5.0, nil, nil },
	["m-corpo_g3"] = { "Corpo de G3", "none", 5.0, nil, nil },
	["m-corpo_machinepistol"] = { "Corpo de TEC-9", "none", 2.0, nil, nil },
	["m-corpo_pistol_mk2"] = { "Corpo de Pistol", "none", 1.5, nil, nil },
	["m-corpo_shotgun"] = { "Corpo de Shotgun", "none", 5.0, nil, nil },
	["m-corpo_smg_mk2"] = { "Corpo de SMG", "none", 2.0, nil, nil },
	["m-corpo_snspistol_mk2"] = { "Corpo de Fajuta", "none", 1.0, nil, nil },
	["m-gatilho"] = { "Gatilho", "none", 0.80, nil, nil },
	["gatilho"] = { "Gatilho", "none", 0.40, nil, nil },
	["m-malha"] = { "Malha", "none", 0.40, nil, nil },
	["m-tecido"] = { "Tecido", "none", 0.40, nil, nil },

	-- Itens Ilegal
	["c-cobre"] = { "Cobre", "none", 0.40, nil, nil },
	["c-ferro"] = { "Ferro", "none", 0.3, nil, nil },
	["c-fio"] = { "Fio", "none", 0.40, nil, nil },
	["c-polvora"] = { "Polvora", "none", 0.3, nil, nil },
	["polvora"] = { "Polvora", "none", 0.1, nil, nil },
	["capsulas"] = { "Cápsulas", "none", 0.1, nil, nil },

	["suspensaoar"] = { "Suspensao", "usar", 1.5, nil, nil },
	["moduloneon"] = { "Modulo neon", "usar", 1.5, nil, nil },
	["moduloxenon"] = { "Modulo xenon", "usar", 1.5, nil, nil },

	["borracha"] = { "Borracha", "none", 0.4, nil, nil },
	["cobre"] = { "Cobre", "none", 0.2, nil, nil },
	["aluminio"] = { "Aluminio", "none", 0.4, nil, nil },
	["plastico"] = { "Plastico", "none", 0.2, nil, nil },
	["tesoura"] = { "tesoura", "none", 0.2, nil, nil },
	["chave"] = { "chave", "none", 0.2, nil, nil },
	["linha"] = { "linha", "none", 0.2, nil, nil },

	-- Itens Lavagem
	["l-alvejante"] = { "Alvejante", "none", 0.40, nil, nil },

	-- Itens Drogas
	["haxixe"] = { "Haxixe", "usar", 0.3, nil, nil },
	["resinacannabis"] = { "Resina de Cannabis", "none", 0.3, nil, nil },
	["ramosdemaconha"] = { "Ramos de Maconha", "none", 0.3, nil, nil },
	["seda"] = { "Seda", "none", 0.3, nil, nil },
	["pedemaconha"] = { "PÉ de Maconha", "none", 0.3, nil, nil },
	["cristal"] = { "Cristal", "none", 0.3, nil, nil },
	["anfetamina"] = { "Anfetamina", "none", 0.3, nil, nil },
	["saquinhos"] = { "Saquinhos", "none", 0.3, nil, nil },
	["ocitocina"] = { "Ocitocina", "none", 0.3, nil, nil },
	["glicerina"] = { "Glicerina", "none", 0.3, nil, nil },
	["folhadecoca"] = { "Folha de Coca", "none", 0.3, nil, nil },
	["pastadecoca"] = { "Pasta de Coca", "none", 0.3, nil, nil },
	["maconha"] = { "Maconha", "usar", 0.3, nil, nil },
	["pastabase"] = { "Pasta Base", "none", 0.3, nil, nil },
	["cocaina"] = { "Cocaina", "usar", 0.3, nil, nil },
	["acidolsd"] = { "Acido LSD", "none", 0.3, nil, nil },
	["tiner"] = { "Tiner", "none", 0.3, nil, nil },
	["lancaperfume"] = { "Lança Perfume", "none", 0.3, nil, nil },
	["opiopapoula"] = { "Pó de Opio", "none", 0.3, nil, nil },

	-- Pacotes de craft
	["pacote_eletrico"] = { "Pacote Eletrico", "none", 3.0, nil, nil },
	["pacote_componentes"] = { "Pacote de Componentes", "none", 3.0, nil, nil },
	["pacote_tecido"] = { "Pacote de Tecido", "none", 3.0, nil, nil },
	["pacote_metalico"] = { "Pacote Metalico", "none", 3.0, nil, nil },
	["pacote_polvora"] = { "Pacote de Polvora", "none", 3.0, nil, nil },

	-- Ilegal
	["colete"] = { "Colete", "usar", 3.0, nil, nil },
	["capuz"] = { "Capuz", "usar", 0.5, nil, nil },
	["dinheirosujo"] = { "Dinheiro Sujo", "none", 0.0, nil, nil },

	-- Itens Joalheria
	["relogioroubado"] = { "Relogio", "none", 0.1, nil, nil },
	["colarroubado"] = { "Colar", "none", 0.1, nil, nil },
	["anelroubado"] = { "Anel", "none", 0.1, nil, nil },
	["brincoroubado"] = { "Brinco", "none", 0.1, nil, nil },
	["pulseiraroubada"] = { "Pulseira", "none", 0.1, nil, nil },

	-- Itens Acougue
	["carnedepuma"] = { "Carne de Puma", "none", 3.0, nil, nil },
	["carnedelobo"] = { "Carne de Lobo", "none", 3.0, nil, nil },
	["carnedejavali"] = { "Carne de Javali", "none", 3.0, nil, nil },

	-- Drogas
	["opio"] = { "Ópio", "usar", 1.0, nil, nil },
	["lsd"] = { "LSD", "usar", 0.3, nil, nil },
	["morfina"] = { "Morfina", "none", 0.3, nil, nil },
	["heroina"] = { "Heroina", "usar", 1.0, nil, nil },
	["metanfetamina"] = { "Metanfetamina ", "usar", 1.0, nil, nil },
	["balinha"] = { "Balinha", "usar", 1.0, nil, nil },
	["podemd"] = { "Pó de MD", "none", 0.3, nil, nil },
	["ecstasy"] = { "Ecstasy", "usar", 0.3, nil, nil },
	["joint"] = { "Baseado", "usar", 0.3, nil, nil },
	["cocaine"] = { "Cocaina", "usar", 0.3, nil, nil },
	["meth"] = { "Metanfetamina", "usar", 0.3, nil, nil },

	-- Tartaruga
	["tartaruga"] = { "Tartaruga", "none", 1.0, nil, nil },
	["carnedetartaruga"] = { "Carne de Tartaruga", "none", 1.0, nil, nil },

	-- Pescaria
	["isca"] = { "Isca", "none", 0.25, nil, nil },
	["pacu"] = { "Pacu", "none", 1.5, nil, nil },
	["tilapia"] = { "Tilapia", "none", 1.5, nil, nil },
	["salmao"] = { "Salmao", "none", 1.5, nil, nil },
	["tucunare"] = { "Tucunare", "none", 1.5, nil, nil },
	["dourado"] = { "Dourado", "none", 1.5, nil, nil },

	-- Lenhador
	["madeira"] = { "Madeira", "none", 2.0, nil, nil },
	["machado"] = { "Machado", "none", 2.0, nil, nil },

	-- Graos
	["graosimpuros"] = { "Graos Impuros", "none", 0.25, nil, nil },
	["graos"] = { "Graos", "none", 0.25, nil, nil },


	-- Eletricista
	["ferramenta"] = { "Ferramenta", "none", 0.5, nil, nil },

	-- Entregador
	["caixa"] = { "Caixa de entrega", "none", 1.5, nil, nil },

	-- Mineracao
	["bronze"] = { "Bronze", "none", 1.0, nil, nil },
	["ferro"] = { "Ferro", "none", 0.4, nil, nil },
	["ouro"] = { "Ouro", "none", 1.0, nil, nil },
	["diamante"] = { "Diamante", "none", 1.0, nil, nil },
	["rubi"] = { "Rubi", "none", 1.0, nil, nil },
	["safira"] = { "Safira", "none", 1.0, nil, nil },
	["ametista"] = { "Ametista", "none", 1.0, nil, nil },

	-- COMIDAS

	["sanduiche"] = { "Sanduiche", "comer", 0.2, -20, nil },
	["pizza"] = { "Pizza", "comer", 0.2, -100, nil },
	["barrac"] = { "Chocolate", "comer", 0.2, -10, nil },
	["cachorroq"] = { "Cachorro Quente", "comer", 0.2, -20, nil },
	["pipoca"] = { "Chips", "comer", 0.2, -20, nil },
	["donut"] = { "Donut", "comer", 0.2, -20, nil },
	["paoq"] = { "Pao de Queijo", "comer", 0.2, -20, nil },
	["marmita"] = { "Marmitex", "comer", 0.2, -20, nil },
	["coxinha"] = { "Coxinha", "comer", 0.2, -20, nil },
	["combo"] = { "Combo", "comer", 0.2, -90, nil },
	["xtudo"] = { "Mata Fome", "comer", 0.2, -70, nil },
	["sopa"] = { "Sopa", "comer", 0.2, -100, nil },
	["hamburguer"] = { "Hamburger", "comer", 0.2, -100, nil },

	-- MC DONALDS COMIDAS
	["BigMac"] = { "BigMac", "comer", 0.2, -70, nil },
	["McNifico"] = { "McNifico", "comer", 0.2, -70, nil },
	["BigTasty"] = { "BigTasty", "comer", 0.2, -70, nil },
	["McChicken"] = { "McChicken", "comer", 0.2, -70, nil },
	["McCoca"] = { "McCoca", "beber", 0.5, nil, -50 },


	-- BEBIDAS
	["cocacola"] = { "Coca Cola", "beber", 0.5, nil, -50 },
	["sprunk"] = { "Sprunk", "beber", 0.5, nil, -12 },
	["sucol"] = { "Suco de Laranja", "beber", 0.5, nil, -50 },
	["sucol2"] = { "Suco de Morango", "beber", 0.5, nil, -50 },
	["water"] = { "Agua", "beber", 0.5, nil, -50 },
	["cafe"] = { "Cafe", "beber", 0.25, nil, -50 },
	["energetico"] = { "Energetico", "beber", 0.25, nil, -50 },

	-- ALCOLICAS FOME/SEDE
	["vodka"] = { "Vodka", "bebera", 1.0, 10, -7 },
	["cerveja"] = { "Cerveja", "bebera", 0.5, 3, -10 },
	["corote"] = { "Corote", "bebera", 0.5, 20, -10 },
	["pinga"] = { "Pinga", "bebera", 1.0, 15, -10 },
	["whisky"] = { "Whisky", "bebera", 1.0, 10, -8 },
	["absinto"] = { "Absinto", "bebera", 0.5, 10, -10 },
	["skolb"] = { "Skol Beats", "bebera", 0.25, 5, -13 },

	-- REMEDIOS
	["amoxilina"] = { "Amoxilina", "remedio", 0.05, 5, nil },
	["cataflan"] = { "Cataflan", "remedio", 0.05, 5, nil },
	["cicatricure"] = { "Cicatricure", "remedio", 0.05, 5, nil },
	["clozapina"] = { "Clozapina", "remedio", 0.05, 5, nil },
	["dipirona"] = { "Dipirona", "remedio", 0.05, 5, nil },
	["paracetamol"] = { "Paracetamol", "remedio", 0.05, 5, nil },
	["rivotril"] = { "Rivotril", "remedio", 0.05, 5, nil },
	["riopan"] = { "Riopan", "remedio", 0.05, 5, nil },
	["luftal"] = { "Luftal", "remedio", 0.05, 5, nil },
	["coumadin"] = { "Coumadin", "remedio", 0.05, 5, nil },
	["dorflex"] = { "Dorflex", "remedio", 0.05, 5, nil },
	["anticoncepcional"] = { "Anticoncepcional", "remedio", 0.05, 5, nil },
	["camisinha"] = { "Camisinha", "remedio", 0.05, 5, nil },
	["fluoxetina"] = { "Fluoxetina", "remedio", 0.05, 5, nil },
	["bandagem"] = { "Bandagem", "remedio", 0.5, 5, nil },
	["kitmedico"] = { "Kit Medico", "remedio", 0.5, 5, nil },

	-- PISTOLAS

	["WEAPON_SNSPISTOL_MK2"] = { "Fajuta", "equipar", 2.0, nil, nil },
	["AMMO_SNSPISTOL_MK2"] = { "M-Fajuta", "recarregar", 0.05, nil, nil },

	["WEAPON_PISTOL_MK2"] = { "Five-Seven", "equipar", 2.0, nil, nil },
	["AMMO_PISTOL_MK2"] = { "M-Five-Seven", "recarregar", 0.05, nil, nil },


	["WEAPON_FIREWORK"] = { "Fogos", "equipar", 2.0, nil, nil },
	["WEAPON_SNOWBALL"] = { "Bola de Neve", "equipar", 2.0, nil, nil },
	["WEAPON_BZGAS"] = { "Gas", "equipar", 2.0, nil, nil },
	["WEAPON_REVOLVER_MK2"] = { "Revolver", "equipar", 2.0, nil, nil },

	["AMMO_FIREWORK"] = { "M-Fogos", "recarregar", 0.05, nil, nil },
	["AMMO_SNOWBALL"] = { "M-Bola", "recarregar", 0.05, nil, nil },
	["AMMO_BZGAS"] = { "M-Gas", "recarregar", 0.05, nil, nil },
	["AMMO_REVOLVER_MK2"] = { "M-Revolver", "recarregar", 0.05, nil, nil },



	["WEAPON_GUSENBERG"] = { "Thompson", "equipar", 2.0, nil, nil },
	["AMMO_GUSENBERG"] = { "M-Thompson", "recarregar", 0.05, nil, nil },

	["WEAPON_PISTOL50"] = { "Desert Eagle", "equipar", 2.0, nil, nil },
	["AMMO_PISTOL50"] = { "M-Desert", "recarregar", 0.05, nil, nil },

	["WEAPON_COMBATPISTOL"] = { "Glock", "equipar", 2.0, nil, nil },
	["AMMO_COMBATPISTOL"] = { "M-Glock", "recarregar", 0.05, nil, nil },

	["WEAPON_COMBATPDW"] = { "Combat Pdw", "equipar", 2.0, nil, nil },
	["AMMO_COMBATPDW"] = { "M-Pdw", "recarregar", 0.05, nil, nil },

	-- MACHADOS
	["WEAPON_HATCHET"] = { "Machados", "equipar", 3.0, nil, nil },
	["WEAPON_KNIFE"] = { "Faca", "equipar", 3.0, nil, nil },
	["WEAPON_DAGGER"] = { "Dagger", "equipar", 3.0, nil, nil },
	["WEAPON_KNUCKLE"] = { "Knuckle", "equipar", 3.0, nil, nil },
	["WEAPON_MACHETE"] = { "Machete", "equipar", 3.0, nil, nil },
	["WEAPON_SWITCHBLADE"] = { "SwitchBlade", "equipar", 3.0, nil, nil },
	["WEAPON_WRENCH"] = { "Wrench", "equipar", 3.0, nil, nil },
	["WEAPON_HAMMER"] = { "Hammer", "equipar", 3.0, nil, nil },
	["WEAPON_GOLFCLUB"] = { "GolfClub", "equipar", 3.0, nil, nil },
	["WEAPON_CROWBAR"] = { "CrowBar", "equipar", 3.0, nil, nil },
	["WEAPON_FLASHLIGHT"] = { "Lanterna", "equipar", 3.0, nil, nil },
	["WEAPON_BAT"] = { "Bastão de Beisebol", "equipar", 3.0, nil, nil },
	["WEAPON_BOTTLE"] = { "Bottle", "equipar", 3.0, nil, nil },
	["WEAPON_BATTLEAXE"] = { "Battleaxe", "equipar", 3.0, nil, nil },
	["WEAPON_POOLCUE"] = { "Poolcue", "equipar", 3.0, nil, nil },
	["GADGET_PARACHUTE"] = { "Paraquedas", "equipar", 3.0, nil, nil },
	["WEAPON_FLAREGUN"] = { "Sinalizador", "equipar", 3.0, nil, nil },

	-- SUBMETRALHADORA
	["WEAPON_MACHINEPISTOL"] = { "Tec-9", "equipar", 3.0, nil, nil },
	["AMMO_MACHINEPISTOL"] = { "M-Tec-9", "recarregar", 0.05, nil, nil },

	["WEAPON_SMG_MK2"] = { "Smg MK2", "equipar", 3.0, nil, nil },
	["AMMO_SMG_MK2"] = { "M-Smg MK2", "recarregar", 0.05, nil, nil },

	["WEAPON_SMG"] = { "SMG", "equipar", 3.0, nil, nil },
	["AMMO_SMG"] = { "M-SMG", "recarregar", 0.05, nil, nil },

	["WEAPON_ASSAULTSMG"] = { "MTAR", "equipar", 3.0, nil, nil },
	["AMMO_ASSAULTSMG"] = { "M-MTAR", "recarregar", 0.05, nil, nil },

	["WEAPON_MICROSMG"] = { "UZI", "equipar", 3.0, nil, nil },
	["AMMO_MICROSMG"] = { "M-UZI", "recarregar", 0.05, nil, nil },

	-- SHOTGUN
	["WEAPON_SAWNOFFSHOTGUN"] = { "Shotgun", "equipar", 5.0, nil, nil },
	["AMMO_SAWNOFFSHOTGUN"] = { "M-Shotgun", "recarregar", 0.05, nil, nil },

	["WEAPON_PUMPSHOTGUN_MK2"] = { "Pump Shotgun", "equipar", 5.0, nil, nil },
	["AMMO_PUMPSHOTGUN_MK2"] = { "M-Pump Shotgun", "recarregar", 0.05, nil, nil },

	-- FUZIL
	["WEAPON_ASSAULTRIFLE"] = { "AK 47", "equipar", 5.0, nil, nil },
	["AMMO_ASSAULTRIFLE"] = { "M-AK-47", "recarregar", 0.05, nil, nil },

	["WEAPON_ASSAULTRIFLE_MK2"] = { "AK MK2", "equipar", 5.0, nil, nil },
	["AMMO_ASSAULTRIFLE_MK2"] = { "M-AK MK2", "recarregar", 0.05, nil, nil },

	["WEAPON_HEAVYSNIPER"] = { "SNIPER", "equipar", 5.0, nil, nil },
	["AMMO_HEAVYSNIPER"] = { "M-SNIPER", "recarregar", 0.05, nil, nil },


	["WEAPON_SPECIALCARBINE_MK2"] = { "G3", "equipar", 5.0, nil, nil },
	["AMMO_SPECIALCARBINE_MK2"] = { "M-G3", "recarregar", 0.05, nil, nil },

	["WEAPON_DOUBLEACTION"] = { "DOUBLEACTION", "equipar", 5.0, nil, nil },
	["AMMO_DOUBLEACTION"] = { "M-DOUBLEACTION", "recarregar", 0.05, nil, nil },

	["WEAPON_CARBINERIFLE"] = { "M4", "equipar", 5.0, nil, nil },
	["AMMO_CARBINERIFLE"] = { "M-M4", "recarregar", 0.05, nil, nil },

	["WEAPON_CARBINERIFLE_MK2"] = { "M4", "equipar", 5.0, nil, nil },
	["AMMO_CARBINERIFLE_MK2"] = { "M-M4", "recarregar", 0.05, nil, nil },

	["WEAPON_SPECIALCARBINE"] = { "Parafal", "equipar", 5.0, nil, nil },
	["AMMO_SPECIALCARBINE"] = { "M-Parafal", "recarregar", 0.05, nil, nil },
	["WEAPON_RAYPISTOL"] = { "Arma de plasma", "recarregar", 0.05, nil, nil },

	-- TAZER
	["WEAPON_STUNGUN"] = { "Tazer", "equipar", 1.0, nil, nil },

	-- GALAO DE GASOLINA
	["WEAPON_PETROLCAN"] = { "Galão de gasolina", "equipar", 1.0, nil, nil },
	["AMMO_PETROLCAN"] = { "Gasolina", "equipar", 0.05, nil, nil },
}

return cfg
