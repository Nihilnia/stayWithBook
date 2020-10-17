/* You don't need to declare variable type 
Just name it.
*/


Message = "This is",
"the message"

SAY Message


/* Assigning Hexadecimal Values to a Variable */

alias = "Nihil"
Say alias

hexAlias = "4e6968696c"x
/*
Hex values must be followed by 'x' just after quotation marks.

Also,
If you want you can add spaces between hex values for readability.
REXX doesn't give a shit. =)

hexAlias = "4e 69 68 69 6c"x
*/

Say "hexAlias:" hexAlias

/* Assigning Binary Values to a Variable*/

binaryAlias = "1001110 01101001 011010000110100101101100"b
Say "binaryAlias:" binaryAlias

/*
Binary values must be followed by 'b' just after quotation marks.

Also,
The same thing for binaries.
You can add spaces between numbers for readability.

binaryAlias = "1001110 01101001 011010000110100101101100"b
*/



/* LIT BIT Important Note 

You can save small amount of time by not using for Zero at the start.
What I mean?
If the binary value starts with four zero you don't need to write them */

SAY "with fourZERO"
SAY "00000011"b

SAY "without fourZero"
SAY "0011"b /* lmao just realized this is harth symbol, shit!!*/







/*
Getting a single character from user.

userInput = SysGetKey([option])

*option: wanna say what user enter? then Echo
or NoEcho, as default:ECHO

Let's Try:
*/

SAY "Give me a character:"
userInput = SysGetKey(NoEcho)
say "You gave me" userInput

/* Variable Arrays */

/* I must warn you; THEY'RE SO FLEXIBLE */

alias.A = "Alias A"
SAY "Alias.A:" alias.A

alias.A.12 = "Alias A-12"
SAY "Alias A-12:" alias.A.12

DaftPunk = 4 + 4 + 4
say "Alias A.DaftPunk:" alias.A.DaftPunk