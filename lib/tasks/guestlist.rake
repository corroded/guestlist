require 'csv'

namespace :guestlist do
  desc "Imports csv for faster data integration"
  task :import => :environment do
    parsed_file = CSV.parse(File.read(ENV["CSV"]))
    parsed_file.each do |row|
      puts row
      # guest = Guest.new
      puts "creating new guest"
      # guest.name = row[0]
      
      groups = row[1]
      groups = groups.split(",")
      groups = groups.map{ |x| Group.find_by_name(x) || Group.create(:name => x) }
      puts groups
      
      # puts "adding groups #{groups}"
      # guest.groups = groups
      # 
      # guest.side = row[2]
      # guest.is_adult = row[3].eql?("Adult")
      # guest.priority = row[4]

      Guest.create(:name => row[0],
                   :groups => groups,
                   :side => row[2],
                   :is_adult => row[3].eql?("Adult"),
                   :priority => row[4]
                   )
      
      # if guest.save
      #   puts "SUCCESS!"
      # else
      #   puts "siiigh"    
      # end
    end
  end
end
