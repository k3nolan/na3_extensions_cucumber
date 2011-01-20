require 'factory_girl'
require 'yaml'

Before do
  extension_yaml = File.open(File.dirname(__FILE__) + '/../../config/config.yml') { |f| YAML::load(f) }
  extension_name = File.basename(File.expand_path(File.dirname(__FILE__) + "/../../"))

  [Server, Site, SiteExtension, Extension, ExtensionQueue, Url, Domain, Language, Theme, EmailTemplate, NotificationAction, ExtensionController, Widget, Asset].each {|klass| klass.delete_all }
  extension_yaml["models"].map { |m| m.classify.constantize }.each { |klass| klass.delete_all }
  # Put any additional classes you want to clear out for test in the list below
  [].each {|klass| klass.delete_all }
  create_default_site
  change_site_address "www.example.com"
  install_and_activate_extension extension_name
end

After do
  
end
