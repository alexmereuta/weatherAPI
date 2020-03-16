Rails.application.routes.draw do
	namespace 'api' do
		namespace 'v1' do
			namespace 'weather' do
				resources :locations
				resources :summary
			end
		end
	end
end
