require './args.rb'

def main()
  parser = Args.expect do
    boolean "l"
    number "p"
    string "d"
    number_list "nl"
    string_list "sl"
  end

  parser.parse(ARGV)

  logging = parser["l"]
  port = parser["p"]
  directory = parser["d"]
  number_list = parser["nl"]
  string_list = parser["sl"]

  puts "Logging=#{logging}, port=#{port}, dir=#{directory}, number_list=#{number_list}, string_list=#{string_list}"
  #...
end

main