# Declare a div() function with two parameters. Then call the function and pass two numbers and display their division. '''

def div(a,b):
    if b==0:
        return"cannot divide by zero"
    return a/b

#Call the function and pass two numbers
result=div(10,2)
# Display the result
print("The division result is:", result)



#output
The division result is: 5.0
