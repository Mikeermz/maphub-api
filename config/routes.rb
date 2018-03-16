Rails.application.routes.draw do
  root 'home#index'
  namespace :api do
    namespace :v1 do
    	resources :department do
    		collection do
        	get :all_departments
        	post :create_survey
        end
      end
    	resources :quote do
    		collection do
        	get :all_quote
        end
      end
    end
  end
end
