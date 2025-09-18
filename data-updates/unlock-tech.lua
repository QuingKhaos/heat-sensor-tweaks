data.raw.recipe["heat-sensor"].enabled = false

for name, tech in pairs(data.raw.technology) do
  if tech.effects then
    for _, effect in pairs(tech.effects) do
      if effect.type == "unlock-recipe" and effect.recipe == "heat-pipe" then
        table.insert(data.raw.technology[name].effects, {type = "unlock-recipe", recipe = "heat-sensor"})
        break
      end
    end
  end
end
