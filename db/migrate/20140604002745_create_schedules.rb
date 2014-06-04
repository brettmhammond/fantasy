class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.integer :ffn_game_id
      t.integer :year
      t.integer :week
      t.date :date
      t.integer :away_team_id, index: true
      t.integer :home_team_id, index: true
      t.string :time
      t.string :broadcaster

      t.timestamps
    end
  end
end
