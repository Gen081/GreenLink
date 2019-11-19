class CreateChallengeTips < ActiveRecord::Migration[6.0]
  def change
    create_table :challenge_tips do |t|
      t.references :challenge, null: false, foreign_key: true
      t.references :tip, null: false, foreign_key: true

      t.timestamps
    end
  end
end
