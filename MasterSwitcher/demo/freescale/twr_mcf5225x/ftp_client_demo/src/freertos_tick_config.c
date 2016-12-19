#include "freertos.h"
#include "task.h"

void vApplicationSetupInterrupts(void)
{
   unsigned short usCompareMatchValue = (configCPU_CLOCK_HZ / 2) / configTICK_RATE_HZ;

   //Configure interrupt priority and level and unmask interrupt for PIT0
   MCF_INTC0_ICR55 = (1 | ( configKERNEL_INTERRUPT_PRIORITY << 3 ));
   MCF_INTC0_IMRH &= ~(MCF_INTC_IMRH_INT_MASK55);

   //Do the same for vector 63 (interrupt controller 0)
   MCF_INTC0_ICR16 = (0 | configKERNEL_INTERRUPT_PRIORITY << 3);
   MCF_INTC0_IMRL &= ~(MCF_INTC_IMRL_INT_MASK16 | 1);

   //Clear PIT0 interrupt flag
   MCF_PIT0_PCSR |= MCF_PIT_PCSR_PIF;

   //Configure PIT0
   MCF_PIT0_PCSR = MCF_PIT_PCSR_PRE(0) | MCF_PIT_PCSR_PIE | MCF_PIT_PCSR_RLD | MCF_PIT_PCSR_EN;
   MCF_PIT0_PMR = usCompareMatchValue;
}

__declspec(interrupt:0) void vPIT0InterruptHandler(void)
{
   unsigned long ulSavedInterruptMask;

   //Clear the PIT0 interrupt flag
   MCF_PIT0_PCSR |= MCF_PIT_PCSR_PIF;

   //Increment tick counter
   ulSavedInterruptMask = portSET_INTERRUPT_MASK_FROM_ISR();

   if(xTaskIncrementTick() != pdFALSE)
   {
      taskYIELD();
   }

   portCLEAR_INTERRUPT_MASK_FROM_ISR(ulSavedInterruptMask);
}
