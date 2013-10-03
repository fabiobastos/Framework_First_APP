FirstApp::Application.routes.draw do

  root "welcome#index" 

  get '/black', to: 'welcome#black', :as => :black

end
