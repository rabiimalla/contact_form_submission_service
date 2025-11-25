Rails.application.routes.draw do
  resources :contact_submissions, only: [ :create, :index ]

  root "pages#home"

  # Only mount the mailbox in the development environment
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
end
