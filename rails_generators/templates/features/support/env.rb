# Sets up the Rails environment for Cucumber
ENV["RAILS_ENV"] ||= "test"
require File.expand_path(File.dirname(__FILE__) + '/../../../../../config/environment')
require 'cucumber/rails/world'
require 'cucumber/formatter/unicode' # Comment out this line if you don't want Cucumber Unicode support
#Cucumber::Rails.use_transactional_fixtures
Cucumber::Rails.bypass_rescue # Comment out this line if you want Rails own error handling
                              # (e.g. rescue_action_in_public / rescue_responses / rescue_from)

require 'webrat'

Webrat.configure do |config|
  config.mode = :rails
end

require 'cucumber/rails/rspec'
require 'webrat/core/matchers'
ActionMailer::Base.delivery_method = :cache
require 'email_spec'
require 'email_spec/cucumber'

Extension.load_all

require 'factory_girl'

Dir.glob(File.expand_path(File.join(File.dirname(__FILE__), '../../../../../features', 'factories', '**/*_factory.rb'))).each do |factory_path|
  require factory_path
end
Dir.glob(File.expand_path(File.join(File.dirname(__FILE__), '..', 'factories', '**/*_factory.rb'))).each do |factory_path|
  require factory_path
end



# RubyInline is used by ImageScience, which has C extensions. C extesnions will not work in JRuby and thus Culerity.
# if build raises an error, the error is swallowed and we can continue instead of an app exit.
require 'inline'
module Inline
  class C
    def build
      raise "Doesn't matter what we raise, but we need to raise it."
    end
  end
end

puts "running features"
