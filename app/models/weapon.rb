class Weapon < ApplicationRecord
  validates :power_step, numericality: { equal_to: 100 }
  validates :power_base, numericality: { equal_to: 3000  }
    
  def current_power
    (power_base + (level - 1) * power_step )
  end

  def title
    "#{self.name}  ##{self.level}"
  end
end