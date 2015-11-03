require 'rails_helper'

describe "message a client" do
  it "messages a client" do
    visit new_message_path
    fill_in 'To', with: '2813308004'
    fill_in 'From', with: '15005550006'
    fill_in 'Body', with: 'Fruit'
    click_on "Create Message"
    expect(page).to have_content "Fruit"
  end
end
