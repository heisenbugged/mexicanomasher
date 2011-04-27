Beautifulwebsites::Application.routes.draw do
  devise_for :users

  root :to => "website_posts#index"
  resources :website_posts
  resources :frontpage_texts
  match '/about' => "home#about"
  match '/admin_panel' => "admin_panel#index"
  match '/contact' => "home#contact"
end
