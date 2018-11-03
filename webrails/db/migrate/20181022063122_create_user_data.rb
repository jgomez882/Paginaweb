class CreateUserData < ActiveRecord::Migration
  def change
    create_table :user_data do |t|
      t.date :date
      t.integer :cadency
      t.integer :distance
      t.integer :cardiacf
      t.integer :energeticg
      t.integer :weightd

      t.timestamps null: false
    end
  end
end
