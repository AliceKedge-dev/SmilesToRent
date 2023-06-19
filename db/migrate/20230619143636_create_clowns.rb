class CreateClowns < ActiveRecord::Migration[7.0]
  def change
    create_table :clowns do |t|
      t.string :username
      t.string :category
      t.string :localisation
      t.string :personal_info
      t.integer :price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
