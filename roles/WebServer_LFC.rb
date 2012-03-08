name "WebServer_LFC"
description "This role run recipes to install apache2 and configure all the sites for LFC  web servers. "
#run_list("")
env_run_lists(	"Test" => ["recipe[apache2]", "recipe[site1]"],
                "_default" => []
)
