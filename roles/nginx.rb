name "nginx"
description "This role apply to all the nodes where we configure nginx"
#we dont need the run_list recipes because is on _default
#run_list("recipe[nginx]") 
env_run_lists("Test" => ["recipe[nginx]"],
		"_default" => []
		)

#default_attributes "apache2" => { "listen_ports" => [ "80", "443" ] }

#override_attributes(
#  :apache2 => {
#    :prefork => { :min_spareservers => "5" }
#  },
#  :tomcat => {
#    :worker_threads => "100"
#  }
#)
#override_attributes "apache2" => { "max_children" => "50" }
