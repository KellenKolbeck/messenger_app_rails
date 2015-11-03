class Client < ActiveRecord::Base
  belongs_to :message

  validates :name, presence: true
  validates :number, presence: true

end
