class CreateServices < ActiveRecord::Migration[5.1]
  def change
    create_table :services do |t|
      t.boolean :espesso
      t.boolean :cappuccino
      t.boolean :americano
      t.boolean :cinnamon
      t.boolean :sugar
      t.boolean :milk
      t.integer :delay
      t.references :place, foreign_key: true

      t.timestamps
    end
  end
end
