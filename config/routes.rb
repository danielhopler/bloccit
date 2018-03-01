Rails.application.routes.draw do
  get 'welcome/index'

  get 'welcome/about'

  get'welcome/contacts'

  root 'welcome#index'
end
