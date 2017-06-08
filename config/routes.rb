Rails.application.routes.draw do

  post 'checkout', to: 'items#sale' 

  resources :items

  get 'items/index'

  get 'items/show'

  get 'items/new'

  get 'items/edit'

  get 'items/create'

  get 'items/update'

  get 'items/destroy'

  get 'items/sale'

  get 'users/new'

  root 'static_pages#home'

  get  '/help',    to: 'static_pages#help'

  get  '/faq',    to: 'static_pages#faq'

  get  '/apply',    to: 'static_pages#apply'

  get  '/account',    to: 'users#new'

  get  '/checkout',    to: 'static_pages#checkout'

end
