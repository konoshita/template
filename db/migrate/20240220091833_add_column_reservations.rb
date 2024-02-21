class AddColumnReservations < ActiveRecord::Migration[6.0]
  def change
    add_column :reservations, :name, :string
  end
end
