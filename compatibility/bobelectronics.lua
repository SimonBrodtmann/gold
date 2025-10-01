local util = require("data-util")

if mods.bobelectronics or mods.MDbobelectronics or mods.MDbobelectronics2 then
  util.replace_ingredient("advanced-processing-unit", "processing-electronics", "cpu", 4)
  util.remove_recipe_effect("advanced-electronics-3", "processing-electronics")
  util.remove_raw("recipe", "processing-electronics")
  util.remove_raw("item", "processing-electronics")

  if mods["Krastorio2"] then
    data.raw.recipe["kr-crush-processing-electronics"] = nil
  end

  if mods["248k-Redux"] then
    data.raw.recipe["fu_burn_processing-electronics_recipe"] = nil
  end
end
