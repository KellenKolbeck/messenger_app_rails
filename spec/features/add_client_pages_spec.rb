require 'rails_helper'

describe "the add a client process" do
  it "adds a client" do
    client = FactoryGirl.create(:client)
    visit clients_path
    expect(page).to have_content "Mike Jones"
  end
end
