na3_core_step_defs_path = File.expand_path(File.dirname(__FILE__) + '/../../../../../features/step_definitions')
require na3_core_step_defs_path + "/user_steps"
When /^I fill in "([^\"]*)" for "([^\"]*)"$/ do |value, field|
  fill_in(field, :with => value)
end
