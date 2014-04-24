class AdminPanel::WelcomeController < AdminController
  def index
  	@models = ["owners"]
  	@tab_path = []
  	@data_tables = ActiveRecord::Base.connection.tables
  	#Dir.foreach("#{RAILS_ROOT}/app/models") do |model_path|
  	#	# ...
	#end
  end
end
