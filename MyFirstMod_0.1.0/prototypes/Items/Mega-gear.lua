-- data.lua

-- Создаем предмет
data:extend({
  {
    type = "item",
    name = "mega-gear",
    icon = "__MyFirsMod__/prototypes/Items/mega-gear.png", -- Путь к иконке
    icon_size = 64,
    subgroup = "intermediate-product",
    order = "d[mega-gear]",
    stack_size = 100
  }
})

-- Создаем рецепт для этого предмета
data:extend({
  {
    type = "recipe",
    name = "mega-gear-crafting",
    enabled = false, -- Изначально недоступен
    ingredients = {
      {"iron-gear-wheel", 10},
      {"advanced-circuit", 2}
    },
    result = "mega-gear"
  }
})

-- Делаем так, чтобы рецепт открывался в исследовании "Автоматизация 2"
data:extend({
  {
    type = "technology",
    name = "mega-gear-tech",
    icon = "__double_running_speed__/graphics/technology/mega-gear-tech.png",
    icon_size = 128,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "mega-gear-crafting"
      }
    },
    prerequisites = {"automation-2"},
    unit = {
      count = 100,
      ingredients = {
        {"science-pack-1", 1},
        {"science-pack-2", 1}
      },
      time = 30
    }
  }
})