script.on_init(function()
    -- Выполняется при создании новой карты
    game.print("Cheat mode activated")
end)

script.on_configuration_changed(function()
    -- Выполняется при обновлении мода
    game.print("Mod updated - cheat mode activated")
end)

script.on_event(defines.events.on_player_joined_game, function(event)
    local player = game.get_player(event.player_id)
    
    -- Проверяем, что игрок существует и это не мультиплеер
    if player and player.valid then
        -- Выполняем команду два раза
        player.force.cheat_mode = true  -- Включаем читерский режим
        game.print(player.name .. " activated cheat mode")
        
        -- Альтернативный вариант: отправка команды в консоль
        player.run_console_command("cheat")
        player.run_console_command("cheat")
    end
end)