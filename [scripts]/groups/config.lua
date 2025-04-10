

local config = {}


config.currency       = "R$" --text to currency log of bank organization
config.textwithdrawal = "Retirado por" --text to withdrawal log of bank organization
config.textdeposit    = "Depositado por" --text to deposit log of bank organization
config.texttake       = "Retirado por" --text to take log of chest organization
config.textstore      = "Colocado por" --text to store log of chest organization
config.IPImages       = "" --link of images the server
config.command        = "org" --command to open system
config.keybind        = "F11" --bind to open system
config.webhookimage   = "" --image of webhook discord

config.blacklist = {
    --command to blacklist manager
    --(ex add: /blacklist add user_id days)
    --(ex remove: /blacklist rem user_id)
    command = "blacklist",
    permissions = { --permissions of manager blacklist
        "admin.permissao"
    }
}


config.groups = {
    ["hospital"] = { --organization name
        chest     = "Hospital", --nome do baú nas logs
        bank      = true, --active bank (true|false)
        members   = 99, --máximo de membros da organização
        blacklist = {
            active = true, --ativar blacklist (true|false)
            time   = 3,   --em dias
        },
        permissions = {
            [1] = { 
                inservice  = "DiretorHP", --group in service 
                offservice = "PaisanaDiretor", --group off service 
                withdraw   = true, --permissão para retirar (true|false)
                manager    = true --permissão para gerenciar membros (true|false)
            },
            [2] = { 
                inservice  = "Medico",
                offservice = "PaisanaMedico",
                withdraw   = false,
                manager    = true
            },
            [3] = { 
                inservice  = "Paramedico",
                offservice = "PaisanaParamedico",
                withdraw   = false,
                manager    = false
            },
            [4] = { 
                inservice  = "Enfermeiro",
                offservice = "PaisanaEnfermeiro",
                withdraw   = false,
                manager    = false
            },
        }
    },

    ["PM"] = {
        chest     = "PM",
        bank      = false,
        members   = 99,
        blacklist = {
            active = true,
            time   = 3,   --em dias
        },
        permissions = {
            [1] = { 
                inservice  = "LiderPM",
                offservice = "PaisanaLiderPM",
                withdraw   = true,
                manager    = true
            },
            [2] = { 
                inservice  = "Coronel",
                offservice = "PaisanaCoronel",
                withdraw   = true,
                manager    = true
            },
            [3] = { 
                inservice  = "TenCoronel",
                offservice = "PaisanaTenCoronel",
                withdraw   = false,
                manager    = true
            },
            [4] = { 
                inservice  = "Capitão",
                offservice = "PaisanaCapitão",
                withdraw   = false,
                manager    = true
            },
            [5] = { 
                inservice  = "Tenente",
                offservice = "PaisanaTenente",
                withdraw   = false,
                manager    = false
            },
            [6] = { 
                inservice  = "Sargento",
                offservice = "PaisanaSargento",
                withdraw   = false,
                manager    = false
            },
            [7] = { 
                inservice  = "Soldado",
                offservice = "PaisanaSoldado",
                withdraw   = false,
                manager    = false
            },
            [8] = { 
                inservice  = "Recruta",
                offservice = "PaisanaRecruta",
                withdraw   = false,
                manager    = false
            },
        }
    },

------------------------------------------
--------------- PRF --------------
------------------------------------------
    ["PRF"] = {
        chest     = "PRF",
        bank      = true,
        members   = 99,
        blacklist = {
            active = true,
            time   = 3,   --em dias
        },
        permissions = {
            [1] = { 
                inservice  = "LiderPRF",
                offservice = "LiderPaisanaPRF",
                withdraw   = true,
                manager    = true
            },
            [2] = { 
                inservice  = "PRF",
                offservice = "PaisanaPRF",
                withdraw   = false,
                manager    = false
            },
        }
    },
------------------------------------------
--------------- Exercito --------------
------------------------------------------
    ["Exercito"] = {
        chest     = "Exercito",
        bank      = true,
        members   = 99,
        blacklist = {
            active = true,
            time   = 3,   --em dias
        },
        permissions = {
            [1] = { 
                inservice  = "LiderExercito",
                offservice = "LiderExercitoPaisana",
                withdraw   = true,
                manager    = true
            },
            [2] = { 
                inservice  = "Exercito",
                offservice = "PaisanaExercito",
                withdraw   = false,
                manager    = false
            },
        }
    },
------------------------------------------
--------------- Polcia Civil -------------
------------------------------------------
    ["PolicialCivil"] = {
        chest     = "PolicialCivil",
        bank      = true,
        members   = 99,
        blacklist = {
            active = true,
            time   = 3,   --em dias
        },
        permissions = {
            [1] = { 
                inservice  = "LiderCivil",
                offservice = "LiderCivilPaisana",
                withdraw   = true,
                manager    = true
            },
            [2] = { 
                inservice  = "PolicialCivil",
                offservice = "PaisanaCivil",
                withdraw   = false,
                manager    = false
            },
        }
    },
------------------------------------------
--------------- Polcia ROTA -------------
------------------------------------------
    ["ROTA"] = {
        chest     = "ROTA",
        bank      = true,
        members   = 99,
        blacklist = {
            active = true,
            time   = 3,   --em dias
        },
        permissions = {
            [1] = { 
                inservice  = "LiderROTA",
                offservice = "LiderROTAPaisana",
                withdraw   = true,
                manager    = true
            },
            [2] = { 
                inservice  = "ROTA",
                offservice = "PaisanaROTA",
                withdraw   = false,
                manager    = false
            },
        }
    },
------------------------------------------
-------------- FACS/ ORGS ----------------
------------------------------------------
    ["SportRace"] = {
        chest     = "SportRace",
        bank      = true,
        members   = 99,
        blacklist = {
            active = false,
            time   = 3,   --em dias
        },
        permissions = {
            [1] = { 
                inservice  = "MecanicoChefe",
                offservice = "PaisanaMecanicoChefe",
                withdraw   = true,
                manager    = true
            },
            [2] = { 
                inservice  = "Mecanico",
                offservice = "PaisanaMecanico",
                withdraw   = true,    --permissão para retirar (true|false)
                manager    = true  --permissão para gerenciar membros (true|false)
            },
            [3] = { 
                inservice  = "MecanicoRecruta",
                offservice = "PaisanaMecanicoRecruta",
                withdraw   = false,
                manager    = false
            },
        }
    },
    ["TDC"] = {
        chest     = "TDC",
        bank      = true,
        members   = 99,
        blacklist = {
            active = true,
            time   = 3,   --em dias
        },
        permissions = {
            [1] = { 
                inservice  = "LiderTDC",
                offservice = false,
                withdraw   = true,
                manager    = true
            },
            [2] = { 
                inservice  = "SubLiderTDC",
                offservice = false,
                withdraw   = true,
                manager    = true
            },
            [3] = { 
                inservice  = "GerenteTDC",
                offservice = false,
                withdraw   = false,    --permissão para retirar (true|false)
                manager    = true  --permissão para gerenciar membros (true|false)
            },
            [4] = { 
                inservice  = "TDC",
                offservice = false,
                withdraw   = false,
                manager    = false
            },
        }
    },
    ["ADA"] = {
        chest     = "ADA",
        bank      = true,
        members   = 99,
        blacklist = {
            active = true,
            time   = 3,   --em dias
        },
        permissions = {
            [1] = { 
                inservice  = "LiderADA",
                offservice = false,
                withdraw   = true,
                manager    = true
            },
            [2] = { 
                inservice  = "SubLiderADA",
                offservice = false,
                withdraw   = true,
                manager    = true
            },
            [3] = { 
                inservice  = "GerenteADA",
                offservice = false,
                withdraw   = false,    --permissão para retirar (true|false)
                manager    = true  --permissão para gerenciar membros (true|false)
            },
            [4] = { 
                inservice  = "ADA",
                offservice = false,
                withdraw   = false,
                manager    = false
            },
        }
    },
    ["TremBala"] = {
        chest     = "TremBala",
        bank      = true,
        members   = 99,
        blacklist = {
            active = true,
            time   = 3,   --em dias
        },
        permissions = {
            [1] = { 
                inservice  = "LiderTremBala",
                offservice = false,
                withdraw   = true,
                manager    = true
            },
            [2] = { 
                inservice  = "SubLiderTremBala",
                offservice = false,
                withdraw   = true,
                manager    = true
            },
            [3] = { 
                inservice  = "GerenteTremBala",
                offservice = false,
                withdraw   = false,    --permissão para retirar (true|false)
                manager    = true  --permissão para gerenciar membros (true|false)
            },
            [4] = { 
                inservice  = "TremBala",
                offservice = false,
                withdraw   = false,
                manager    = false
            },
        }
    },
    ["Speed"] = {
        chest     = "Speed",
        bank      = true,
        members   = 99,
        blacklist = {
            active = true,
            time   = 3,   --em dias
        },
        permissions = {
            [1] = { 
                inservice  = "LiderSpeed",
                offservice = false,
                withdraw   = true,
                manager    = true
            },
            [2] = { 
                inservice  = "SubLiderSpeed",
                offservice = false,
                withdraw   = true,
                manager    = true
            },
            [3] = { 
                inservice  = "GerenteSpeed",
                offservice = false,
                withdraw   = false,    --permissão para retirar (true|false)
                manager    = true  --permissão para gerenciar membros (true|false)
            },
            [4] = { 
                inservice  = "Speed",
                offservice = false,
                withdraw   = false,
                manager    = false
            },
        }
    },
    ["Mafia"] = {
        chest     = "Mafia",
        bank      = true,
        members   = 99,
        blacklist = {
            active = true,
            time   = 3,   --em dias
        },
        permissions = {
            [1] = { 
                inservice  = "LiderMafia",
                offservice = false,
                withdraw   = true,
                manager    = true
            },
            [2] = { 
                inservice  = "SubLiderMafia",
                offservice = false,
                withdraw   = true,
                manager    = true
            },
            [3] = { 
                inservice  = "GerenteMafia",
                offservice = false,
                withdraw   = false,    --permissão para retirar (true|false)
                manager    = true  --permissão para gerenciar membros (true|false)
            },
            [4] = { 
                inservice  = "Mafia",
                offservice = false,
                withdraw   = false,
                manager    = false
            },
        }
    },
    ["BurgerShot"] = {
        chest     = "BurgerShot",
        bank      = true,
        members   = 99,
        blacklist = {
            active = true,
            time   = 3,   --em dias
        },
        permissions = {
            [1] = { 
                inservice  = "ChefeBurgershot",
                offservice = false,
                withdraw   = true,
                manager    = true
            },
            [2] = { 
                inservice  = "GerenteBurgerShot",
                offservice = false,
                withdraw   = false,    --permissão para retirar (true|false)
                manager    = true  --permissão para gerenciar membros (true|false)
            },
            [3] = { 
                inservice  = "BurgerShot",
                offservice = false,
                withdraw   = false,
                manager    = false
            },
        }
    },
    ["Franca"] = {
        chest     = "Franca",
        bank      = true,
        members   = 99,
        blacklist = {
            active = true,
            time   = 3,   --em dias
        },
        permissions = {
            [1] = { 
                inservice  = "LiderFranca",
                offservice = false,
                withdraw   = true,
                manager    = true
            },
            [2] = { 
                inservice  = "SubLiderFranca",
                offservice = false,
                withdraw   = true,
                manager    = true
            },
            [3] = { 
                inservice  = "GerenteFranca",
                offservice = false,
                withdraw   = false,    --permissão para retirar (true|false)
                manager    = true  --permissão para gerenciar membros (true|false)
            },
            [4] = { 
                inservice  = "Franca",
                offservice = false,
                withdraw   = false,
                manager    = false
            },
        }
    },
    ["Furious"] = {
        chest     = "Furious",
        bank      = true,
        members   = 99,
        blacklist = {
            active = true,
            time   = 3,   --em dias
        },
        permissions = {
            [1] = { 
                inservice  = "LiderFurious",
                offservice = false,
                withdraw   = true,
                manager    = true
            },
            [2] = { 
                inservice  = "SubLiderFurious",
                offservice = false,
                withdraw   = true,
                manager    = true
            },
            [3] = { 
                inservice  = "GerenteFurious",
                offservice = false,
                withdraw   = false,    --permissão para retirar (true|false)
                manager    = true  --permissão para gerenciar membros (true|false)
            },
            [4] = { 
                inservice  = "Furious",
                offservice = false,
                withdraw   = false,
                manager    = false
            },
        }
    },
    ["Eclipse"] = {
        chest     = "Eclipse",
        bank      = true,
        members   = 99,
        blacklist = {
            active = true,
            time   = 3,   --em dias
        },
        permissions = {
            [1] = { 
                inservice  = "LiderEclipse",
                offservice = false,
                withdraw   = true,
                manager    = true
            },
            [2] = { 
                inservice  = "SubLiderEclipse",
                offservice = false,
                withdraw   = true,
                manager    = true
            },
            [3] = { 
                inservice  = "GerenteEclipse",
                offservice = false,
                withdraw   = false,    --permissão para retirar (true|false)
                manager    = true  --permissão para gerenciar membros (true|false)
            },
            [4] = { 
                inservice  = "Eclipse",
                offservice = false,
                withdraw   = false,
                manager    = false
            },
        }
    },
------------------------------------------
---------------- VelhoOeste ----------------
------------------------------------------
    ["VelhoOeste"] = {
        chest     = "VelhoOeste",
        bank      = true,
        members   = 99,
        blacklist = {
            active = true,
            time   = 3,   --em dias
        },
        permissions = {
            [1] = { 
                inservice  = "LiderVelhoOeste",
                offservice = false,
                withdraw   = true,
                manager    = true
            },
            [2] = { 
                inservice  = "SubLiderVelhoOeste",
                offservice = false,
                withdraw   = true,
                manager    = true
            },
            [3] = { 
                inservice  = "GerenteVelhoOeste",
                offservice = false,
                withdraw   = false,    --permissão para retirar (true|false)
                manager    = true  --permissão para gerenciar membros (true|false)
            },
            [4] = { 
                inservice  = "VelhoOeste",
                offservice = false,
                withdraw   = false,
                manager    = false
            },
        }
    },
    ["PCC"] = {
        chest       = "PCC",
        bank        = true,
        members     = 99,
        blacklist   = {
            active = true,
            time   = 3, --em dias
        },
        permissions = {
            [1] = {
                inservice  = "LiderPCC",
                offservice = false,
                withdraw   = true,
                manager    = true
            },
            [2] = {
                inservice  = "SubLiderPCC",
                offservice = false,
                withdraw   = true,
                manager    = true
            },
            [3] = {
                inservice  = "GerentePCC",
                offservice = false,
                withdraw   = false, --permissão para retirar (true|false)
                manager    = true   --permissão para gerenciar membros (true|false)
            },
            [4] = {
                inservice  = "PCC",
                offservice = false,
                withdraw   = false,
                manager    = false
            },
        }
    },
    ["Vanilla"] = {
        chest     = "Vanilla",
        bank      = true,
        members   = 99,
        blacklist = {
            active = true,
            time   = 3,   --em dias
        },
        permissions = {
            [1] = { 
                inservice  = "LiderVanilla",
                offservice = false,
                withdraw   = true,
                manager    = true
            },
            [2] = { 
                inservice  = "SubLiderVanilla",
                offservice = false,
                withdraw   = true,
                manager    = true
            },
            [3] = { 
                inservice  = "GerenteVanilla",
                offservice = false,
                withdraw   = false,    --permissão para retirar (true|false)
                manager    = true  --permissão para gerenciar membros (true|false)
            },
            [4] = { 
                inservice  = "Vanilla",
                offservice = false,
                withdraw   = false,
                manager    = false
            },
        }
    },
    ["Bahamas"] = {
        chest     = "Bahamas",
        bank      = true,
        members   = 99,
        blacklist = {
            active = true,
            time   = 3,   --em dias
        },
        permissions = {
            [1] = { 
                inservice  = "LiderBahamas",
                offservice = false,
                withdraw   = true,
                manager    = true
            },
            [2] = { 
                inservice  = "GerenteBahamas",
                offservice = false,
                withdraw   = false,    --permissão para retirar (true|false)
                manager    = true  --permissão para gerenciar membros (true|false)
            },
            [3] = { 
                inservice  = "Bahamas",
                offservice = false,
                withdraw   = false,
                manager    = false
            },
        }
    },
    ["Turquia"] = {
        chest     = "Turquia",
        bank      = true,
        members   = 99,
        blacklist = {
            active = true,
            time   = 3,   --em dias
        },
        permissions = {
            [1] = { 
                inservice  = "LiderTurquia",
                offservice = false,
                withdraw   = true,
                manager    = true
            },
            [2] = { 
                inservice  = "SubLiderTurquia",
                offservice = false,
                withdraw   = true,
                manager    = true
            },
            [3] = { 
                inservice  = "GerenteTurquia",
                offservice = false,
                withdraw   = false,    --permissão para retirar (true|false)
                manager    = true  --permissão para gerenciar membros (true|false)
            },
            [4] = { 
                inservice  = "Turquia",
                offservice = false,
                withdraw   = false,
                manager    = false
            },
        }
    },
    ["SimasTurbo"] = {
        chest     = "SimasTurbo",
        bank      = true,
        members   = 99,
        blacklist = {
            active = true,
            time   = 3,   --em dias
        },
        permissions = {
            [1] = { 
                inservice  = "LiderSimasTurbo",
                offservice = false,
                withdraw   = true,
                manager    = true
            },
            [2] = { 
                inservice  = "SubLiderSimasTurbo",
                offservice = false,
                withdraw   = true,
                manager    = true
            },
            [3] = { 
                inservice  = "GerenteSimasTurbo",
                offservice = false,
                withdraw   = false,    --permissão para retirar (true|false)
                manager    = true  --permissão para gerenciar membros (true|false)
            },
            [4] = { 
                inservice  = "SimasTurbo",
                offservice = false,
                withdraw   = false,
                manager    = false
            }
        }
    }
}

config.starttablet = function()
    vRP._CarregarObjeto("amb@code_human_in_bus_passenger_idles@female@tablet@idle_a","idle_b","prop_cs_tablet",49,60309)
end

config.stoptablet = function()
	vRP._DeletarObjeto()
	vRP._stopAnim(false)
end

return config