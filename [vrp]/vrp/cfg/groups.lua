local cfg = {}

cfg.groups = {
	["PRESIDENTE"] = {
		"owner.permissao",
		"admin.permissao",
		"polpar.permissao",
		"ticket.permissao",
		"comum.permissao",
		"alerta.permissao",
		"ammunation.permissao", 
		"mod.permissao",
		"flux.bypass",
		"flux.admin",
		"fix.permissao",
		"god.permissao",
		"money.permissao",
		"ban.permissao",
		"unban.permissao",
		"noclip.permissao",
		"group.permissao",
		"tp.permissao",
		"suporte.permissao",
		"car.permissao",
		"player.noclip",
		"kill.permissao",
		"cor.permissao"
	},
	["COORDENADOR"] = {
		"admin.permissao",
		"polpar.permissao",
		"ticket.permissao",
		"comum.permissao",
		"player.noclip",
		"alerta.permissao",
		"ammunation.permissao", 
		"mod.permissao",
		"flux.bypass",
		"flux.admin",
		"god.permissao",
		"ban.permissao",
		"unban.permissao",
		"noclip.permissao",
		"suporte.permissao",
		"group.permissao",
		"tp.permissao",
		"fix.permissao"
	},
	["MOD"] = {
		"polpar.permissao",
		"ticket.permissao",
		"player.noclip",
		"comum.permissao",
		"alerta.permissao",
		"mod.permissao",
		"suporte.permissao",
		"flux.bypass",
		"flux.admin",
		"ban.permissao",
		"god.permissao",
		"noclip.permissao",
		"group.permissao",
		"tp.permissao",
		"cor.permissao"
	},
	["SUPORTE"] = {
		"mod.permissao",
		"polpar.permissao",
		"suporte.permissao",		
		"comum.permissao",
		"alerta.permissao",
		"ticket.permissao",
		"flux.bypass",
		"god.permissao",
		"flux.admin",
		"ban.permissao",
		"noclip.permissao",
		"group.permissao",
		"tp.permissao",
		"cor.permissao"
	},
	["OFFPRESIDENTE"] = {
		"offowner.permissao"
	},
	["OFFCOORDENADOR"] = {
		"offadmin.permissao"
	},
	["OFFMOD"] = {
		"offmod.permissao"
	},
	["OFFSUPORTE"] = {
		"offsuporte.permissao"
	},
	-----------------------------------------------------
	------- POLICIA -------------------------------------
	-----------------------------------------------------
	-- Recruta
	["Recruta"] = {
		_config = {
			title = "Recruta",
			gtype = "job"
		},
		"policia.permissao",
		"pm.permissao",
		"polpar.permissao",
		"portadp.permissao",
		"recruta.servico",
		"recruta.arsenal",
		"sem.permissao"
	},
	["PaisanaRecruta"] = {
		_config = {
			title = "Recruta Folga",
			gtype = "job"
		},
		"paisanapolicia.permissao",
		"recruta.folga",
		"sem.permissao"
	},
	-- Soldado
	["Soldado"] = {
		_config = {
			title = "Soldado",
			gtype = "job"
		},
		"policia.permissao",
		"polpar.permissao",
		"pm.permissao",
		"soldesarg.arsenal",
		"portadp.permissao",
		"soldado.servico",
		"sem.permissao"
	},
	["PaisanaSoldado"] = {
		_config = {
			title = "Soldado Folga",
			gtype = "job"
		},
		"paisanapolicia.permissao",
		"soldado.folga",
		"sem.permissao"
	},
	-- Sargento
	["Sargento"] = {
		_config = {
			title = "Sargento",
			gtype = "job"
		},
		"policia.permissao",
		"pm.permissao",
		"polpar.permissao",
		"portadp.permissao",
		"soldesarg.arsenal",
		"sargento.servico",
		"sem.permissao"
	},
	["PaisanaSargento"] = {
		_config = {
			title = "Sargento Folga",
			gtype = "job"
		},
		"paisanapolicia.permissao",
		"sargento.folga",
		"sem.permissao"
	},
	-- Tenente
	["Tenente"] = {
		_config = {
			title = "Tenente",
			gtype = "job"
		},
		"policia.permissao",
		"pm.permissao",
		"polpar.permissao",
		"portadp.permissao",
		"tenenteecoronel.arsenal",
		"tenente.servico",
		"sem.permissao"
	},
	["PaisanaTenente"] = {
		_config = {
			title = "Tenente Folga",
			gtype = "job"
		},
		"paisanapolicia.permissao",
		"tenente.folga",
		"sem.permissao"
	},
	-- Capitão
	["Capitão"] = {
		_config = {
			title = "Capitão",
			gtype = "job"
		},
		"policia.permissao",
		"pm.permissao",
		"polpar.permissao",
		"portadp.permissao",
		"capitaoecoronel.arsenal",
		"capitao.servico",
		"sem.permissao"
	},
	["PaisanaCapitão"] = {
		_config = {
			title = "Capitão Folga",
			gtype = "job"
		},
		"paisanapolicia.permissao",
		"capitao.folga",
		"sem.permissao"
	},
	-- Ten. Coronel
	["TenCoronel"] = {
		_config = {
			title = "Ten. Coronel PM",
			gtype = "job"
		},
		"policia.permissao",
		"pm.permissao",
		"polpar.permissao",
		"portadp.permissao",
		"tencoronelecoronel.arsenal",
		"tencoronel.servico",
		"sem.permissao"
	},
	["PaisanaTenCoronel"] = {
		_config = {
			title = "T. Cel. Folga",
			gtype = "job"
		},
		"paisanapolicia.permissao",
		"tencoronel.folga",
		"sem.permissao"
	},
	-- Coronel
	["Coronel"] = {
		_config = {
			title = "Coronel Policia",
			gtype = "job"
		},
		"policia.permissao",
		"polpar.permissao",
		"pm.permissao",
		"portadp.permissao",
		"tenenteecoronel.arsenal",
		"coronel.servico",
		"sem.permissao"
	},
	["PaisanaCoronel"] = {
		_config = {
			title = "Coronel Folga",
			gtype = "job"
		},
		"paisanapolicia.permissao",
		"coronel.folga",
		"sem.permissao"
	},
	["LiderPM"] = {
		_config = {
			title = "LiderPM",
			gtype = "job"
		},
		"liderpm.permissao",
		"policia.permissao",
		"polpar.permissao",
		"pm.permissao",
		"dv.permissao",
		"portadp.permissao",
		"tenenteecoronel.arsenal",
		"coronel.servico",
		"sem.permissao"
	},
	["PaisanaLiderPM"] = {
		_config = {
			title = "Lider PM Folga",
			gtype = "job"
		},
		"paisanapolicia.permissao",
		"liderpm.folga",
		"sem.permissao"
	},
	----------------------------------------------------------------------
	-- FME (Policia Especializada) ---------------------------------------
	----------------------------------------------------------------------
	["CoronelEspecializado"] = {
		_config = {
			title = "CoronelEspecializado",
			gtype = "job"
		},
		"liderpm.permissao",
		"coronelfme.permissao",
		"policia.permissao",
		"polpar.permissao",
		"pm.permissao",
		"dv.permissao",
		"portadp.permissao",
		"tenenteecoronel.arsenal",
		"coronelfme.servico",
		"sem.permissao"
	},
	["PaisanaCoronelFME"] = {
		_config = {
			title = "CoronelFME Folga",
			gtype = "job"
		},
		"paisanapolicia.permissao",
		"coronelfme.folga",
		"sem.permissao"
	},
	["SubCoronelEspecializado"] = {
		_config = {
			title = "SubCoronelEspecializado",
			gtype = "job"
		},
		"liderpm.permissao",
		"policia.permissao",
		"subcoronelfme.permissao",
		"polpar.permissao",
		"pm.permissao",
		"dv.permissao",
		"portadp.permissao",
		"tenenteecoronel.arsenal",
		"subcoronelfme.servico",
		"sem.permissao"
	},
	["PaisanaSubCoronelFME"] = {
		_config = {
			title = "SubCoronelFME Folga",
			gtype = "job"
		},
		"paisanapolicia.permissao",
		"subcoronelfme.folga",
		"sem.permissao"
	},

		----------------------------------------------------------------------
	-- PRF (Policia Federal Rodoviaria) ---------------------------------------
	----------------------------------------------------------------------
	["CoronelPRF"] = {
		_config = {
			title = "CoronelPRF",
			gtype = "job"
		},
		"liderpm.permissao",
		"coronelfme.permissao",
		"policia.permissao",
		"polpar.permissao",
		"pm.permissao",
		"dv.permissao",
		"portadp.permissao",
		"tenenteecoronel.arsenal",
		"coronel.servico",
		"federal.permissao",
		"sem.permissao"
	},
	["PaisanaCoronelPRF"] = {
		_config = {
			title = "CoronelPRF Folga",
			gtype = "job"
		},
		"paisanapolicia.permissao",
		"coronel.folga",
		"federal.permissao",
		"sem.permissao"
	},
	["SubCoronelPRF"] = {
		_config = {
			title = "SubCoronelPRF",
			gtype = "job"
		},
		"liderpm.permissao",
		"policia.permissao",
		"subcoronelfme.permissao",
		"polpar.permissao",
		"pm.permissao",
		"dv.permissao",
		"portadp.permissao",
		"tenenteecoronel.arsenal",
		"subcoronel.servico",
		"federal.permissao",
		"sem.permissao"
	},
	["PaisanaSubCoronelPRF"] = {
		_config = {
			title = "SubCoronelPRF Folga",
			gtype = "job"
		},
		"paisanapolicia.permissao",
		"subcoronel.folga",
		"federal.permissao",
		"sem.permissao"
	},
	-- Tenente
	["TenentePRF"] = {
		_config = {
			title = "TenentePRF",
			gtype = "job"
		},
		"policia.permissao",
		"pm.permissao",
		"polpar.permissao",
		"portadp.permissao",
		"tenenteecoronel.arsenal",
		"tenente.servico",
		"federal.permissao",
		"sem.permissao"
	},
	["PaisanaTenentePRF"] = {
		_config = {
			title = "TenentePRF Folga",
			gtype = "job"
		},
		"paisanapolicia.permissao",
		"tenente.folga",
		"federal.permissao",
		"sem.permissao"
	},
	-----------------------------------------------------
	-- Enfermeiro ---------------------------------------
	-----------------------------------------------------
	["Enfermeiro"] = {
		_config = {
			title = "Enfermeiro",
			gtype = "job"
		},
		"paramedico.permissao",
		"enfermeiro.permissao",
		"enfermeiro.servico",
		"polpar.permissao",
		"sem.permissao"
	}, 
	["PaisanaEnfermeiro"] = {
		_config = {
			title = "Enfermeiro Folga",
			gtype = "job"
		},
		"paisanaenfermeiro.permissao",
		"enfermeiro.folga",
		"sem.permissao"
	},
	-- Paramédico
	["Paramedico"] = {
		_config = {
			title = "Paramédico",
			gtype = "job"
		},
		"paramedico.permissao",
		"paramedico.servico",
		"polpar.permissao",
		"sem.permissao"
	}, 
	["PaisanaParamedico"] = {
		_config = {
			title = "Paramédico Folga",
			gtype = "job"
		},
		"paisanaparamedico.permissao",
		"paramedico.folga",
		"sem.permissao"
	},
	-- Médico
	["Medico"] = {
		_config = {
			title = "Médico",
			gtype = "job"
		},
		"paramedico.permissao",
		"medico.servico",
		"polpar.permissao",
		"sem.permissao"
	}, 
	["PaisanaMedico"] = {
		_config = {
			title = "Médico Folga",
			gtype = "job"
		},
		"paisanamedico.permissao",
		"medico.folga",
		"sem.permissao"
	},
	-- Diretor
	["DiretorHP"] = {
		_config = {
			title = "Diretor HP",
			gtype = "job"
		},
		"paramedico.permissao",
		"diretor.servico",
		"dv.permissao",
		"polpar.permissao",
		"sem.permissao"
	}, 
	["PaisanaDiretor"] = {
		_config = {
			title = "Diretor Folga",
			gtype = "job"
		},
		"diretor.folga",
		"sem.permissao"
	},

-----------------------------------------------------
------------------ BURGERSHOT -------------------------
["ChefeBurgershot"] = {
	_config = {
		title = "Chefe BurgerShot",
		gtype = "job"
	},
	"burgershot.permissao",
	"chefebugershot.permissao",
	"gerenteburgershot.permissao"
},
["GerenteBurgerShot"] = {
	_config = {
		title = "Gerente BurgerShot",
		gtype = "job"
	},
	"burgershot.permissao",
	"chefebugershot.permissao",
	"gerenteburgershot.permissao"
},
["FuncionarioBurgerShot"] = {
	_config = {
		title = "Funcionario BurgerShot",
		gtype = "job"
	},
	"burgershot.permissao",
	"chefebugershot.permissao"
},
-----------------------------------------------------
------------------ MECANICA -------------------------
	["MecanicoChefe"] = {
		_config = {
			title = "Mecanico Chefe",
			gtype = "job"
		},
		"mecanico.permissao",
		"mecanico-chefe.permissao",		
		"reparo.permissao",
		"dv.permissao",
		"lojamec.permissao",
		"callmec.permissao",
		"bau.permissao",
		"sem.permissao"
	},
	["PaisanaMecanicoChefe"] = {
		_config = {
			title = "Mecanico Folga",
			gtype = "job"
		},
		"paisanamecanico.permissao"
	},
	["Mecanico"] = {
		_config = {
			title = "Mecanico",
			gtype = "job"
		},
		"mecanico.permissao",
		"reparo.permissao",
		"dv.permissao",
		"callmec.permissao",
		"sem.permissao"
	},
	["PaisanaMecanico"] = {
		_config = {
			title = "Mecanico Folga",
			gtype = "job"
		},
		"paisanamecanico.permissao"
	},
	["MecanicoRecruta"] = {
		_config = {
			title = "Mecanico Recruta",
			gtype = "job"
		},
		"mecanico.permissao",
		"reparo.permissao",
		"dv.permissao",
		"callmec.permissao",
		"sem.permissao"
	},
	["PaisanaMecanicoRecruta"] = {
		_config = {
			title = "Mecanico Folga Recruta",
			gtype = "job"
		},
		"paisanamecanico.permissao"
	},
------------------------------------------------
	----- VIPS -------------------	
	["Bronze"] = {
		_config = {
			title = "Bronze",
			gtype = "vip"
		},
		"bronze.permissao",
		"attachs.permissao"
	},
	["Ouro"] = {
		_config = {
			title = "Ouro",
			gtype = "vip"
		},
		"ouro.permissao",
		"roupas.permissao"
	},	
	["Platina"] = {
		_config = {
			title = "Platina",
			gtype = "vip"
		},
		"platina.permissao",
		"roupas.permissao",
		"karting.permissao",
		"mochila.permissao"
	},
	["Diamante"] = {
		_config = {
			title = "Diamante",
			gtype = "vip"
		},
		"diamante.permissao",
		"roupas.permissao",
		"attachs.permissao",
		"mochila.permissao"
	},
	["Esmeralda"] = {
		_config = {
			title = "Esmeralda",
			gtype = "vip"
		},
		"esmeralda.permissao",
		"attachs.permissao",
		"roupas.permissao",
		"som.permissao",
		"mochila.permissao"
	},
	["Patrocinador"] = {
		_config = {
			title = "Patrocinador",
			gtype = "vip"
		},
		"patrocinador.permissao",
		"mochila.permissao",  -- não perde mochla quando morre
		"roupas.permissao",   -- não necessita ter o item roupas no inventário para trocar de roupas via comandos
		"attachs.permissao",  -- tem acesso ao /attachs e /cor numero EX: /cor 7 (tem que ter arma em mãos)
		"som.permissao",   -- tem acesso ao /som dentro de veículos
		"reparo.permissao"  -- tem acesso ao /reparar para consertar veiculos
	},
	["Attachs"] = {
		_config = {
			title = "Attachs",
			gtype = "Attachs"
		},
		"attachs.permissao"
	},	
	["Spotify"] = {
		"som.permissao"
	},

-------- MANSÕES -------	
	["MansaoFazenda"] = {
		"mansao1.permissao"
	},
	["MansaoOlhar"] = {
		"mansao3.permissao"
	},
	["MansaoLago"] = {
		"mansao4.permissao"
	},
	["MansaoFrancesa"] = {
		"mansao5.permissao"
	},
	["MansaoRiqueza"] = {
		"mansao7.permissao"
	},
	["MansaoVista"] = {
		"mansao8.permissao"
	},
	["MansaoEclipse"] = {
		"mansao10.permissao"
	},
	["MansaoJardim"] = {
		"mansao11.permissao"
	},
	["MansaoBilhar"] = {
		"mansao12.permissao"
	},
	["MansaoMalibu"] = {
		"mansao13.permissao"
	},
	["MansaoZancudo"] = {
		"mansao14.permissao"
	},
	["MansaodoDino"] = {
		"mansao15.permissao"
	},
	["MansaoVineward"] = {
		"mansao16.permissao"
	},
	["MansaoCristal"] = {
		"mansao17.permissao"
	},
	["MansaoStiifler"] = {
		"mansao18.permissao"
	},	
	["MansaoSantiago"] = {
		"mansao19.permissao"
	},
----- FACS/ ORGS -------	
	["TurquiaMembro"] = { 
		_config = {
			title = "Membro Turquia",
			gtype = "job",
			orgName = "Turquia",
			orgType = "Drogas"
			
		},
		"turquia.permissao",
		"drogas.permissao",		
		"ilegal.permissao"
	},
	["GerenteTurquia"] = { 
		_config = {
			title = "Gerente Turquia",
			gtype = "job",
			orgName = "Turquia",
			orgType = "Drogas"
	},
		"turquia.permissao",
		"gerenteturquia.permissao",
		"drogas.permissao",		
		"ilegal.permissao"
	},
	["SubLiderTurquia"] = { 
		_config = {
			title = "SubLiderTurquia",
			gtype = "job",
			orgName = "Turquia",
			orgType = "Drogas"
		},
		"turquia.permissao",
		"subliderturquia.permissao",
		"gerenteturquia.permissao",
		"drogas.permissao",			
		"ilegal.permissao"
	},
	["LiderTurquia"] = { 
		_config = {
			title = "Lider Turquia",
			gtype = "job",
			orgName = "Turquia",
			orgType = "Drogas"
		},
		"turquia.permissao",
		"liderturquia.permissao",	
		"subliderturquia.permissao",
		"gerenteturquia.permissao",
		"drogas.permissao",			
		"ilegal.permissao"
	},	
	["PCCMembro"] = { 
		_config = {
			title = "1º Comando da Capital",
			gtype = "job",
			orgName = "PCC",
			orgType = "Drogas"
	},
		"pcc.permissao",
		"drogas.permissao",		
		"ilegal.permissao"
	},
	["GerentePCC"] = { 
		_config = {
			title = "Gerente PCC",
			gtype = "job",
			orgName = "PCC",
			orgType = "Drogas"
	},
		"pcc.permissao",
		"gerentepcc.permissao",
		"drogas.permissao",		
		"ilegal.permissao"
	},
	["SubLiderPCC"] = { 
		_config = {
			title = "SubLiderPCC",
			gtype = "job",
			orgName = "PCC",
			orgType = "Drogas"
	},
		"pcc.permissao",
		"subliderpcc.permissao",
		"drogas.permissao",			
		"ilegal.permissao"
	},
	["LiderPCC"] = { 
		_config = {
			title = "Lider PCC",
			gtype = "job",
			orgName = "PCC",
			orgType = "Drogas"
	},
		"pcc.permissao",
		"liderpcc.permissao",
		"gerentepcc.permissao",
		"drogas.permissao",			
		"ilegal.permissao"
	},
	["TDCMembro"] = { 
		_config = {
			title = "Tropa da Croácia",
			gtype = "job",
			orgName = "TDC",
			orgType = "Munição"
		},
		"croacia.permissao",
		"municao.permissao",	
		"ilegal.permissao"
	},
	["GerenteTDC"] = { 
		_config = {
			title = "Gerente TDC",
			gtype = "job",
			orgName = "TDC",
			orgType = "Munição"
		},
		"croacia.permissao",
		"gerentecroacia.permissao",
		"municao.permissao",	
		"ilegal.permissao"
	},
	["SubLiderTDC"] = { 
		_config = {
			title = "SubLiderTDC",
			gtype = "job",
			orgName = "TDC",
			orgType = "Munição"
		},
		"croacia.permissao",	
		"sublidercroacia.permissao",	
		"gerentecroacia.permissao",
		"municao.permissao",		
		"ilegal.permissao"
	},
	["LiderTDC"] = { 
		_config = {
			title = "Líder TDC",
			gtype = "job",
			orgName = "TDC",
			orgType = "Munição"
		},
		"croacia.permissao",
		"lidercroacia.permissao",	
		"gerentecroacia.permissao",
		"municao.permissao",		
		"ilegal.permissao"
	},		
	["ADAMembro"] = {  
		_config = {
			title = "Amigos dos Amigos",
			gtype = "job",
			orgName = "ADA",
			orgType = "Drogas"
		},
		"ada.permissao",
		"drogas.permissao",
		"ilegal.permissao"
	},	
	["GerenteADA"] = {  
		_config = {
			title = "Gerente ADA",
			gtype = "job",
			orgName = "ADA",
			orgType = "Drogas"
		},
		"ada.permissao",
		"gerenteada.permissao",
		"drogas.permissao",
		"ilegal.permissao"
	},	
	["SubLiderADA"] = {  
		_config = {
			title = "SubLiderADA",
			gtype = "job",
			orgName = "ADA",
			orgType = "Drogas"
		},
		"ada.permissao",
		"subliderada.permissao",
		"gerenteada.permissao",	
		"drogas.permissao",
		"ilegal.permissao"
	},	
	["LiderADA"] = {  
		_config = {
			title = "Lider ADA",
			gtype = "job",
			orgName = "ADA",
			orgType = "Drogas"
		},
		"ada.permissao",
		"liderada.permissao",
		"gerenteada.permissao",	
		"drogas.permissao",
		"ilegal.permissao"
	},	
	["TremBalaMembro"] = { 
	_config = {
			title = "Membro Trem Bala",
			gtype = "job",
			orgName = "Trem Bala",
			orgType = "Armas"
	},
	"trembala.permissao",	
	"armas.permissao",
	"ilegal.permissao"
	},
	["GerenteTremBala"] = { 
		_config = {
			title = "Gerente Trem Bala",
			gtype = "job",
			orgName = "Trem Bala",
			orgType = "Armas"
		},
		"trembala.permissao",	
		"gerentetrembala.permissao",	
		"armas.permissao",
		"ilegal.permissao"
		},
	["SubLiderTremBala"] = { 
	_config = {
			title = "SubLiderTrem",
			gtype = "job",
			orgName = "Trem Bala",
			orgType = "Armas"
	},
	"trembala.permissao",
	"sublidertrembala.permissao",		
	"gerentetrembala.permissao",
	"armas.permissao",
	"ilegal.permissao"
	},
	["LiderTremBala"] = { 
	_config = {
			title = "Líder Trem Bala",
			gtype = "job",
			orgName = "Trem Bala",
			orgType = "Armas"
	},
	"trembala.permissao",
	"lidertrembala.permissao",		
	"gerentetrembala.permissao",
	"armas.permissao",
	"ilegal.permissao"
	},		
	["SpeedMembro"] = { 
		_config = {
			title = "Speed",
			gtype = "job",
			orgName = "Speed",
			orgType = "Desmanche"
		},
		"speed.permissao",
		"callmec.permissao",
		"desmanche.permissao",
		"reparo.permissao",
		"ilegal.permissao"
	},
	["GerenteSpeed"] = { 
		_config = {
			title = "Gerente Speed",
			gtype = "job",
			orgName = "Speed",
			orgType = "Desmanche"
		},
		"speed.permissao",
		"callmec.permissao",
		"desmanche.permissao",
		"gerentespeed.permissao",
		"reparo.permissao",
		"ilegal.permissao"
	},
	["SubLiderSpeed"] = { 
		_config = {
			title = "SubLiderSpeed",
			gtype = "job",
			orgName = "Speed",
			orgType = "Desmanche"
		},
		"speed.permissao",
		"callmec.permissao",
		"desmanche.permissao",
		"gerentespeed.permissao",
		"subliderspeed.permissao",	
		"reparo.permissao",
		"ilegal.permissao"
	},	
	["LiderSpeed"] = { 
		_config = {
			title = "LiderSpeed",
			gtype = "job",
			orgName = "Speed",
			orgType = "Desmanche"
		},
		"speed.permissao",
		"callmec.permissao",
		"desmanche.permissao",
		"gerentespeed.permissao",
		"liderspeed.permissao",	
		"reparo.permissao",
		"ilegal.permissao"
	},	
	["MafiaMembro"] = {
		_config = {
			title = "Máfia",
			gtype = "job",
			orgName = "Máfia",
			orgType = "Armas"
		},
		"mafia.permissao",
		"armas.permissao",		
		"ilegal.permissao"
	},
	["GerenteMafia"] = {
		_config = {
			title = "Gerente Máfia",
			gtype = "job",
			orgName = "Máfia",
			orgType = "Armas"
		},
		"mafia.permissao",
		"gerentemafia.permissao",
		"armas.permissao",		
		"ilegal.permissao"
	},
	["SubLiderMafia"] = {
		_config = {
			title = "SubLiderMáfia",
			gtype = "job",
			orgName = "Máfia",
			orgType = "Armas"
		},
		"mafia.permissao",
		"armas.permissao",		
		"gerentemafia.permissao",		
		"sublidermafia.permissao",		
		"ilegal.permissao"
	},
	["LiderMafia"] = {
		_config = {
			title = "Lider Máfia",
			gtype = "job",
			orgName = "Máfia",
			orgType = "Armas"
		},
		"mafia.permissao",
		"armas.permissao",				
		"lidermafia.permissao",
		"gerentemafia.permissao",		
		"ilegal.permissao"
	},	
	["FrancaMembro"] = {
		_config = {
			title = "Franca",
			gtype = "job",
			orgName = "Franca",
			orgType = "Armas"
		},
		"franca.permissao",
		"armas.permissao",		
		"ilegal.permissao"
	},
	["GerenteFranca"] = {
		_config = {
			title = "Gerente Franca",
			gtype = "job",
			orgName = "Franca",
			orgType = "Armas"
		},
		"franca.permissao",
		"gerentefranca.permissao",
		"armas.permissao",		
		"ilegal.permissao"
	},
	["SubLiderFranca"] = {
		_config = {
			title = "SubLiderFranca",
			gtype = "job",
			orgName = "Franca",
			orgType = "Armas"
		},
		"subliderfranca.permissao",
		"gerentefranca.permissao",
		"franca.permissao",
		"armas.permissao",					
		"ilegal.permissao"
	},
	["LiderFranca"] = {
		_config = {
			title = "Lider Franca",
			gtype = "job",
			orgName = "Franca",
			orgType = "Armas"
		},
		"liderfranca.permissao",
		"gerentefranca.permissao",
		"franca.permissao",
		"armas.permissao",					
		"ilegal.permissao"
	},	
	["FuriousMembro"] = {
		_config = {
			title = "Furious",
			gtype = "job",
			orgName = "Furious",
			orgType = "Desmanche"
		},
		"furious.permissao",
		"desmanche.permissao",
		"ilegal.permissao"
	},
	["GerenteFurious"] = {
		_config = {
			title = "Gerente Furious",
			gtype = "job",
			orgName = "Furious",
			orgType = "Desmanche"
		},
		"furious.permissao",
		"gerentefurious.permissao",
		"desmanche.permissao",
		"ilegal.permissao"
	},
	["SubLiderFurious"] = {
		_config = {
			title = "SubLiderFurious",
			gtype = "job",
			orgName = "Furious",
			orgType = "Desmanche"
		},
		"furious.permissao",
		"subliderfurious.permissao",
		"gerentefurious.permissao",
		"desmanche.permissao",		
		"ilegal.permissao"
	},
	["LiderFurious"] = {
		_config = {
			title = "Lider Furious",
			gtype = "job",
			orgName = "Furious",
			orgType = "Desmanche"
		},
		"furious.permissao",
		"liderfurious.permissao",
		"gerentefurious.permissao",
		"desmanche.permissao",		
		"ilegal.permissao"
	},		
	["VanillaMembro"] = {
		_config = {
			title = "Vanilla",
			gtype = "job",
			orgName = "Vanilla",
			orgType = "Lavagem"
		},
		"vanilla.permissao",
		"lavagem.permissao",
		"ilegal.permissao"		
	},
	["GerenteVanilla"] = {
		_config = {
			title = "Gerente Vanilla",
			gtype = "job",
			orgName = "Vanilla",
			orgType = "Lavagem"
		},
		"vanilla.permissao",
		"gerentevanilla.permissao",
		"lavagem.permissao",
		"ilegal.permissao"		
	},
	["SubLiderVanilla"] = {
		_config = {
			title = "SubLiderVanilla",
			gtype = "job",
			orgName = "Vanilla",
			orgType = "Lavagem"
		},
		"vanilla.permissao",
		"sublidervanilla.permissao",
		"gerentevanilla.permissao",
		"lavagem.permissao",
		"ilegal.permissao"				
	},
	["LiderVanilla"] = {
		_config = {
			title = "Líder Vanilla",
			gtype = "job",
			orgName = "Vanilla",
			orgType = "Lavagem"
		},
		"vanilla.permissao",
		"lidervanilla.permissao",
		"gerentevanilla.permissao",
		"lavagem.permissao",
		"ilegal.permissao"				
	},	
	["VelhoOesteMembro"] = { 
		_config = {
			title = "Velho Oeste",
			gtype = "job",
			orgName = "Velho Oeste",
			orgType = "Munição"
		},
		"velhooeste.permissao",
		"municao.permissao",	
		"ilegal.permissao"
	},
	["GerenteVelhoOeste"] = { 
		_config = {
			title = "Gerente VelhoOeste",
			gtype = "job",
			orgName = "Velho Oeste",
			orgType = "Munição"
		},
		"velhooeste.permissao",
		"gerentevelhooeste.permissao",
		"municao.permissao",	
		"ilegal.permissao"
	},
	["SubLiderVelhoOeste"] = { 
		_config = {
			title = "SubVelhoOeste",
			gtype = "job",
			orgName = "Velho Oeste",
			orgType = "Munição"
		},
		"velhooeste.permissao",
		"sublidervelhooeste.permissao",	
		"gerentevelhooeste.permissao",
		"municao.permissao",		
		"ilegal.permissao"
	},
	["LiderVelhoOeste"] = { 
		_config = {
			title = "Líder VelhoOeste",
			gtype = "job",
			orgName = "Velho Oeste",
			orgType = "Munição"
		},
		"velhooeste.permissao",
		"lidervelhooeste.permissao",	
		"gerentevelhooeste.permissao",
		"municao.permissao",		
		"ilegal.permissao"
	},				
	["EclipseMembro"] = { 
		_config = {
			title = "eclipse",
			gtype = "job",
			orgName = "eclipse",
			orgType = "Desmanche"
		},
		"eclipse.permissao",
		"desmanche.permissao",	
		"ilegal.permissao"
	},
	["GerenteEclipse"] = { 
		_config = {
			title = "Gerente eclipse",
			gtype = "job",
			orgName = "eclipse",
			orgType = "Desmanche"
		},
		"eclipse.permissao",
		"gerenteeclipse.permissao",
		"desmanche.permissao",	
		"ilegal.permissao"
	},
	["SubLiderEclipse"] = { 
		_config = {
			title = "Subeclipse",
			gtype = "job",
			orgName = "eclipse",
			orgType = "Desmanche"
		},
		"eclipse.permissao",
		"sublidereclipse.permissao",	
		"gerenteeclipse.permissao",
		"desmanche.permissao",		
		"ilegal.permissao"
	},
	["LiderEclipse"] = { 
		_config = {
			title = "Líder Eclipse",
			gtype = "job",
			orgName = "eclipse",
			orgType = "Desmanche"
		},
		"eclipse.permissao",
		"lidereclipse.permissao",	
		"gerenteeclipse.permissao",
		"desmanche.permissao",		
		"ilegal.permissao"
	},				
	["BahamasMembro"] = { 
		_config = {
			title = "Bahamas",
			gtype = "job",
			orgName = "bahamas",
			orgType = "Lavagem"
		},
		"bahamas.permissao",
		"lavagem.permissao",	
		"ilegal.permissao"
	},
	["GerenteBahamas"] = { 
		_config = {
			title = "Gerente Bahamas",
			gtype = "job",
			orgName = "bahamas",
			orgType = "Lavagem"
		},
		"bahamas.permissao",
		"gerentebahamas.permissao",
		"lavagem.permissao",	
		"ilegal.permissao"
	},
	["SubLiderBahamas"] = { 
		_config = {
			title = "SubBahamas",
			gtype = "job",
			orgName = "bahamas",
			orgType = "Lavagem"
		},
		"bahamas.permissao",
		"subliderbahamas.permissao",	
		"gerentebahamas.permissao",
		"lavagem.permissao",		
		"ilegal.permissao"
	},
	["LiderBahamas"] = { 
		_config = {
			title = "Líder Bahamas",
			gtype = "job",
			orgName = "Bahamas",
			orgType = "Lavagem"
		},
		"bahamas.permissao",
		"liderbahamas.permissao",	
		"gerentebahamas.permissao",
		"lavagem.permissao",		
		"ilegal.permissao"
	},
	["SimasTurboMembro"] = { 
		_config = {
			title = "Simasturbo",
			gtype = "job",
			orgName = "simasturbo",
			orgType = "Desmanche"
		},
		"simas.permissao",
		"desmanche.permissao",	
		"ilegal.permissao",
		"mecanico.permissao"
	},
	["GerenteSimasTurbo"] = { 
		_config = {
			title = "Gerente SimasTurbo",
			gtype = "job",
			orgName = "simasturbo",
			orgType = "Desmanche"
		},
		"simas.permissao",
		"gerentesimas.permissao",
		"desmanche.permissao",	
		"ilegal.permissao",
		"mecanico.permissao"
	},
	["SubLiderSimasTurbo"] = { 
		_config = {
			title = "SubSimasTurbo",
			gtype = "job",
			orgName = "eclipse",
			orgType = "Desmanche"
		},
		"simas.permissao",
		"sublidersimas.permissao",	
		"gerentesimas.permissao",
		"desmanche.permissao",		
		"ilegal.permissao",
		"mecanico.permissao"
	},
	["LiderSimasTurbo"] = { 
		_config = {
			title = "Líder SimasTurbo",
			gtype = "job",
			orgName = "SimasTurbo",
			orgType = "Desmanche"
		},
		"simas.permissao",
		"lidersimas.permissao",	
		"gerentesimas.permissao",
		"desmanche.permissao",		
		"ilegal.permissao",
		"mecanico.permissao"
	},								
}

cfg.users = {
	[1] = { "PRESIDENTE" },
	[2] = { "PRESIDENTE" },
}

cfg.selectors = {

}

return cfg