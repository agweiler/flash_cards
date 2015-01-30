class CreateCards < ActiveRecord::Migration
  def change
      create_table :cards do |t|
      t.string :country_name
      t.string :capital_name
      t.integer :deck_id
      t.integer :guess_id
    end
  end
end
