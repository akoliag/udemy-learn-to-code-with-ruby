class Gadget
end

shiny = Gadget.new
flashy = Gadget.new

p shiny
p flashy
p shiny.object_id
p flashy.object_id
p shiny == flashy
glossy = shiny # assigned to already exisiting object id, it is not a new one 
p glossy.object_id == shiny.object_id
p glossy.object_id
p shiny.object_id
