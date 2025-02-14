# Function to check if a number is a palindrome
def is_palindrome(n):
    original_num = n
    reversed_num = 0
     # Reverse the number
    while n > 0:
        digit = n % 10
        reversed_num = reversed_num * 10 + digit  # Append the digit to the reversed numben = n // 10  # Remove the last digit from the original numbe
        n = n // 10  # Remove the last digit from the original numbe
    # Check if the original number is equal to the reversed number
    if original_num == reversed_num:
        return True
    else:
        return False

# Input from the user
num = int(input("Enter a number: "))
# Call the function and display the result
if is_palindrome(num):
     print(f"{num} is a palindrome.")
else:
     print(f"{num} is not a palindrome.")
#output
Enter a number: 2
2 is a palindrome.
