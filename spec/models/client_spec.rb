require 'rails_helper'

describe Client do
  it { should validate_presence_of :account_sid }
  it { should validate_presence_of :auth_token }
  it { should validate_presence_of :name }
  it { should validate_presence_of :number }


end
