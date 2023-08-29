Rails.application.routes.draw do
  get '/', to: 'home#index'
  get '/dice/:x/:y', to: 'home#dice_roll'
end
