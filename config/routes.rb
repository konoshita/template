Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'static_page#top'
  # root to: 'static_page#top'  # 上記はこれの省略形
  get 'dashboard/show', to: 'dashboard#show'
  get 'dashboard/index', to: 'dashboard#index'
  get 'dashboard/edit', to: 'dashboard#edit'
  get 'dashboard/top', to: 'dashboard#top'
  get 'dashboard/transe', to: 'dashboard#transe'
  resources :oders, only: %i[index new show create edit update destroy]
  resources :reservations, only: %i[index new show create edit update destroy] do
    collection do
      get 'search'
    end
  end
end
