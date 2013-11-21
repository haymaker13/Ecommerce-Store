class AddWheelTypeToProducts < ActiveRecord::Migration
  def change
    add_column :products, :wheel_type, :string
  end
end
