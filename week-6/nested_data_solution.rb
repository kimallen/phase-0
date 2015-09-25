# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts: 1

# ============================================================
p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts: 1
# ============================================================
p hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts: 1
# ============================================================
p  nested_data[:array][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]
number_array.map! do |outer| 
  if outer.kind_of?(Array)
    outer.map! {|inner| inner + 5}
  else outer + 5  
  end
end
p number_array
# We did not come up with a way to refactor, though i'd love to learn a way.
# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

startup_names.each do |outer| 
 
  if outer.kind_of?(Array)
    outer.each do |inner| 
      if inner.kind_of?(Array)
        inner.each {|innerinner| innerinner.insert(-1, "ly")}
      else inner.insert(-1, "ly")
      end
    end
  else  outer.insert(-1, "ly")
  end
end

p startup_names

# What are some general rules you can apply to nested arrays?
# It helps to name each level of nesting. You can reference an array within an array with mutiple [], so by counting how many levels, you know how many [] to use.
# What are some ways you can iterate over nested arrays?
# use map or each.  I find it helps to start with the most nested array and work my way out of it.  It is the "most" conditional, so all other conditions enclose it.
# Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
# We used .insert, which I was familiar with but had to look up again.  It worked well because we could alter each string in one line.  It was the first time I used kind_of? which
# my pair was aware of and it seemed necessary for determining what to do when an iteration reached an array.
