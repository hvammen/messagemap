class MapController < ApplicationController
  layout "default"
  
  def index
    @area = Area.find(:all, :select => "id, area_point_lat, area_point_lng, area_point_rad")
    
    respond_to do |format|
      format.html # show.html.erb
      format.xml { render :template => 'map/index.xml.builder', :layout => false }
    end
    
  end

  def create
    ## :lat , :lng, :rad
    
    @area = Area.new
    
    @area.area_point_lat = params[:lat].to_f
    @area.area_point_lng = params[:lng].to_f
    @area.area_point_rad = params[:rad].to_f
    @area.save!
    
    respond_to do |format|
      format.xml { render :template => 'map/create.xml.builder', :layout => false }
    end
  end
  
  
  def update
    
    @area = Area.find(params[:id])
    
    @area.area_point_lat = params[:lat].to_f
    @area.area_point_lng = params[:lng].to_f
    @area.area_point_rad = params[:rad].to_f
    @area.save!

    respond_to do |format|
      format.xml { render :template => 'map/create.xml.builder', :layout => false }
    end
  end
end
