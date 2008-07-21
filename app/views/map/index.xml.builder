xml.areas {
	@area.each do |a|
		xml.area(:id => a.id, :lat => a.area_point_lat, 
					:lng => a.area_point_lng, 
					:rad => a.area_point_rad)
		
	end
}