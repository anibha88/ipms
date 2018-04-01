class Result < ApplicationRecord
	def self.get_results(city, office, building)
		building = building.split(",").first rescue nil
  		floor = 1
  		@results = Ipm.where(organisation: "Wipro", city: city, office: office, building: building, floor: 1)

  		if !@results.empty?
	  		@results.each do |result|
	  			Result.create(ipms: result.ipm_type, comp: result.component, area: result.area)
	  		end
	  	end
	end
end
