class User < ActiveRecord::Base
  attr_accessible :password, :username
  #attr_accessible :password_confirmation
  attr_accessible :provider, :name, :uid


  validates :username, :presence => true, :uniqueness => true
  #validates :username, :length => { :minimum => 8, :maximum => 32 }
  #validates :username, :format => { :with => /^[a-z]+$/, :message => "Only lower case letters allowed." }


  #validates :password, :length => { :minimum => 8, :maximum => 32 }, :confirmation => true
  #validates :password, :format => { :with => /[a-z]/, :message => "At least one lower case letter mused be used." }
  #validates :password, :format => { :with => /[A-Z]/, :message => "At least one upper case letter mused be used." }
  #validates :password, :format => { :with => /[0-9]/, :message => "At least one number mused be used." }


   has_many :authorizations
   has_many :teams, :dependent => :destroy

  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.username = auth["info"]["name"]
    end
  end

end
