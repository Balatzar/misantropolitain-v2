Rails.application.routes.draw do
  root to: "public#index"
  
  post "/", to: "bot#talk"

end
