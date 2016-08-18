#include<avr/io.h>
#include<util/delay.h>
int main()
{
	DDRB = 0b00010000;//digital pin 13 as output 
	while(1)
	{
		PORTB = 0b00010000;
		_delay_ms(1000);
		PORTB = 0b00010000;
		_delay_ms(1000);		
		
	}

}
