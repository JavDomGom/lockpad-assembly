lockpadl3: lockpad.o lockpad2.o
	ld -o lockpad3 lockpad.o lockpad2.o
lockpad2.o: lockpad2.s
	as -o lockpad2.o lockpad2.s
lockpad.o: lockpad.s
	as -o lockpad.o lockpad.s
clean:
	rm *.o lockpad3

