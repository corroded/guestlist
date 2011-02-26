begin
  require 'csv'

  namespace :guestlist do
    desc "Imports csv for faster data integration"
    task :import => :environment do
    
    end
  end

rescue Exception => e
  puts e
end