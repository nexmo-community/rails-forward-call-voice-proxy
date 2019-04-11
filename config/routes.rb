Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/', to: 'call#index'

  get '/webhooks/answer', to: 'call#answer'

  get '/event', to: 'call#event'
end
