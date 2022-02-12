Rails.application.routes.draw do
  get "contact", to: "pages#contact"
  get "about", to: "pages#about"
  get "error", to: "pages#error"
  get "blog", to: redirect("http://google.com")
  resources :projects
  
  root 'pages#home'
  get "*path", to: redirect("/error")
end
