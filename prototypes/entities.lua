data:extend({
  {
    type = "simple-entity",
    name = "decorative-entity",
    icon = "__your-mod-name__/graphics/icons/decorative-item.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    collision_box = {{-0.35, -0.35}, {0.35, 0.35}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    minable = {
      mining_time = 0.1,
      result = "decorative-item"
    },
    pictures = {
      {
        filename = "__your-mod-name__/graphics/entity/decorative-item.png",
        width = 64,
        height = 64,
        scale = 0.5
      }
    }
  }
})