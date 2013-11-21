class RemoveTypeFromProducts < ActiveRecord::Migration
  def up
    remove_column :products, :type
  end

  def down
    add_column :products, :type, :string
  end
end
