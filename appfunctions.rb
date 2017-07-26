def add(num1, num2, num3, age)
	wow = num1.to_i + num2.to_i + num3.to_i
	in_ten = age.to_i + 10

	if
		age.to_i > wow
		"#{wow} That's lower than your age, Wow you're old! In ten years you will be #{in_ten}, that's even older!"
	elsif age.to_i< wow
		"#{wow} That's higher than your age, you're a young one, aren't you?"
	else age.to_i == wow
		"#{wow}. Same as your age,thats an odd coincidence, don't you think?" 
	end
end

def multiply(age,wow)
	age.to_i * wow
end
