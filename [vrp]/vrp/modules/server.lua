-----------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------- [WEBHOOK] --------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------
function vRP.criarWebHook(webhook,message)
	if webhook ~= "" then
		PerformHttpRequest(webhook, function(err, text, headers) end, "POST",
        json.encode(
            {
                embeds = {
                    {
                        title = "WEBHOOK",
                        description = message,
                        author = {
                            name = "Registro de LOG",
                            icon_url = 'https://cdn.discordapp.com/attachments/854776258672066580/1147563160346308679/IMG_4591.png'
                        },
                        footer = {
                            text = os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S"),
                            icon_url = "https://cdn.discordapp.com/attachments/854776258672066580/1147563160346308679/IMG_4591.png"
                        },
                        color = color
                    }
                }
            }
        ),
        {["Content-Type"] = "application/json"}
    )
	end
end