class CreateDrafts < ActiveRecord::Migration
  def change
    create_table :drafts do |t|
      t.references :league, index: true

      t.timestamps
    end
  end
end
