Rails.application.routes.draw do

  root 'application#index'
  get 'api/years' => 'years#index'
  get 'api/years/:year' => 'years#show'
  get 'pages/:page' => 'application#pages'


end
