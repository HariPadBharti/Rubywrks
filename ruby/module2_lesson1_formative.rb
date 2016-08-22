some_var = 'false'
another_var = "nil"
case
when some_var == "pink elephant"
	puts "dnt think"

when another_var.nil?
	puts "question mark "

when some_var == false
	puts "looks like this one sd executed"

else
    puts "I guess nothing matched... But why?"
end