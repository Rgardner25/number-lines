require 'rspec'

def number_lines(path)
  File.read(path).split("\n").each_with_index do |line, idx|
    File.open('support/april_13_numbered_lines.txt', 'a') do |f|
      f.puts "#{idx + 1}. #{line}"
    end
  end
end
