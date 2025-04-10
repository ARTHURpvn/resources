fx_version 'bodacious'
game 'gta5'

ui_page 'html/index.html'

shared_scripts {
    "config.lua"
}

server_scripts {
	"@vrp/lib/utils.lua",
	"server/*.lua"
}

client_scripts {
	'@vrp/lib/utils.lua',
	'client/*.lua'
}

files {
	'html/*',
	'html/**/*'
}

dependencies {
    'vrp'
}