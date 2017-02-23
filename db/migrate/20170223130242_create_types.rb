class CreateTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :types do |t|
      t.string :name
      t.string :weakness
      t.references :pokemon, foreign_key: true

      t.timestamps
    end
  end
end
