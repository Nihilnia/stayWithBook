Say "Give me a number: "
PULL userInput
IF userInput < 10 THEN
    SAY "Your number" userInput "is less than 10"
ELSE IF userInput > 10 THEN
    SAY "Your number" userInput "is greater than 10"
ELSE
    SAY "Your number is" userInput


SAY "Name/Surname"
PULL name Surname
SAY "Welcome" name Surname



SAY "Give me two numbers"
PULL first second
Respond = 0
DO UNTIL Respond = 0
    Respond = 0
    SAY "What is" first "+" second "="
    PULL Respond
    
    IF Respond = first + second THEN
        EXIT
    ELSE SAY "Wrong Answer mate. Try again.."
END


SAY "Give me the number for start:"
PULL start
SAY "Give me the number for end:"
PULL toEnd
SAY "Counting to" toEnd "from" start
DO f = start to toEnd
    SAY "Current number:" f
END



/* Subroutines */

CALL ASKNUMBERS
CALL THEQUESTION
EXIT 
/* We are telling to REXX that we are done here.
If we won't do it REXX will run them again. */


ASKNUMBERS:
    SAY "Give me two numbers:"
    PULL firstNumber secondNumber
    total = firstNumber + secondNumber
RETURN total

THEQUESTION:
    Respond = 0
    Total = firstNumber + secondNumber
    DO UNTIL Respond = Total
        SAY "What is" firstNumber "+" secondNumber "="
        PULL Respond
        IF Respond \= total THEN
            SAY "Try again mate.."
    END
    SAY "Well played."

/* You can pass paramters using by arguments*/


SAYHELLO(10, "Nnnn")
EXIT

SAYHELLO:
    count = arg(1)
    name = arg(2)
    DO f = 0 to count
        SAY name "-"f
    END