Rails.application.routes.draw do

  get 'welcome/about'

  get 'welcome/contact'

  get 'welcome/faq'

  devise_for :users
  resources :gigs do
    resources :proposals, except: :index
    collection do
      get "search"
    end
  end
  #"welcome#about"
  root "gigs#index"

  get "mygigs" => "gigs#mygigs"

end
