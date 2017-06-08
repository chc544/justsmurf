Rails.application.routes.draw do

  get 'users/new'

  root 'static_pages#home'

  get  '/help',    to: 'static_pages#help'

  get  '/faq',    to: 'static_pages#faq'

  get  '/apply',    to: 'static_pages#apply'

  get  '/account',    to: 'users#new'

  get  '/checkout',    to: 'static_pages#checkout'

end
