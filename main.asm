.386
.model flat

PBYTE	TYPEDEF		PTR BYTE
PWORD	TYPEDEF		PTR WORD
PDWORD	TYPEDEF		PTR DWORD

.data
array1	BYTE		10h, 20h, 30h, 40h, 50h
array2	WORD		100, 200, 300, 400, 500
array3	DWORD		1000, 2000, 3000, 4000, 5000

pt_1	PBYTE		array1
pt_2	PWORD		array2
pt_3	PDWORD		array3

.code
start		proc
			mov esi, pt_1
			mov al, [esi]
			mov edi, pt_2
			mov bl, [edi]
			mov edx, pt_3
			mov cl, [edx]

			ret
start		endp
end			start