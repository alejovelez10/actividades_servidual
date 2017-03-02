Rails.application.routes.draw do
  resources :actvidads
  get "misactividades", to: "actvidads#get_act", as: "get_act"
  get "actividades", to: "actvidads#set_act" , as: "set_act"
   get "actividades_invitado", to: "actvidads#invitado" , as: "invitado"
  devise_for :users

  root "actvidads#index"
  get "new_seguimiento/:actvidad", to: "actvidads#new_seguimiento" , as: "new_seguimiento"
  post "create_seguimiento", to: "actvidads#create_seguimiento" , as: "create_seguimiento"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
