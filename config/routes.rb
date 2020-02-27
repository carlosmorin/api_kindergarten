Rails.application.routes.draw do
  
  scope :api do
    resources :activity_logs
    resources :activities
    resources :babies do
      get :activity_logs
    end
    resources :assistants

    post 'authenticate', to: 'authentication#authenticate'
  end
end
