#1. Write a Python program to Count all letters, digits, and special symbols from the given 

#string Input = “P@#yn26at^&i5ve”

 #Output: Chars = 8 Digits = 2 Symbol = 3
def count_characters(input_string):
# Initialize counters
    chars = 0
    digits = 0
    symbols = 0
     # Iterate through each character in the string
    for char in input_string:
        if char.isalpha():  # Check if the character is a letter
             chars += 1
        elif char.isdigit():  # Check if the character is a digit
             digits += 1
        else:  # If the character is neither a letter nor a digit, it's a symbol
             symbols += 1
# Print the results
    print(f"Chars = {chars} Digits = {digits} Symbols = {symbols}")
# Input string
input_string = "P@#yn26at^&i5ve"
# Call the function
count_characters(input_string)


#output
Chars = 8 Digits = 3 Symbols = 4
