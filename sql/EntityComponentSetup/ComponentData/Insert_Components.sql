insert into Components(name, description, table_name)
values
('Description', 'Basic descriptive strings', 'ComponentData_Description'),
('Value', 'How much are others willing to pay for this?', 'ComponentData_Value'),
('Attributes', 'Basic character attributes', 'ComponentData_Attributes'),
('CombatEffectList', 'List of combat effects', 'ComponentData_CombatEffectList'),
('CombatEffect', 'An effect that changes combat', 'ComponentData_CombatEffect'),
('Health', 'Max and current health', 'ComponentData_Health'),
('DispositionList', 'List of pairings of category tags and values', 'ComponentData_DispositionList'),
('Disposition', 'How does this entity feel about others?', 'ComponentData_Disposition'),
('CategoryList', 'List of disposition tags associated with this entity', 'ComponentData_CategoryList'),
('Category', 'A category that this entity fits into', 'ComponentData_Category'),
('TransitionProperties', 'Where does this entity lead? How is it accessed?', 'ComponentData_TransitionProperties'),
('GoTo', 'A destination environment', 'ComponentData_GoTo'),
('DialogueStateProperties', 'Prompt and responses for this entity', 'ComponentData_DialogueStateProperties'),
('ResponseList', 'List of responses', 'ComponentData_ResponseList'),
('Response', 'A response choice', 'ComponentData_Response'),
('SpellProperties', 'How does this spell work?', 'ComponentData_SpellProperties'),
('StatusList', 'List of statuses', 'ComponentData_StatusList'),
('Status', 'An ongoing effect on this entity', 'ComponentData_Status'),
('Blessing', 'A gift from the Gods', 'ComponentData_Blessing'),
('ContainerList', 'A list of containers', 'ComponentData_ContainerList'),
('Container', 'A collection of container slots', 'ComponentData_Container'),
('ContainerSlot', 'A slot for an item', 'ComponentData_ContainerSlot'),
('Trigger', 'A triggered event', 'ComponentData_Trigger'),
('GlobalConditionList', 'A list of global conditions', 'ComponentData_GlobalConditionList'),
('GlobalCondition', 'A globally accessable boolean', 'ComponentData_GlobalCondition'),
('EquipProperties', 'Where does this equip? How does it affect the equipped?', 'ComponentData_EquipProperties'),
('Equipped', 'What is equipped to this entity?', 'ComponentData_EquipSlots')

ArgumentType
DestinationType

Disposition
DispositionList
EquipSlot
EquipProperties
TriggerArgumentType
Response
ResponseList
SpellLevel
TargetType
SpellProperties
Status
StatusList
TransitionProperties
Value