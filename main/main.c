#include <stdio.h>
#include "led.h"
#include "adc.h"

int main(int argc, char *argv[])
{
    led_shdow();
    adc_ins();	

    return 0;
}
