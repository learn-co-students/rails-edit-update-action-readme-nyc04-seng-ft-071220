Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :articles, only: [:index, :show, :new, :create]
  get 'articles', to: 'articles#index', as: 'articles'
  get 'articles/new', to: 'articles#new', as: 'new_article'
  post 'articles', to: 'articles#create'
  get 'articles/:id', to: 'articles#show', as: 'article'
  get '/articles/:id/edit',to: 'articles#edit', as: 'edit_article'
  patch '/articles/:id', to: 'articles#update', as: 'update_article'
end
