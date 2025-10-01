-- Enable prod modules for some recipes
-- Recipes with very specific ratios are deliberately excluded
local util = require("data-util")

for i, recipe in pairs(util.me.recipes) do
  if data.raw.recipe[recipe] then
    data.raw.recipe[recipe].allow_productivity = true
  end
end
