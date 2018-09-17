class CreateEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|
      t.integer :NIC
      t.string :firstName
      t.string :lastName
      t.string :login
      t.string :pwd

      t.timestamps
    end
  end
end
