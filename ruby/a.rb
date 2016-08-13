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
File.open('test1.txt', "w") do |file|  
	file.puts "one line"
	file.puts "another line"
end
File.foreach('test1.txt') do |line|  
	puts line
end
puts ENV["Sublime"]