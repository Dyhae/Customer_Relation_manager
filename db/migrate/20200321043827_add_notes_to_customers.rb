class AddNotesToCustomers < ActiveRecord::Migration[6.0]
  def change
    add_column :customers, :notes, :string
  end
end
