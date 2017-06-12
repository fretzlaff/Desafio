require 'rails_helper'
 
RSpec.describe Contact, type: :model do
  context "Contact Validation" do
    it "Valid Contact" do
                  contact = Contact.new
                  contact.name = "Joao";
                  contact.email = "joao@empresa.com";
                  contact.age = "20";
                  contact.state = "SC";
                  contact.role = "Programador";
                 
                  expect(contact.valid?).to be_truthy
                end
    it "Invalid Contact - without name" do
                  contact = Contact.new
                  contact.email = "joao@empresa.com";
                  contact.age = "20";
                  contact.state = "SC";
                  contact.role = "Programador";
                 
                  expect(contact.valid?).to be_falsey
                end
    it "Invalid Contact - without email" do
                  contact = Contact.new
                  contact.name = "Joao";
                  contact.age = "20";
                  contact.state = "SC";
                  contact.role = "Programador";
                 
                  expect(contact.valid?).to be_falsey
                end
    it "Invalid Contact - invalid email format" do
                  contact = Contact.new
                  contact.name = "Joao";
                  contact.email = "emaildojoao";
                  contact.age = "20";
                  contact.state = "SC";
                  contact.role = "Programador";
                 
                  expect(contact.valid?).to be_falsey
                end
    it "Invalid Contact - invalid age datatype" do
                  contact = Contact.new
                  contact.name = "Joao";
                  contact.email = "joao@empresa.com";
                  contact.age = "twenty";
                  contact.state = "SC";
                  contact.role = "Programador";
                 
                  expect(contact.valid?).to be_falsey
                end
  end
end
