#include <msp430.h>

int main(void)
{
	// Stopping the watchdog timer.
	WDTCTL = WDTPW | WDTHOLD;

	// Set the direction of the pin.
	P1DIR |= 0x01;

	volatile unsigned long i;

	for (;;)
	{
		// Toggle the pin.
		P1OUT ^= 0x01;

		i = 0;
		while (i++ != 9999);
	}
	return 0;
}
