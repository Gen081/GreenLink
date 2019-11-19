class CreateTips < ActiveRecord::Migration[6.0]
  def change
    create_table :tips do |t|
      t.string :title
      t.string :description
      t.string :type_id

      t.timestamps
    end
  end
end
