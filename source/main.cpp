
#include "MicroBit.h"
#include "samples/Tests.h"

MicroBit uBit;

int main()
{
    uBit.init();

    //display_arrows();

    //uint8_t abv;
    //abv = 5;
    //DMESG("Test value: %d", abv);

    // Run the blinky test
    // Uncomment to run the blinky test
    // fade_test();
    // red_power_test();
    // green_power_test();
    // off_power_test();
    // setDisplay(1);
    // setDisplay(0);

    //version_test();
    //showSerialNumber();
    //flash_storage_test();

    blinky();

    // out_of_box_experience();
    microbit_panic(999);
}
