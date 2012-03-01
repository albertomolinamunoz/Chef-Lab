name "apache"
description "This role apply to all the nodes where we configure apache"
#we dont need the run_list recipes because is on _default
#run_list("recipe[nginx]")
env_run_lists("Test" => ["recipe[apache2]"],
                "_default" => []
                )
