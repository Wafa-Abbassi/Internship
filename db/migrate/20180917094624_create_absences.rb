class CreateAbsences < ActiveRecord::Migration[5.2]
  def change
    create_table :absences do |t|
      t.datetime :startDate
      t.datetime :endDate
      t.text :comment

      t.timestamps
    end
  end
end
