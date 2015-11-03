require 'rails_helper'

describe "the add a client process" do
  it "adds a client" do
    client = FactoryGirl.create(:client)
    visit clients_path
    click_on "Delete"
    expect(page).to have_no_content "Mike Jones"
  end
end
