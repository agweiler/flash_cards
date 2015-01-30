
class Card < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :decks
  has_many :guesss

# def self.list_countries
#     CARD.class.each do |country_name|
#     p country_name
#   end
# end

end
