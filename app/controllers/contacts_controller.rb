class ContactsController < ApplicationController
  def first_contact
    contact = Contact.first
    render json: { id: contact.id, first_name: contact.first_name, last_name: contact.last_name, email: contact.email, phone_number: contact.phone_number }
  end

  def all_contacts
    array = Array.new
    contacts = Contact.all
    contacts.each do |contact|
      array << { id: contact.id, first_name: contact.first_name, last_name: contact.last_name, email: contact.email, phone_number: contact.phone_number }
    end
    render json: array
  end
end
