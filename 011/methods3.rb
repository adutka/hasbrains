def hello_world( first_name = "", family_name = "")
  greeting = "hello_world\n"
  if first_name != "" && family_name != ""
     greeting += "my name is " + first_name + " " + family_name
  end
  greeting
end

puts    hello_world("Dom", "Rom")
# hello_world()
# puts "---------------------------"
# hello_world("Dudelka")
# puts "---------------------------"
# hello_world("Jame", "Jamayka")