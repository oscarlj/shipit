class AddAddressToPackage < ActiveRecord::Migration[5.0]
  def change
    add_column :packages, :address, :string
  end
end
