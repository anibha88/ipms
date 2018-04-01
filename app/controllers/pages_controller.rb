class PagesController < ApplicationController
 
  

  def home
  	
  end

  def about
  end

  def help
  end

  

  def result
  	if params[:city]
	  	city = params[:city]
	  	office = params[:office]
	  	building = params[:building]
	  	Result.get_results(city, office, building)
	end
	render :file => 'results/index.html.erb'
  end

  private

  def pages_params
  	params.require(:pages).permit(:city, :office, :building)
  end

 
  

  
end
