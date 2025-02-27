try:
    # Prompt user for input
    user_input = input("Please enter an integer: ")
    
    # Try to convert the input to an integer
    user_integer = int(user_input)
    
except ValueError:
    # Handle the case where the input is not a valid integer
    print("Error: The input is not a valid integer.")
else:
    # If the input is valid, print the integer
    print(f"You entered the integer: {user_integer}")
#output
Please enter an integer: 42
You entered the integer: 42
