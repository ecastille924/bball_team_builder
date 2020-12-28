class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name 
      t.string :coach 
      t.string :point_guard
      t.string :shooting_guard
      t.string :small_forward 
      t.string :power_forward 
      t.string :center 
    end
  end
end
