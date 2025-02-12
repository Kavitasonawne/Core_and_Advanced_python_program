# Python Program to Find the Largest Among Three Numbers
def find_largest(num1, num2, num3):
    if (num1 >= num2) and (num1 >= num3):
        return num1
    elif(num2 >= num1) and (num2 >= num3):
        return num2
    else:
        return num3

# Input three numbers from the user

num1 = float(input("Enter first number: "))
num2 = float(input("Enter second number: "))
num3 = float(input("Enter third number: "))
# Find the largest number
largest = find_largest(num1, num2, num3)# Display the largest number
print(f"The largest number among {num1}, {num2}, and {num3} is {largest}.")


#output
Enter first number: 101
Enter second number: 234
Enter third number: 456
The largest number among 101.0, 234.0, and 456.0 is 456.0.
