Rails.application.routes.draw do
  get "/gifs", controller: "gifs", action: "index"
end
