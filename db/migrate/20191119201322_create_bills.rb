class CreateBills < ActiveRecord::Migration[6.0]
  def change
    create_table :bills do |t|
      t.date :start_date, null: false
      t.date :end_date, null: false
      t.integer :kilowatt_hours, null: false
      t.integer :amount_cents, null: false
      t.belongs_to :fpl_account, null: false, foreign_key: true

      t.timestamps
    end
  end
end
