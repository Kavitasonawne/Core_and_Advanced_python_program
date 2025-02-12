#Python Program to Check if a Number is Positive, Negative or zero
def check_number(num):
    if num > 0:
        return "Positive"
    elif num < 0:
        return "Negative"
    else:
        return "Zero"
#Take input from the user for the number
num = float(input("Enter a number: "))
# Verify the number
result = check_number(num)
# show the result
print(f"The number {num} is {result}.")


#output
Enter a number: 34
The number 34.0 is Positive.
