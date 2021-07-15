Around "@broken-on-jruby-9000" do |scenario, block|
  require 'rspec/support/ruby_features'
  block.call unless RSpec::Support::Ruby.jruby_9000?
end

Around "@broken-on-jruby-17" do |scenario, block|
  require 'rspec/support/ruby_features'
  block.call unless !RSpec::Support::Ruby.jruby? || RSpec::Support::Ruby.jruby_9000?
end
