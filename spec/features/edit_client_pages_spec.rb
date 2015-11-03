require 'rails_helper'

describe "the add a client process" do
  it "adds a client" do
    client = FactoryGirl.create(:client)
    visit clients_path
    click_link "Edit"
    fill_in "Name", with: "2813308004!"
    click_on "Update Client"
    expect(page).to have_content "2813308004!"
  end
end
