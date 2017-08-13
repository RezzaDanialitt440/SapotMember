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

  #render "welcome/about"
  #root "gigs#index"
  root "welcome#about"

  get "mygigs" => "gigs#mygigs"

end
