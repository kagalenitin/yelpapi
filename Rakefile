begin; require 'parallel_tests/tasks'; end
require 'rspec/core'
require 'rspec/core/rake_task'

namespace :yelp_api do
  task :pre_fund do
    RSpec::Core::RakeTask.new(:spec) do |t|
      t.pattern = './spec/requests/yelp_search_spec.rb'
      t.rspec_opts = '--format html --out test-reports/rspec_leads_results.html'
    end
    Rake::Task['spec'].execute
  end
end
