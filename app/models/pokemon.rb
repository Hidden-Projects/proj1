class Pokemon < ActiveRecord::Base
    belongs_to :trainer
    validates :name, presence: true, uniqueness: true

    def damage!(amount)
      if self.health > 0
        self.health -= amount
      end
      if self.health <= 0     # recheck health after decrementing
        self.dead = true
      end
      self.save
    end

    def heal!(amount)
      self.health += amount
      if self.health > 0
        self.dead = false
      end
      self.save
    end
end
