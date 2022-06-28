Rails.application.routes.draw do
  get "/first", controller: "contacts", action: "first_contact"
  get "/all", controller: "contacts", action: "all_contacts"
end
