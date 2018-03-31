class PagesController < ApplicationController
  def home
  	if params[:city].present?
  		city = params[:city]
	  	office = params[:office]
	  	building = params[:building]
	  	building = building.split(",").first rescue nil
	  	floor = 1
	  	@results = Ipm.where(organisation: "Wipro", city: city, office: office, building: building, floor: 1)
	  	# render json: @results
	  	
	  	render_to_string @results # pages_result_path(:results => @results)
	  	return
	end
  end

  def about
  end

  def help
  end

  

  def result
	# city = params[:city]
 #  	office = params[:office]
 #  	building = params[:building]
 #  	building = building.split(",").first rescue nil
 #  	floor = 1
 #  	@results = Ipm.where(organisation: "Wipro", city: city, office: office, building: building, floor: 1)
  	
  end

  

  
end
