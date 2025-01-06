# sneak action
execute if data entity @s SelectedItem.components.minecraft:custom_data.navigator.sneak_action.command if predicate navigator:is_sneaking run return run function navigator:internal/actions/command with entity @s SelectedItem.components.minecraft:custom_data.navigator.sneak_action
execute if data entity @s SelectedItem.components.minecraft:custom_data.navigator.sneak_action.page if predicate navigator:is_sneaking run return run function navigator:internal/actions/page with entity @s SelectedItem.components.minecraft:custom_data.navigator.sneak_action

# normal action
execute if data entity @s SelectedItem.components.minecraft:custom_data.navigator.action.command run return run function navigator:internal/actions/command with entity @s SelectedItem.components.minecraft:custom_data.navigator.action
function navigator:internal/actions/page with entity @s SelectedItem.components.minecraft:custom_data.navigator.action