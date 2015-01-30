class CreateDecks < ActiveRecord::Migration
  def change
        create_table :decks do |t|
      t.string :deck_name
      t.integer :card_id
      t.integer :round_id
    end
  end
end
