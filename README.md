# csci-241-ch03-1
Integer_Expression_Calculation 

Using the AddTwo program from Section 3.2 as a reference, write a program that calculates the expression Res = (A + B) – (C + D), using registers and variables. Several steps are suggested:
In the data segment, define variables ordered by: varA, varB, varC, varD, and Res with some integers initialized
In the code segment
calculate (A + B) – (C + D)
save the result in Res
You can copy the following to fill the blanks with your implementations. Please do not use more than six instructions. For an assembly programming project, download template32.zip

---------------------------------------------------------------------
TITLE  Chapter 3, Problem 1 (Integer_Expression.asm)

; Program:     Chapter 3, Problem 1
; Description: calculates Res = (A + B) – (C + D), using registers and variables
; Student:     James Hope
; Date:        02/09/2015
; Class:       CSCI 241
; Instructor:  Mr. Ding

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
; define DWORD variables: varA, varB, varC, varD, and Res
; ... ...

.code
main1 proc
; calculate Res = (A + B) – (C + D)
   ; ... ...
   ; calculate (A + B) – (C + D)
   ; ... ...
   ; save the result in Res

   invoke ExitProcess,0
main1 endp
end main1
---------------------------------------------------------------------

When finished, test your program in debugger. If varA as 10, varB 20, varC 30, and varD 40, Res should be -40. From your VS memory windows, when you enter &varA, the result would be like this:

ch03_01.png

where 0a 00 00 00 means 10, 14 00 00 00 is 20, 1e 00 00 00 is 30, 28 00 00 00 is 40, and d8 ff ff ff is -40

