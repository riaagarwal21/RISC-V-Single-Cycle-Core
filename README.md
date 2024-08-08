# RISC-V-Single-Cycle-Core
The RISC-V Single Cycle Core project designs a basic processor in Verilog executing each instruction in one clock cycle. It features instruction fetch, decode, execute, memory access, and write-back stages, implementing a subset of the RISC-V ISA, aiding in understanding processor design and RISC-V architecture.

A RISC-V single cycle core is a type of processor design where each instruction is executed within a single clock cycle, based on the RISC-V instruction set architecture (ISA). . In a single cycle core, the entire process of fetching, decoding, executing, accessing memory, and writing back the results of an instruction happens in one cycle. One of the main advantages of a single cycle core is its simplicity, which makes it easier to understand and implement. This simplicity is particularly beneficial for educational purposes and initial prototyping.

The core components of a single cycle processor include the instruction fetch unit, which retrieves the next instruction from memory, and the instruction decode unit, which decodes the instruction to determine the operation and operands. The execute unit performs the specified operation, which may involve arithmetic and logic functions, address calculations, or branching. For load and store instructions, the memory access unit reads or writes data from/to memory using the calculated address. The write-back unit writes the execution result back to the register file. The control path generates signals to coordinate data flow and operations, ensuring proper instruction execution per the RISC-V ISA. The data path includes components that handle data processing and movement, such as the ALU, register file, and memory interfaces.

## Usage

To get a local copy of the project, you can clone the repository using the below mentioned command:

      git clone https://github.com/riaagarwal21/RISC-V-Single-Cycle-Core
