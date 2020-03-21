class CreateCostumers < ActiveRecord::Migration[6.0]
  def change
    create_table :costumers do |t|
      t.name :string
      t.phone :string
      t.email :string

      t.timestamps
    end
  end
end
