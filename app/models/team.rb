class Team <ActiveRecord::Base 
    belongs_to :user
    validates :name, presence: true 
    validates :point_guard, presence: true 
    validates :shooting_guard, presence: true 
    validates :power_forward, presence: true 
    validates :small_forward, presence: true 
    validates :center, presence: true 
    validates :coach, presence: true 
end