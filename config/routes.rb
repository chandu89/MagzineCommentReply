Rails.application.routes.draw do
  get 'replies/index'

  # get 'comments/index'

  resources :articles do
    resources :comments do
      resources :replies
    end
  end
  root 'articles#index'
end
