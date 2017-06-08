Rails.application.routes.draw do

  root 'static_pages#home'

  get 'static_pages/home'

  get 'static_pages/help'

  get 'static_pages/faq'

  get 'static_pages/apply'

  get 'static_pages/account'

  get  'static_pages/checkout'

end
