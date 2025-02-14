# Function to reverse a number
def reverse_number(n):
    reversed_num = 0
    while n > 0:
         digit = n % 10  # Get the last digit
         reversed_num = reversed_num * 10 + digit  # Append the digit to the reversed number
         n = n // 10  # Remove the last digit from the original number
    return reversed_num

# Input from the user
num = int(input("Enter a number: "))
# Call the function and display the reversed number
reversed_num = reverse_number(num)
print("Reversed number:", reversed_num)

#output
Enter a number: 4
Reversed number: 4
