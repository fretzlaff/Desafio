require 'rails_helper'
 
RSpec.describe Contact, type: :model do
  context "Contact View Validation" do
    it "New Contact" do
      visit 'contacts/new'
 
      within("#new_contact") do
        fill_in 'Name', with: 'Joao'
        fill_in 'Email', with: 'joao@empresa.com'
        fill_in 'Age', with: '20'
        fill_in 'State', with: 'SC'
        fill_in 'Role', with: 'Programador'
      end
                 
      click_button 'Create Contact'
      expect(page).to have_content 'Contact was successfully created.'
    end
  end
end