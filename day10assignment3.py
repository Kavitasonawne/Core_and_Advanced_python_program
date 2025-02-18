#. Write a Python program to find duplicate values from a list and display those.


# Sample list with duplicate values
my_list = [1, 2, 3, 4, 5, 1, 6, 7, 2, 8]
# Empty dictionary to store the count of each element
count_dict = {}
# Loop through the list and count occurrences of each element
for item in my_list:
    if item in count_dict:
        count_dict[item] += 1
    else:
        count_dict[item] = 1

# Display the duplicates (items with a count greater than 1)
duplicates = [key for key, value in count_dict.items() if value > 1]
# Print the result
print("Duplicate values in the list are:", duplicates)

#output
Duplicate values in the list are: [1, 2]
