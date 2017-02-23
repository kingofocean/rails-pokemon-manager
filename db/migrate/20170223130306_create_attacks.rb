class CreateAttacks < ActiveRecord::Migration[5.0]
  def change
    create_table :attacks do |t|
      t.string :name
      t.string :effect
      t.references :type, foreign_key: true

      t.timestamps
    end
  end
end
