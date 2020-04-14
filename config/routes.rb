Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # if resource is flats, the link has to be flats.
  get 'flats', to: 'flats#index'
  get 'flats/:id', to: 'flats#show', as: :flat
end
