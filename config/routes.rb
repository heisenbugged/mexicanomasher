Beautifulwebsites::Application.routes.draw do
  devise_for :users

  root :to => "website_posts#index"
  resources :website_posts
  match '/about' => "home#about"
  match '/contact' => "home#contact"
end
