require "nokogiri"
require 'open-uri'

class Country
  def init
    file_new = File.open("country",'w')
    content = "Country.create(["
    File.open("code.csv", "r") do |file_handle|
      file_handle.each_line do |f|
        f_split = f.split(",")
        content += "{name: '#{f_split[1]}', code: '#{f_split[0]}'},"
      end
    end
    content += "])"
    file_new.puts(content)
  end
end

Country.new.init
