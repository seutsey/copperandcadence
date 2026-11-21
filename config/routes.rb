Rails.application.routes.draw do
  root "pages#home"
  get  "schedule", to: "pages#schedule"
  get  "contact",  to: "inquiries#new"
  post "contact",  to: "inquiries#create"

  namespace :admin do
    root to: "events#index"
    resources :events, except: :show
    resources :inquiries, only: [:index, :destroy]
  end
end
