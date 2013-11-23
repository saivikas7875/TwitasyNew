class Player < ActiveRecord::Base
  attr_accessible :playername, :playertag
  attr_accessible :confirmation

  validates :playername, :confirmation => true

  belongs_to :team
end
