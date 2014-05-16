class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name
      t.integer :position_id
      t.integer :team_id
      t.string :headshot

    end
  end
end
