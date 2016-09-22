class AddOrderToPackage < ActiveRecord::Migration[5.0]
  def change
    add_column :packages, :order, :integer, :limit => 8
  end
end
