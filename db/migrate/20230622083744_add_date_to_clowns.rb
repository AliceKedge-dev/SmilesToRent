class AddDateToClowns < ActiveRecord::Migration[7.0]
  def change
    add_column :clowns, :date, :string
  end
end
