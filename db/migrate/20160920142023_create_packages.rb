class CreatePackages < ActiveRecord::Migration[5.0]
  def change
    create_table :packages do |t|
      t.date :shipping
      t.date :delivery
      t.references :company, foreign_key: true
      t.references :office, foreign_key: true

      t.timestamps
    end
  end
end
