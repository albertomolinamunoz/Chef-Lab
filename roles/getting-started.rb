name "GettingStarted"
description "Install the package getting-started in all the nodes of
 the role GettingStarted"
run_list("recipe[getting-started]")

#I am not defining run_env_list therefore all the nodes that have this role (Pro, Pre, Test, etc.) will apply the default run list. If we put here the list for each environment. The node with this role will apply only the run list that have for his especific environment. Therefore, !!if we put write a run_env_list ("ENV" => []) EMPTY. This node wont have nothing in his run list
