class CreateReactions < ActiveRecord::Migration
  def change
    create_table :reactions do |t|
      t.references :user, index: true, foreign_key: true
      t.references :tweet, index: true, foreign_key: true
      t.string :feeling

      t.timestamps null: false
    end
  end
end
