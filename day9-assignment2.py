#Write a Python program to remove duplicate characters of a given string. 
#Input = “String and String Function” 
#Output: String and Function
def remove_duplicates(input_string):
    # Split the string into words
    words = input_string.split()
    # Remove duplicates in each word
    result = []
    for word in words:
        seen = set()
        new_word = []
        for char in word:
            if char not in seen:
                seen.add(char)
                new_word.append(char)
        result.append(''.join(new_word))

 # Join the words back together and return the result
    return ' '.join(result)
# Input string
input_string = "String and String Function"
# Call the function
output_string = remove_duplicates(input_string)
# Print the result
print(output_string)


#output
String and String Functio

