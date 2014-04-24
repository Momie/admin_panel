module AdminHelper

	def list
		if  eval('@'+controller.controller_name).nil? ||  eval('@'+controller.controller_name).blank?
			return []
		end
		liste = eval('@'+controller.controller_name).class.name == 'Array' ? (eval('@'+controller.controller_name)[0].nil? ? '' : eval('@'+controller.controller_name)[0].attributes.keys ) : eval('@'+controller.controller_name).attributes.keys
	   	
	   	@header = liste.map{|atr| {:name => atr, :value => atr}}
	   return  @header
	end

	def edit

	end

	def show
		if  eval('@'+controller.controller_name).nil? 
			return []
		end
		liste = eval('@'+controller.controller_name).class.name == 'Array' ? eval('@'+controller.controller_name)[0].attributes.keys : eval('@'+controller.controller_name).attributes.keys
	   	@header = liste.map{|atr| {:name => atr, :value => atr}}
	   return  @header
	end
	
	def title

	end

	def path obj
		return 'admin_panel_' + controller.controller_name + '_path'
	end

	def association obj
		eval("@#{controller.controller_name}").class.reflect_on_all_associations(&:name).reject(&:translations)
		#== 'Array' ? eval("@#{controller.controller_name}").send(p).first.id : eval("@#{controller.controller_name}").send(p).id
	end

	def path_controller
		return eval('admin_panel_' + controller.controller_name + '_index_path')
	end

	def add_link_list obj
		
  	end

  	def page_list
  		val = (@all_page / 10 )
  		result = []
  		for i in 0..val
   			result << [i+1 , (path_controller.include? '?') ? path_controller + "&page=" + i.to_s : path_controller + "?page=" + i.to_s]
		end
		return result
  	end

  	

end
