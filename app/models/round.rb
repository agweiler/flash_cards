class Round < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :users
  belongs_to :decks
end
