class CreateCosts < ActiveRecord::Migration[5.2]
  def change
    create_table :costs do |t|

      t.timestamps
    end
  end
end
