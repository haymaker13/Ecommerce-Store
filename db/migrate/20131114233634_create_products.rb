class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.decimal :price
      t.integer :stock_quantity
      t.integer :diameter
      t.decimal :width
      t.string :bolt_pattern
      t.string :company
      t.string :colour
      t.decimal :offset
      t.string :type

      t.timestamps
    end
  end
end
