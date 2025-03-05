
#You have a list of email addresses and you want to extract the domain part (the part after '@') from each email address. Example Data:

#emails = [ "alice@example.com", "bob@sample.org", "charlie@mydomain.net" ]

emails = ["alice@example.com", "bob@sample.org", "charlie@mydomain.net"]

# Using list comprehension to extract the domain part
domains = [email.split('@')[1] for email in emails]

print(domains)
#output
['example.com', 'sample.org', 'mydomain.net']

