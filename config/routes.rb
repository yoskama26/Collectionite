Rails.application.routes.draw do
  # Définitions des routes existantes
  get "up" => "rails/health#show", as: :rails_health_check
  resources :cards
  resources :collections
  resources :collectors

  # Ajoutez vos nouvelles routes ici
  post '/add_card_to_memory', to: 'cards#add_card_to_memory', as: :add_card_to_memory
  get '/cards_in_memory', to: 'cards#cards_in_memory', as: :cards_in_memory

  # Si vous souhaitez définir une page d'accueil
  # root "nom_du_contrôleur#action"
end
