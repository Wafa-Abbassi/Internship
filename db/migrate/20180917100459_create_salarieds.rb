class CreateSalarieds < ActiveRecord::Migration[5.2]
  def change
    create_table :salarieds do |t|

      t.timestamps
    end
  end
end
