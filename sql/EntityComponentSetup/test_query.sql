select 
a.name as 'Assemblage Name',
a.description 'Assemblage Description',
e.description as 'Entity Description',
c.name as 'Component Name'
from Assemblages a
join Assemblage_Components ac on a.assemblage_id=ac.assemblage_id
join Components c on ac.component_id=c.component_id
join Entity_Components ec on c.component_id=ec.component_id
join Entities e on ec.[entity_id] = e.[entity_id]