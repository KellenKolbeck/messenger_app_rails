class Client < ActiveRecord::Base


  validates :account_sid, presence: true
  validates :auth_token, presence: true
  validates :name, presence: true
  validates :number, presence: true

end
