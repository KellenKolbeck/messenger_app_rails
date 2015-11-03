class Message < ActiveRecord::Base
  before_create :send_message

  has_many :clients, :dependent => :destroy

  validates :body, presence: true
  # validates :to, presence: true
  validates :from, presence: true


  accepts_nested_attributes_for :clients, :reject_if => lambda { |a| a[:content].blank? }, :allow_destroy => true

private

  def send_message
    response = RestClient::Request.new(
      :method => :post,
      :url => 'https://api.twilio.com/2010-04-01/Accounts/ACb10e4579e4f7128281cc1c1483cfc06f/Messages.json',
      :user => 'ACb10e4579e4f7128281cc1c1483cfc06f',
      :password => '569036839c5c1cb3aa879c723ed5a802',
      :payload => { :Body => body,
                    :From => from,
                    :To => to }
    ).execute
  end
end
