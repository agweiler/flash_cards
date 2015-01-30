class User < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :deck
  has_many :guesss

  validates :username, :password, presence: true

 def self.authenticate(username, password)
    self.where(username: username, password: password)
 end
end