namespace :breed do
  desc "generate breeds query"
  task :create => :environment do
    content = ""

    file_new = File.open("breed_list",'w')
    Breed.all.each do |breed|
      c = Country.find_by(name: breed.country)
      
      country = c.present? ? c.id.to_i : 0

      content += "{name: '#{breed.name}', size: #{breed.size}, weight: '#{breed.weight}', country: #{country}, url_info: '#{breed.url_info}'},"
      file_new.puts(content)
    end
  end
end

