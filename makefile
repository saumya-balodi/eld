
lab1.o : lab1.c
    avr-gcc -g -Os -mmcu=atmega328p -c lab1.c
lab1.elf : lab1.o lab1.c
    avr-gcc -g -mmcu=atmega328p -o lab1.elf lab1.o
lab1.hex : lab1.elf lab1.o lab1.c
    avr-objcopy -j .text -j .data -O ihex lab1.elf lab1.hex
flash : lab1.hex
    avrdude -F -V -c arduino -p ATMEGA328P -P /dev/ttyUSB0 -b 115200 -U flash:w:
clean :
    rm -f lab1.hex lab1.elf