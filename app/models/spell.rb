class Spell < ApplicationRecord
    belongs_to :fighter

    enum spell_type: [:enemy, :self, :heal]
end