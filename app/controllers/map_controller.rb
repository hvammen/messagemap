class MapController < ApplicationController
  layout "default"
  
  def show
    @area = Area.find(:all, :select => "id, area_point_lat, area_point_lng, area_point_rad")
    
    respond_to do |format|
      format.html # show.html.erb
      format.xml { render :template => 'map/show.xml.builder', :layout => false }
    end
  end
  def index
    redirect_to :controller => "map", :action => "show", :id => "stianpr"
  end

  def create
    
    @area = Area.new
    @areaSubscription = AreaSubscription.new
    
    @area.area_point_lat = params[:lat].to_f
    @area.area_point_lng = params[:lng].to_f
    @area.area_point_rad = params[:rad].to_f
    @area.save!
    
    @areaSubscription.areasubscription_name = 
    @areaSubscription.area = @area
    @areaSubscription.
    
    
    
    respond_to do |format|
      format.xml { render :template => 'map/create.xml.builder', :layout => false }
    end
  end
  
  
  def update
    
    @area = Area.update(params[:id], { :area_point_lat => params[:lat].to_f,
                                     :area_point_lng => params[:lng].to_f,
                                     :area_point_rad => params[:rad].to_f } )

    respond_to do |format|
      format.xml { render :template => 'map/create.xml.builder', :layout => false }
    end
  end
  
  def destroy
    
    @area = Area.delete(params[:id])
    
    respond_to do |format|
      format.xml { render :layout => false }
    end
  end
end
