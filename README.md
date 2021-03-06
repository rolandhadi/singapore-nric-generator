# singapore-nric-generator

## What is singapore-nric-generator?
A piece of Java/Python/PHP/VBS code that generates a valid Singapore NRIC/FIN number for test automation and test data preparations.
It is inspired from the web developer samliew.

## What are a NRIC/FIN numbers?
NRIC (National Registration Identity Card) is the identity document in use in Singapore. The NRIC number is a unique alphanumeric serial number assigned to the document.

## What are NRIC/FIN generated numbers used for?
It is used for testing applications which requires a valid NRIC/FIN number as input data, you can include the piece of code to your data scripting/data preparations.

## How is the number generated?
The number is randomly generated. However to make it valid, the random numbers are used to calculate the checksum (last character) using an algorithm described in the Wikipedia page. If special rules like the starting letter or DOB is selected, the algorithm changes accordingly.

## Is this legal?
The generation of NRIC numbers itself is legal, as the algorithm is made public. However, you should not use the NRIC numbers to impersonate anyone as it is an offence. By using this code to generate/copy NRIC/FIN numbers, you hereby agree to be responsible for your actions for use of the numbers, and waive all your rights to hold me liable to any problems arising from your actions.


## Demo
https://github.com/rolandhadi/singapore-nric-generator/blob/main/singapore-nric-generator.ipynb
