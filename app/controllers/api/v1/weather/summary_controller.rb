require_relative 'locations_controller'
module Api
	module V1
		module Weather
			class SummaryController < ApplicationController
				def index
					location_ids = params[:locations].split(',')
					favs 		 = []

					location_ids.each do |location_id|
						if Location.find_by_id(location_id) == nil
							LocationsController.get_data(location_id)
						end

						weather = Location.find_by_id(location_id)
						if weather.updated_at.day < (Time.now - 1.hour).day
							LocationsController.update_data(location_id)
						end

						temps = Location.find_by_id(location_id).inspect.scan(/-?\d{1,2}\.\d{1,2}/)

						temps.each do |t|
							if params[:unit].to_f < t.to_f
								favs << location_id
							end
							break
						end
					end
					render json: {status: 'SUCCESS', message: 'Loaded weather', data: favs}, status: :ok
				end
			end
		end
	end
end
