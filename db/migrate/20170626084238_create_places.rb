class CreatePlaces < ActiveRecord::Migration[5.1]
  def change
    create_table :places do |t|
      t.string :name
      t.string :city
      t.string :street
      t.integer :bldg
      t.text :description
      t.text :tags
      t.references :client, foreign_key: true

      t.timestamps
    end
  end
end
