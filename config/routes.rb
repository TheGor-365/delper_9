Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"

  get 'terms' => 'pages#terms'
  get 'about' => 'pages#about'
  resource :contacts, only: [:new, :create], path_names: { :new => '' }
  
  resources :s_lessons
  resources :s_questions
  resources :s_projects

  resources :technologies do
    resources :lessons
    resources :questions
    resources :projects
  end
  # get 'contacts/index'
  # get 'contacts' => 'contacts#new'
end
