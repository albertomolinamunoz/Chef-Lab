define :new_site do

  application_name = params[:name]

  include_recipe "apache2"
  include_recipe "apache2::mod_rewrite"
  include_recipe "apache2::mod_deflate"
  include_recipe "apache2::mod_headers"

  template "#{node[:apache][:dir]}/sites-available/#{application_name}.conf" do
    source params[:template]
    owner "root"
    group node[:apache][:root_group]
    mode 0644
    if params[:cookbook]
      cookbook params[:cookbook]
    end
    variables(
      :application_name => application_name,
      :params => params
    )
    if ::File.exists?("#{node[:apache][:dir]}/sites-enabled/#{application_name}.conf")
      notifies :reload, resources(:service => "apache2"), :delayed
    end
  end

  a2endissite "#{params[:name]}.conf" do
    enable_site params[:enable_site]
  end
end
