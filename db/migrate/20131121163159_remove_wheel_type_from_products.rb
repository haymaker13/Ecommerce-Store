class RemoveWheelTypeFromProducts < ActiveRecord::Migration
  def up
    remove_column :products, :wheel_type
  end

  def down
    add_column :products, :wheel_type, :string
  end
end
