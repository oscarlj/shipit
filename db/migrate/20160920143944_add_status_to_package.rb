class AddStatusToPackage < ActiveRecord::Migration[5.0]
  def change
    add_column :packages, :status, :string
  end
end
