a = 1
b = 100
while (a != b)
	if a%3 == 0
		puts "Crackle"
	
	elsif a%5 == 0
		puts "Pop"
	
	elsif a%3==0 and a%5==0
		puts "CracklePop"
	
	else
		puts a
		a = a+1
	end
end

