class CreateTypeAbsences < ActiveRecord::Migration[5.2]
  def change
    create_table :type_absences do |t|
      t.integer :idTypeAbs
      t.string :naameTypeAbs
      t.integer :nbrDayMax

      t.timestamps
    end
  end
end
