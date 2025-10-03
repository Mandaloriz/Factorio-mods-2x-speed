script.on_event(defines.events.on_tick, function(event)
if game.tick % 60 == 0 then
game.print("Hello, Factorio!")
end
end)