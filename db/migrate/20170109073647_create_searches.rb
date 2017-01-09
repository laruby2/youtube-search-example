class CreateSearches < ActiveRecord::Migration[5.0]
  def change
    create_table :searches do |t|
      t.text :result
      t.references :word, foreign_key: true

      t.timestamps
    end
  end
end
