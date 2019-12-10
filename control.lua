script.on_event(defines.events.on_player_created, function(event)
	local player = game.players[event.player_index]

	if player.character == nil then return end

	player.get_inventory(defines.inventory.character_main).clear()
	player.get_inventory(defines.inventory.character_guns).clear()
	player.get_inventory(defines.inventory.character_ammo).clear()

	local items = {
		-- equipment
		{"power-armor", 1},
		{"fusion-reactor-equipment", 1},
		{"exoskeleton-equipment", 1},
		{"personal-roboport-equipment", 1},
		-- resources
		{"coal", 150},
		{"iron-plate", 500},
		{"copper-plate", 300},
		{"iron-gear-wheel", 100},
		{"electronic-circuit", 100},
		-- belts
		{"fast-transport-belt", 2000},
		{"fast-underground-belt", 200},
		{"fast-splitter", 50},
		-- pipes
		{"pipe-to-ground", 50},
		{"pipe", 50},
		-- other logistic
		{"fast-inserter", 500},
		{"steel-chest", 50},
		{"construction-robot", 10},
		-- buildings
		{"steel-furnace", 50},
		{"assembling-machine-2", 100},
		{"electric-mining-drill", 50},
		-- electricity
		{"medium-electric-pole", 200},
		{"big-electric-pole", 50},
		{"boiler", 10},
		{"steam-engine", 20},
		{"offshore-pump", 5},
	}

	for k,v in pairs(items) do
		player.insert{name = v[1], count = v[2]}
	end
end)

