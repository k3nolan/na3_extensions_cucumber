class Na3ExtensionCucumbersGenerator < Rails::Generator::NamedBase
  def manifest
    record do |m|
      deploy_dir = "vendor/other_extensions/#{file_name}"
      m.directory "#{deploy_dir}/features"
      m.directory "#{deploy_dir}/features/support"
      m.directory "#{deploy_dir}/features/step_definitions"
      m.directory "#{deploy_dir}/features/factories"

      m.file     "factories/extension_factory.rb", "#{deploy_dir}/factories/extension_factory.rb"
      m.file     "factories/site_factory.rb", "#{deploy_dir}/factories/site_factory.rb"
      m.file     "step_definitions/na3_core_steps.rb", "#{deploy_dir}/step_definitions/na3_core_steps.rb"
      m.file     "step_definitions/webrat_steps.rb", "#{deploy_dir}/step_definitions/webrat_steps.rb"
      m.file     "support/env.rb", "#{deploy_dir}/support/env.rb"
      m.file     "support/hooks.rb", "#{deploy_dir}/support/hooks.rb"
      m.file     "support/paths.rb", "#{deploy_dir}/support/paths.rb"
    end
  end
end
