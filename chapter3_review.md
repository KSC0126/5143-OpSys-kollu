## 3.1 What does it mean to preempt a process? 
Answer: 
Preempt a process means to move a process from running state to ready state so that the process gives up the cpu involuntarily. 
## 3.2 What is swapping and what is its purpose?
Answer: 
we allocate the memory of one process to other process this memory allocation is known as swapping and main purpose of this is to maximize the number of processes in the system
## 3.3 List three general categories of information in a process control block? 
Answer: 

Process identification: id of this process, id of the parent process and user id. 

Processor state information: program counter, status registers, and general-purpose registers. 

Process control information: 
a. Scheduling & state information: process state, priority, scheduling-related information (amount of time waiting and time being executed), event (identity of event the process is awaiting before can be resumed) 
b. Data structuring: a process may be linked to other process in a queue. 
c. Memory management: include pointers to page tables that describe the virtual memory assigned 
d. Resource ownership and utilization 
e. Process privileges: e.g. the memory that may be accessed, types of instructions that may be executed and the use of system utilities and services 
f. Interprocess communication
## 3.4 Why are two modes (user and kernel) needed?
Answer: 
Operating system consists of two modes(user and kernel) and the processor switches between the two modes depending on what type of code is running on the processor. Applications run in user mode, and core operating system components run in kernel mode.

Kernel mode: In Kernel mode, the executing code has complete and unrestricted access to the underlying hardware. It can execute any CPU instruction and reference any memory address. Kernel mode is generally reserved for the lowest-level, most trusted functions of the operating system. 

User mode: In user mode the executing code has no ability to directly access hardware or reference memory.. Due to the protection afforded by this sort of isolation, crashes in user mode are always recoverable. Most of the code running on your computer will execute in user mode.
## 3.5 What is the difference between an interrupt and a trap?
Answer:
INTERRUPT: In any computer, during its normal execution of a program, there could be events that can cause the CPU to temporarily halt. Events like these are called interrupts. Interrupts can be caused by either software or hardware.

TRAP: A Trap can be identified as a transfer of control, which is initiated by the programmer. The term Trap is used interchangeably with the term Exception
##3.6 Give three examples of an interrupt?
Answer:  Interrupt |Example 
 ------------|---------
 Timer interrupt |This interrupt occurs if some programs trigger a 'timer interrupt' for example a data-logging application that has to read an input sensor every 1 second.
 Memory fault interrupt | After I/O request is issued to bring in the block of memory. The operating system may perform a process switch to resume execution of another process. The processor encounters a virtual memory address reference for a word that is not in main memory then the process with the memory fault is placed in a Blocked state.
IO interrupt |This IO interrupt occurs if any IO devices such as the keyboard and mouse demand attention.
           
##3.7. What is the difference between a mode switch and a process switch?
Answer: 
Process switch: A process switch (AKA context switch) is what it is called when the processor switches from one thread/process to another. This causes the contents of the cpu registers and instruction pointer to be saved. The registers and instruction pointer for the new task will then be loaded into the processor and execution of the new process will start/resume. 

Mode switch: A mode switch is what is referred to when the cpu changes privilege levels. The kernel works at a higher privilege than a standard user task. In order for the user task to access things controlled by the kernel, it is necessary for a mode switch to occur.


