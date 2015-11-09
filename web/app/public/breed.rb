require "nokogiri"
require 'open-uri'

class Breed
  def init
    file_new = File.open("result.csv",'w')
    File.open("breeds.csv", "r") do |file_handle|
      file_handle.each_line do |file|
        count = 0
        content = ""
        file.split(",").each do |f|
          if count == 4
            count_two = 0
            f.split("/").each do |word|
              if count_two == 2
                word = word.gsub("-", " ")
                content += "#{word}"
              end
              count_two += 1
            end
          else
            content += "#{f},"
          end
          count += 1
        end
        file_new.puts(content)
      end
    end
  end
  def seed
    file_new = File.open("seed", 'w')
    content = "Breed.create(["
    File.open("result.csv","r") do |file|
      file.each_line do |f|
        f_split = f.split(",")
        content += "{name: '#{f_split[0]}', size: #{f_split[1].to_i}, weight: '#{f_split[2]}', country: '#{f_split[3]}', url_info: '#{f_split[4]}'},"
      end
    end
    content += "])"
    file_new.puts(content)
  end
end

Breed.new.seed
