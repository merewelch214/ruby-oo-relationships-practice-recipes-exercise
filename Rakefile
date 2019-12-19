require_relative './config/environment' # loads environment.rb file
require 'sinatra/activerecord/rake'     # loads rake tasks from sinatra-activerecord gem.

desc "Start our app console"
task :console do
  ActiveRecord::Base.logger = Logger.new(STDOUT) # makes activerecord print SQL that it executed.
  Pry.start                                      # starts pry with all of our libraries and models all loaded and ready to go.
end

desc "Starts our app"
task :start do
  ActiveRecord::Base.logger = nil
  system 'ruby run.rb'
end