try:
# Ask the user for input
    numerator = float(input("Enter the numerator: "))
    denominator = float(input("Enter the denominator: "))
# Attempt division
    result = numerator / denominator
except ZeroDivisionError:
# Handle the case when dividing by zero
    print("Error: Cannot divide by zero.")
else:
# If no error occurs, print the result
    
    print(f"The result of {numerator} divided by {denominator} is {result}.")
#output
Enter the numerator: 12
Enter the denominator: 4
The result of 12.0 divided by 4.0 is 3.0.
