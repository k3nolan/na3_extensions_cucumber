class Na3ExtensionsCucumberGenerator < Rails::Generator::NamedBase
  def manifest
    record do |m|
      deploy_dir = "vendor/other_extensions/#{file_name}"
      m.directory "#{deploy_dir}/features"
      m.directory "#{deploy_dir}/features/support"
      m.directory "#{deploy_dir}/features/step_definitions"
      m.directory "#{deploy_dir}/features/factories"

      m.file     "features/factories/extension_factory.rb", "#{deploy_dir}/features/factories/extension_factory.rb"
      m.file     "features/factories/site_factory.rb", "#{deploy_dir}/features/factories/site_factory.rb"
      m.file     "features/step_definitions/na3_core_steps.rb", "#{deploy_dir}/features/step_definitions/na3_core_steps.rb"
      m.file     "features/step_definitions/webrat_steps.rb", "#{deploy_dir}/features/step_definitions/webrat_steps.rb"
      m.file     "features/support/env.rb", "#{deploy_dir}/features/support/env.rb"
      m.file     "features/support/hooks.rb", "#{deploy_dir}/features/support/hooks.rb"
      m.file     "features/support/paths.rb", "#{deploy_dir}/features/support/paths.rb"
    end
  end
end
