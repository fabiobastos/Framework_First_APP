FirstApp::Application.routes.draw do

  devise_for :users
  root "welcome#index", :as => :index

  get '/black', to: 'welcome#black'

  get '/about', to: 'welcome#about', as: :about

  resources :users do 
  	resources :bills
  end

  # cria um novo resources para bills, para não ser em ajax quando quiser.
  resources :bills do
  	#passa o collection para criar uma rota fora do resources, totalmente nova, para receber outros parâmetros
  	collection do
  		# enviará post para essa rota create_bill_bills_path
  		post "create_bill"
  	end

  	# se fosse pra pegar um já existente, criaria com member em vez de collection

  end
  	
end