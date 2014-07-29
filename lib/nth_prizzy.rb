def prizzy(number)
  num = 1000000
  list = (2..num).to_a
  prime_list = []
  ultimate_prime_list = []
  the_prime_list = []
  the_final_list = []
  the_final_list[0] = 2
  the_final_list[1] = 3
  the_final_list[2] = 5
  the_final_list[3] = 7
  list.each do |index|
    if index % 2 != 0
      prime_list.push(index)
    end
  end
  prime_list.each do |index|
    if index % 3 != 0
      ultimate_prime_list.push(index)
    end
  end
  ultimate_prime_list.each do |index|
    if index % 5 != 0
      the_prime_list.push(index)
    end
  end
  the_prime_list.each do |index|
    if index % 7 != 0
      the_final_list.push(index)
    end
  end
  number_string = number.to_s
  split_number_string = number_string.split('')
  if split_number_string[-1] =='4' or split_number_string[-1] == '0' or split_number_string[-1] == '5' or split_number_string[-1] == '7' or split_number_string[-1] == '8' or split_number_string[-1] == '9' or split_number_string[-1] == '6'
    answer = the_final_list[number-1].to_s + " is the " + number.to_s + "th prime number."
  end

  if split_number_string[-1] == '1'
    answer = the_final_list[number-1].to_s + " is the " + number.to_s + "st prime number."
  end

  if split_number_string[-1] == '2'
    answer = the_final_list[number-1].to_s + " is the " + number.to_s + "nd prime number."
  end

  if split_number_string[-1] == '3'
    answer = the_final_list[number-1].to_s + " is the " + number.to_s + "rd prime number."
  end

  answer
end

puts prizzy(4)
