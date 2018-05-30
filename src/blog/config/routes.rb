Rails.application.routes.draw do
  resources :posts
  get ':year(/:month(/:day))', to: 'posts#index',
  constraints: { year: /\d{4}/, month: /\d{2}/, day: /\d{2}/ }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	root :to => 'page#index'
end
