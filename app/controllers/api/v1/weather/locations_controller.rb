module Api
	module V1
		module Weather
			class LocationsController < ApplicationController
				def index
					render json: {status: 'SUCCESS'}, status: :ok
				end

				def show
					weather = Location.find_by_id(params[:id])
					url 	= "api.openweathermap.org/data/2.5/forecast?id=#{params[:id]}&appid=0d7665557408748fc0553545de8fc1b6&units=metric"
					
					if weather && weather.updated_at.day >= (Time.now - 1.hour).day
						render json: {status: 'SUCCESS', message: 'Loaded weather', data:weather}, status: :ok
					elsif weather && weather.updated_at.day < (Time.now - 1.hour).day
						render json: {status: 'SUCCESS', message: 'Loaded updated weather', data:LocationsController.update_data(params[:id])}, status: :ok
					else
						render json: {status: 'SUCCESS', message: 'Loaded new weather', data:LocationsController.get_data(params[:id])}, status: :ok
					end
				end

				private

				def self.update_data(id)
					url 	 = "api.openweathermap.org/data/2.5/forecast?id=#{id}&appid=0d7665557408748fc0553545de8fc1b6&units=metric"
					response = JSON.parse(RestClient.get(url))

					weather = Location.update(id,
						:TempD1H0  => response['list'][0]['main']['temp'],
						:TempD1H3  => response['list'][1]['main']['temp'],
						:TempD1H6  => response['list'][2]['main']['temp'],
						:TempD1H9  => response['list'][3]['main']['temp'],
						:TempD1H12 => response['list'][4]['main']['temp'], 
						:TempD1H15 => response['list'][5]['main']['temp'], 
						:TempD1H18 => response['list'][6]['main']['temp'], 
						:TempD1H21 => response['list'][7]['main']['temp'], 
						:TempD2H0  => response['list'][8]['main']['temp'],
						:TempD2H3  => response['list'][9]['main']['temp'],
						:TempD2H6  => response['list'][10]['main']['temp'],
						:TempD2H9  => response['list'][11]['main']['temp'],
						:TempD2H12 => response['list'][12]['main']['temp'], 
						:TempD2H15 => response['list'][13]['main']['temp'], 
						:TempD2H18 => response['list'][14]['main']['temp'], 
						:TempD2H21 => response['list'][15]['main']['temp'], 
						:TempD3H0  => response['list'][16]['main']['temp'],
						:TempD3H3  => response['list'][17]['main']['temp'],
						:TempD3H6  => response['list'][18]['main']['temp'],
						:TempD3H9  => response['list'][19]['main']['temp'],
						:TempD3H12 => response['list'][20]['main']['temp'], 
						:TempD3H15 => response['list'][21]['main']['temp'], 
						:TempD3H18 => response['list'][22]['main']['temp'], 
						:TempD3H21 => response['list'][23]['main']['temp'], 
						:TempD4H0  => response['list'][24]['main']['temp'],
						:TempD4H3  => response['list'][25]['main']['temp'],
						:TempD4H6  => response['list'][26]['main']['temp'],
						:TempD4H9  => response['list'][27]['main']['temp'],
						:TempD4H12 => response['list'][28]['main']['temp'], 
						:TempD4H15 => response['list'][29]['main']['temp'], 
						:TempD4H18 => response['list'][30]['main']['temp'], 
						:TempD4H21 => response['list'][31]['main']['temp'], 
						:TempD5H0  => response['list'][32]['main']['temp'],
						:TempD5H3  => response['list'][33]['main']['temp'],
						:TempD5H6  => response['list'][34]['main']['temp'],
						:TempD5H9  => response['list'][35]['main']['temp'],
						:TempD5H12 => response['list'][36]['main']['temp'], 
						:TempD5H15 => response['list'][37]['main']['temp'], 
						:TempD5H18 => response['list'][38]['main']['temp'], 
						:TempD5H21 => response['list'][39]['main']['temp'])
				end

				def self.get_data(id)
					url 	 = "api.openweathermap.org/data/2.5/forecast?id=#{id}&appid=0d7665557408748fc0553545de8fc1b6&units=metric"
					response = JSON.parse(RestClient.get(url))

					weather = Location.create(:id => id,
						:TempD1H0  => response['list'][0]['main']['temp'],
						:TempD1H3  => response['list'][1]['main']['temp'],
						:TempD1H6  => response['list'][2]['main']['temp'],
						:TempD1H9  => response['list'][3]['main']['temp'],
						:TempD1H12 => response['list'][4]['main']['temp'], 
						:TempD1H15 => response['list'][5]['main']['temp'], 
						:TempD1H18 => response['list'][6]['main']['temp'], 
						:TempD1H21 => response['list'][7]['main']['temp'], 
						:TempD2H0  => response['list'][8]['main']['temp'],
						:TempD2H3  => response['list'][9]['main']['temp'],
						:TempD2H6  => response['list'][10]['main']['temp'],
						:TempD2H9  => response['list'][11]['main']['temp'],
						:TempD2H12 => response['list'][12]['main']['temp'], 
						:TempD2H15 => response['list'][13]['main']['temp'], 
						:TempD2H18 => response['list'][14]['main']['temp'], 
						:TempD2H21 => response['list'][15]['main']['temp'], 
						:TempD3H0  => response['list'][16]['main']['temp'],
						:TempD3H3  => response['list'][17]['main']['temp'],
						:TempD3H6  => response['list'][18]['main']['temp'],
						:TempD3H9  => response['list'][19]['main']['temp'],
						:TempD3H12 => response['list'][20]['main']['temp'], 
						:TempD3H15 => response['list'][21]['main']['temp'], 
						:TempD3H18 => response['list'][22]['main']['temp'], 
						:TempD3H21 => response['list'][23]['main']['temp'], 
						:TempD4H0  => response['list'][24]['main']['temp'],
						:TempD4H3  => response['list'][25]['main']['temp'],
						:TempD4H6  => response['list'][26]['main']['temp'],
						:TempD4H9  => response['list'][27]['main']['temp'],
						:TempD4H12 => response['list'][28]['main']['temp'], 
						:TempD4H15 => response['list'][29]['main']['temp'], 
						:TempD4H18 => response['list'][30]['main']['temp'], 
						:TempD4H21 => response['list'][31]['main']['temp'], 
						:TempD5H0  => response['list'][32]['main']['temp'],
						:TempD5H3  => response['list'][33]['main']['temp'],
						:TempD5H6  => response['list'][34]['main']['temp'],
						:TempD5H9  => response['list'][35]['main']['temp'],
						:TempD5H12 => response['list'][36]['main']['temp'], 
						:TempD5H15 => response['list'][37]['main']['temp'], 
						:TempD5H18 => response['list'][38]['main']['temp'], 
						:TempD5H21 => response['list'][39]['main']['temp'])
				end
			end
		end
	end
end