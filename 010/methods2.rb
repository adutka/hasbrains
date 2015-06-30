def hello_world( first_name = "", family_name = "")
  puts "hello_world"
  if first_name != "" && family_name != ""
    puts "my name is " + first_name + " " + family_name
  end
end
hello_world()
puts "---------------------------"
hello_world("Dudelka")
puts "---------------------------"
hello_world("Jame", "Jamayka")