


Pseudocode:
Input: Two ARRAYS of numbers, one with an even number of elements, one with an odd number of elements.
Output: For each of the two arrays: the sum, the mean (with decimals), and the median (with decimals)

To solve:
Create a function called "sum" that takes two arguments, list1 and list2, (which are arrays of numbers, one of odd length, one of an even length) to calculate the sum of each array:
     Create a new variable called "listLength" and give it a value of the length of the array.
     Use a FOR loop and a counter to loop through the elements of the list
      Add the next element with the sum of the previous elements until all elements have been added (counter < length).
    Output the sum for each of the arrays

Create a function called "mean" that takes two arguments, list1 and list2, that calculates the mean of each list:
     Call the length of the array (listLength).      
     Take the sum from the previous function and divide it by the length of the array.
    Output the mean for each of the arrays

Create a function called "median" that takes two arguments, list1 and list2, that calculates the median of each list:
    Sort the array (smallest to largest).
    Take the length of the array (listLength).
     Find out if the length is odd or even:
          if length modulus 2 is 0, it is even
          if length modulus 2 is 1, it is odd.
   
      If the length is odd, find the element at the index [length/2) - .5] and divide by 2.
      If the length is even, sum the elements at index [length/2-1] and at  index [length/2] and divide that total by 2.
   Output the median for each of the arrays

