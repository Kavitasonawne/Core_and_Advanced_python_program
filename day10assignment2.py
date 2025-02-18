# Sample list
my_list = [10, 20, 4, 45, 99, 5]
# Initialize largest and smallest with the first element of the list
largest = my_list[0]
smallest = my_list[0]
# Loop through the list to find the largest and smallest
for num in my_list:
     if num > largest:
          largest = num
          if num < smallest:
              smallest = num

# Print the results
print("The largest number in the list is:", largest)
print("The smallest number in the list is:", smallest)

#output
The largest number in the list is: 99
The smallest number in the list is: 10
