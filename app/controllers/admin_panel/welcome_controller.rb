class AdminPanel::WelcomeController < AdminController
  def index
  	# list of model can managed it
  	@models = []
  	@tab_path = []
  	@data_tables = [] #ActiveRecord::Base.connection.tables
  end
end
