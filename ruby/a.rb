# # #2.times { print "helloowwwww"} 
# # p 3
# # puts 3

# # a = 3; b = 4 
# # print a; print b ;

# a = 8;
# b = 3;
# # if a == 2
# # 	puts "even"
# # else
# # 	puts "odd" 
# # end 

# # unless b = 2
# # 	puts "yeah "
# # 	b-= 1
# # else
# # 	puts "baba" 
	
# # end

# # while a > 0
# # 	puts a
# # 	a-=1
# # end
# # until a < 3
# # 	puts a
# # 	a-=2
	
# # end
# until a >=10
# 	puts a
# 	a+= 1
	
# end
# while a < 15
# 	puts a
# 	a+=3
# end
# puts "enter name"
# name = gets

# puts name

# puts (9.fdiv(2))

# seven = 57.to_s
# puts (seven +  "is ")

# puts (2**3)
# puts (2%3.0)

# puts (9.fdiv(2))
# name = gets()
# 

# def simple()
# 	puts "Hii"
# end
# def simple1
# 	puts "Hello"
# end
# simple
# simple()
# simple1()
# def add(x,y)
# 	x+y
# end

# def divide(x,y)
# 	return "Infinite" if y==0
# 	x/y
# end
# puts add(2,7)
# puts divide(15,0)
# def is_divisible_by(numb)
# 	return false if numb==0
# 	true
# end
# puts is_divisible_by 0
# puts is_divisible_by 5

# def factorial(n=7)
# 	n == 0? 1 : n * factorial(n-1)
# end
# puts factorial(5)
# puts factorial 0
# puts factorial 

# def max(onepara, *nums, another)
# 	nums.max
# end
# puts max("something", 5, 7, 8, 9, 22, 88) 

# 3.times { puts "helloowwwww"}

# 2.times do |index|
# 	if index > 0
# 	puts index
# 	end
# end
# 2.times { |index| puts index if index > 0 }

# Implicit call
# def tw_times 
# 	return "Nobody "  unless block_given?
# 	yield
# 	yield
# end

# puts tw_times  { print "hiii" }
# puts tw_times

# Explicit call

# def two_times(& inputwa)
# 	return "nothing" if inputwa.nil?
# 	inputwa
# 	inputwa.call
# end

# puts two_times {print "helloz"} 
# puts two_times

#--------------Files------------

# File.foreach("test.txt")  { |line| puts line }
# File.foreach("test.txt") do |line|
# 	puts line
# 	p line
# 	p line.chomp #chops newline character
# 	p line.split # array of words
# end

# #Reading from non existent file-----------
# File.foreach("do_not_exist.txt") do  |line|  
# 	puts line
# 	end
#above code gives exception of ENOENT
#so up next is exception handling
# begin
# 	File.foreach("do_not_exist.txt") do |line| 
# 		puts line.chomp
# 	end 
# rescue Exception => e
# 	puts e.message
# 	puts "Lets assume this didnt happen"
# end

# Alternative method ----
# if File.exist? 'tet.txt'
# 	File.foreach('test.txt') do |line|  
# 		puts line.chomp
# 	end
# end   

# This helps skip if block and execute rest program
#helps in dealing with real exceptions.

#Writing to file--------------------------
# File.open('test1.txt', "w") do |file|  
# 	file.puts "one line"
# 	file.puts "another line"
# end
# File.foreach('test1.txt') do |line|  
# 	puts line
# end
# puts ENV["Sublime"]


# # name = gets.chomp

#String interpolation
# sinle_qupte = 'Hi \n it\'s hot thats Y m here'
# doublt_quote = "Hi \n it\'s not that hot"
# puts sinle_qupte
# puts "------------------"
# puts doublt_quote

#Now a function : String interpolation is only for double quotes
# def multiply(a,b)
# 	"#{a} multiplied by #{b} = #{a*b}"
# end
# puts multiply(2,3)

# myname = 'dim '
# puts myname.lstrip.capitalize
# p myname
# myname.lstrip!
# puts myname
# p myname
# puts myname[0] = 'k'
# puts myname

#------substituting in string ------
# weather = %Q{hi para
# graph yiieeee}
# weather.lines do |line|
# 	line.sub! 'graph', 'blahh'
# 	puts "#{line.strip}"
# end
# puts weather

#arrays

# stack = [];
# stack <<"hi"
# stack.push ("helloowwwww")
# p stack
# puts stack.pop

# queue = [];
# queue.push "one"
# queue.push "two"
# p queue
# puts queue.shift

# a = [5,2,4,7,3,9,8].sort.reverse
# p a
# a[9] = 6
# p a

#_________________________________________#
# ----------Array Functions -------------
# a = [5,2,4,7,3,9,8]
# a.each { |num| print num} #Prints without space like a number
# puts # Adds a new number 
# new_arr = a.select { |num| num > 4}
# p new_arr

# new_arr = a.select{|num| num >=4}.reject{|num| num.even? }
# p new_arr
# new_arr = new_arr.map { |num| num*num  }
# p new_arr

#Ranges ------------------------------------------

# som_var = 1..5
# puts som_var.include? 3
# puts som_var ===3.3 
# som_var1 = 'a'...'p'
# puts som_var1 === 'p'
# puts som_var1 === 'o'
# puts som_var1 === 'A'
# 

# ------Hashes-----------------------------
# editor_props = { "fonts" => "Arial", "size" => 12, "color" => "red"}
# puts editor_props["fonts"]
# editor_props["Background"] = "Dark"
# #p editor_props
# editor_props.each_pair do |key, value|
# 	puts "key: #{key} value: #{value}"
# end
# puts editor_props["Bla"]

# word_frequency = Hash.new(0)

# sen = "hi hi Hello hello bla blah "
# sen.split.each do |blah|
# 	word_frequency[blah.downcase] += 1
# end
# p word_frequency
# family = {oldest: "Jim", older: "kim", young: "blim"}
# family[:youngest] = "kerry"
# p family

# def adj_col(props = {foreground: "black", background: "white"})
# 		puts "foreground: #{props[:foreground]}" if props[:foreground]
# 		puts "Background: #{props[:background]}" if props[:background]
# end
# adj_col
# adj_col(props = {foreground: "red", background: "green"})

# -----Object Oriented nature of ruby------------

#Object Creation
# class Person
# 	def initialize (name, age) #constructor
# 		@name = name
# 		@age = age
# 	end
# 	def get_info
# 		@additional_info = "Interesting"
# 		"Name: #{@name}, age: #{@age}"
# 	end
# end

# Person1 = Person.new(3,4)
# p Person1.instance_variables
# puts Person1.get_info
# p Person1.instance_variables

#----------Access Control -------
class Person
	def initialize(name, age)
		@name = name
		@age = age
	end
	def name
		@name
	end
	def name= (new_name)
		@name = new_name
	end
end
Person1 = Person.new("Joe", 14)
puts Person1.name
Person1.name = "harry"
puts Person1.name
puts Person1.age