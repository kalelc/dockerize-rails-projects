Rails.application.routes.draw do
  resources :high_scores
  root to: 'high_scores#index'
end
