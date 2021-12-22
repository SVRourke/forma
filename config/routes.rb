Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :surveys, only: [:index, :new, :create, :show] do
    resources :inputs, only: [:new, :create, :destroy], controller: "survey_input"
    resources :submission, only: [:new, :create]
  end
end
