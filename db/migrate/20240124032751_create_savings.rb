class CreateSavings < ActiveRecord::Migration[7.1]
  def change
    create_table :savings do |t|
      t.string :account
      t.float :samount
      t.float :camount
      t.float :rate
      t.integer :years
      t.date :start
      t.date :end
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
