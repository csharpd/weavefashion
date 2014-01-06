class CreateDresses < ActiveRecord::Migration
  def change
    create_table :dresses do |table|
        table.string :name
        table.string :size
        table.string :colour
        table.integer :price
        table.string :image
        table.integer :likes
    end
  end
end
