#include "stm32f2xx.h"

// BusinessLogic
#include "ExecutingControllersManager.h"

void ConfigurePeripherial();

int main(void)
{
    Configure();
    while(1)
    {
    }
}


void Configure()
{
    // clocks
    SystemInit();
    // Executing controllers manager
    InitializeControllersInterconnectionModule();

}
