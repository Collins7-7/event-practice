Rails.application.routes.draw do

  resources :mpesas
  
  resources :events


  post '/stkpush', to: 'mpesas#stkpush'

  resources :bookings
  
end
