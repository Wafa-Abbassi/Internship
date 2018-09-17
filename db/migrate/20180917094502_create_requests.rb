class CreateRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :requests do |t|
      t.integer :reqNum
      t.datetime :reqDate
      t.string :status
      t.text :description

      t.timestamps
    end
  end
end
