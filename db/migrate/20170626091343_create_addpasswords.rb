class CreateAddpasswords < ActiveRecord::Migration[5.1]
  def change
    add_column :places, :password, :string 
  end
end
