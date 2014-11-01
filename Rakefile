require 'rake/testtask'


task default: :test

desc 'Run continuous integration build'
task ci: :test

Rake::TestTask.new do |t|
  t.test_files = FileList['spec/**/*_spec.rb']
end

# Cucumber will not be installed in production, so rake would abort without this
begin
  require 'cucumber/rake/task'

  Cucumber::Rake::Task.new(:features) do |t|
    t.cucumber_opts = '--color'
  end

  task ci: :features
rescue LoadError
  desc 'Cucumber rake task not available'
  task :features do
    abort 'Cucumber rake task is not available. Be sure to install cucumber as a gem or plugin'
  end
end

