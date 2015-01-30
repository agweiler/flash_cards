class CreateGuess < ActiveRecord::Migration
  def change
        create_table :guesss do |t|
      t.string :capital_guess
      t.integer :round_id
      t.integer :card_id
    end
  end
end
