Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/", to: "pages#home", as: "root"
  get "/people", to: "people#index", as: "people"
  post "/people", to: "people#create"
  get "/people/new", to: "people#new", as: "new_person"
  get "/people/:id/edit", to: "people#edit", as: "edit_person"
  get "people/:id", to: "people#show", as: "person"
  patch "/people/:id", to: "people#update"
  delete "/people/:id", to: "people#destroy"
end
