require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec) do |t|
  t.rspec_opts = "--tag ~integration"
  t.pattern = Dir.glob('spec/**/*_spec.rb')
end

RSpec::Core::RakeTask.new(:integration) do |t|
  t.rspec_opts = "--tag integration"
  t.pattern = Dir.glob('spec/**/*_spec.rb')
end

task :default => :spec