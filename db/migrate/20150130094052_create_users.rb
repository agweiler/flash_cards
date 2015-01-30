class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.integer :deck_id
      t.integer :guess_id
    end
  end
end

