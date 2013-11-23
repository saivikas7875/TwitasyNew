class Team < ActiveRecord::Base
  attr_accessible :teamname
  attr_accessible :user_id
  attr_accessible :teamname_confirmation
  belongs_to :user
  attr_accessible :player1, :player2, :player3, :player4

  validates :teamname, :confirmation => true

  has_many :players


end
