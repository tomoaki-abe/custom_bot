Rails.application.routes.draw do
  devise_for :users
  root to: 'posts#index'
  get 'webhook/kokodayo'
  post '/callback' => 'linebot#callback'

  resources :flonts, only: [:index] do
    collection do
      get 'project'
      get 'start'
      get 'mypage'
      get 'detailed'
    end
  end
  
end