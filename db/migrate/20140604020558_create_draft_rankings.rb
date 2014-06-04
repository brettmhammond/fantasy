class CreateDraftRankings < ActiveRecord::Migration
  def change
    create_table :draft_rankings do |t|
      t.references :player, index: true
      t.integer :year
      t.float :ffn_rank
      t.integer :position_rank
      t.integer :overall_rank

      t.timestamps
    end
  end
end
