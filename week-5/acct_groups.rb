# Input: number of people 
# Output: A list of groups of 4 or 5 people, 3 people if necessary

# To solve:
# Input people in the cohort.  Figure out how many people it is.
		
# Write a method to figure out how many groups to make based on the number of people.  Must call up the list of students created in the first method.
# Write a method to assign people to the groups.  Must call the list of students and the number of groups.
# Output an array of arrays (or the list of groups and who is in them)

student_list = ["Shunqian Luo (Nathan)", "Kim Allen","Jenna Andersen", "Pamela Antonow", "Jupiter Baudot", "Ovi Calvo", "Awilda Cantres", "Celeste Carter", "Mike Cerrone", "Eunice Choi","Un Choi", "Kristie Chow", "Regina Compton", "Marcus Davis", "Paul Etscheit", "Solomon Fernandez", "Marcel Galang", "Aurelio Garcia", "Hector Jair Moreno Gomez", "Ricky Binhai Hu", "Kai Huang", "Alex Jamar", "Harmin Jeong", "Lauren Jin", "CJ Joulain", "Michael Landon", "Richard Leo", "Julian Lesse", "Ryan Lesson", "Ian Lockwood", "Christopher Mark", "Lauren Markzon", "Miguel Angel Melendez", "David O'Keefe", "Nathan Park", "Landey Patton", "Farman Pirzada", "Samuel Frederick Purcell", "Salim Rahimi", "Colin Razevich", "Irina Renteria", "Jamie Runyan", "Eric Shou", "Michael Silberstein", "Rosslyn Sinclair-Chin", "Aji Slater", "Marvy Tagala", "George Warnbold", "Shawn Watson", "Hana Worku", "Nicholas Yee"]

# def num_groups (list_of_names)
#   num_students = list_of_names.length
#   if num_students % 5 == 0
#     groups_num = num_students/5
#   else groups_num = (num_students/5) + 1    
#   end
# end

# num_groups (student_list)
# total_groups = num_groups (student_list)
# remainder = student_list.length % 5
# number_of_4_people_groups = 5 - remainder

#   all_groups = Array.new(total_groups){Array.new}
#   index = 0
# 	while index < total_groups
# 	  if index < number_of_4_people_groups
# 	      all_groups[index]<< student_list.pop(4)
# 	  else
# 	    all_groups[index] << student_list.pop(5)
# 	  end
# 	  index += 1
# 	end


# HERE I TRY TO PUT THE ABOVE starting at line 27 INTO A METHOD.  I get an error for line 60, expecting a ')' where there is a ','.

# def create_groups (student_list, total_groups, number_of_4_person_groups)
#   all_groups = Array.new(total_groups){Array.new}
#   p all_groups
#   index = 0
# 	while index < total_groups
# 	  if index < number_of_4_people_groups
# 	      all_groups[index]<< student_list.pop(4)
# 	  else
# 	    all_groups[index] << student_list.pop(5)
# 	  end
# 	  index += 1
# 	end
#   p all_groups
# end

# create_groups (student_list, total_groups, number_of_4_people_groups)

#REFACTORING:
def num_groups (list_of_names)
  num_students = list_of_names.length
  if num_students % 5 == 0
    groups_num = num_students/5
  else groups_num = (num_students/5) + 1    
  end
end

num_groups (student_list)

def create_groups(student_list, total_groups)  
  remainder = student_list.length % 5
  number_of_4_people_groups = 5 - remainder
  all_groups = Array.new(total_groups)
  index = 0
  all_groups.each do |group|
    index+=1
    if index <= number_of_4_people_groups
      group = student_list.pop(4)
    else group = student_list.pop(5)
    end
     all_groups[index-1]= group
  end
end

total_groups = num_groups (student_list)
p create_groups(student_list, total_groups)

#can't figure out why the below won't work (I use different argument names)
=begin
def create_groups(list_of_names, total_num_groups)  
  remainder = list_of_names.length % 5
  number_of_4_people_groups = 5 - remainder
  all_groups = Array.new(total_num_groups)
  index = 0
  all_groups.each do |group|
    index+=1
    if index <= number_of_4_people_groups
      group = list_of_names.pop(4)
    else group = list_of_names.pop(5)
    end
     all_groups[index-1]= group
  end
end
total_groups = num_groups (student_list)
p create_groups (student_list, total_groups)
=end

  # all_groups = Array.new(total_groups)
  # index = 0
  # 	all_groups.each do |group|
  #     index+=1
  #     if index <= number_of_4_people_groups
  #       group = student_list.pop(4)
  #     else group = student_list.pop(5)
  #     end
  #    all_groups[index-1]= group
  # 	end
  # 	p all_groups[2][3]

#   	What was the most interesting and most difficult part of this challenge?
#   	Most interesting: Refactoring because it was the first time I was able to do it on my own.  
#   		The most difficult is that it took me FOREVER and it seemed there were a number of different ways to approach it.  I spent the first 5 hours trying to do it one way, and then switched strategies.

# Do you feel you are improving in your ability to write pseudocode and break the problem down?
# Somewhat.  I still feel like I have a long way to go.  I feel like I go a lot of round-about ways to get to where I want to go.
# Was your approach for automating this task a good solution? What could have made it even better?
# Well, it's a task I could have done way faster with a list and pen and paper.  It could be better if I somehow randomized the list.

# What data structure did you decide to store the accountability groups in and why?
# I stored it in an array.  I decided to use the indices to calculate and didn't find a reason to use a hash.  Hashes are also more intimidating to me.

# What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
# I used .pop for the first time.  I learned another way to do what I'd already done.  
# I also realized my solution was an array inside an array inside an array. In refactoring I realized that that what is popped off is already an array.

