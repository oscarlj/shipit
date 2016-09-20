class CreateOffices < ActiveRecord::Migration[5.0]
  def change
    create_table :offices do |t|
      t.string :name
      t.string :address
      t.references :company, foreign_key: true

      t.timestamps
    end
  end
end
