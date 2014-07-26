class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.integer :asker_id
      t.integer :answerer_id
      t.timestamps
    end
  end
end
