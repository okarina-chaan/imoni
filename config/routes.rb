Rails.application.routes.draw do
  get "home/index"

  get  "meat",        to: "cooking#choose_meat",     as: :choose_meat
  post "meat",        to: "cooking#save_meat"

  get  "vegetables",  to: "cooking#choose_vegetables", as: :choose_vegetables
  post "vegetables",  to: "cooking#save_vegetables"

  get  "seasoning",   to: "cooking#choose_seasoning",  as: :choose_seasoning
  post "seasoning",   to: "cooking#save_seasoning"

  get  "result",      to: "cooking#result",          as: :result

  get "up" => "rails/health#show", as: :rails_health_check

end
