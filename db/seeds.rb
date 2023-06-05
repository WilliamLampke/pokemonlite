ash = Fighter.create!(name: "Ash", hitpoints: 150)
clone = Fighter.create!(name: "Ash's Clone", hitpoints: 150)

spell1 = Spell.create!(name: "Firebolt", description: "The user hurls a ball of fire at the opponent", spell_type: 0, effect: 25, fighter_id: ash.id)
spell2 = Spell.create!(name: "Firebolt", description: "The user hurls a ball of fire at the opponent", spell_type: 0, effect: 25, fighter_id: clone.id)