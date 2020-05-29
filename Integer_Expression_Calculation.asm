; Program:     Chapter 3, Problem 1) Integer_Expression_Calculation
; Description: calculates Res = (A + B) – (C + D), using registers and variables
; Student:     Gabriel Warkentin
; Date:        02/08/2020
; Class:       CSCI 241
; Instructor:  Mr. Ding

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
; define DWORD variables: varA, varB, varC, varD, and Res
varA DWORD 10d 
varB DWORD 20d
varC DWORD 30d
varD DWORD 40d
Res DWORD 0

.code
main proc

; calculate Res = (A + B) – (C + D)

   mov eax,varA
   add eax,varB

   mov ecx,varC
   add ecx,varD

   sub eax,ecx
   mov Res,eax

   invoke ExitProcess,0
main endp
end main