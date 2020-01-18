class CreateCard2s < ActiveRecord::Migration[5.2]
  def change
    create_table :card2s do |t|
      t.references :user, null: false,foreign_key: true
      t.string :customer_id
      t.string :card_id
      t.string :token

      t.timestamps
    end
  end
end
