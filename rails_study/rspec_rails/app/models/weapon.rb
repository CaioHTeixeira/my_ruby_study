class Weapon < ApplicationRecord
    validates :power_base, numericality: {
        greater_than_or_equal_to: 3000 
    }
    validates :power_step, numericality: {
        equal_to: 100
    }
    validates :level, numericality: {
        greater_than_or_equal_to: 1
    }

    def current_power 
        self.power_base + (self.level * self.power_step)
    end

    def title
        "#{self.name} ##{self.level}"
    end
end
