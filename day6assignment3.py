# Function to calculate the factorial of a number
def factorial(n):
    result = 1
    while n > 1:
        result *= n  # Multiply the result by n
        n -= 1  # Decrement n
    return result
# Input from the user
num = int(input("Enter a number: "))
# Call the function and display the factorial
fact = factorial(num)
print(f"The factorial of {num} is {fact}.")

#output
Enter a number: 12
The factorial of 12 is 479001600.
