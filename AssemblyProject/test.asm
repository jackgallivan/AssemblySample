; Test file

.386
.model flat, stdcall
.stack 4096
ExitProcess PROTO, dwExitCode: DWORD

.data

testVal     DWORD   7

.code
main PROC

; Add 20 to testVal and store it in testVal
    MOV     EAX,testVal         ; Move testVal to EAX
    ADD     EAX, 20             ; Add 20 to EAX
    MOV     testVal, EAX     ; Move EAX to testVal

	Invoke ExitProcess,0
main ENDP

END main
