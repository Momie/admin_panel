class AdminController < ApplicationController
	layout "admin_panel"
	before_filter :authenticate_owner!
 
end
