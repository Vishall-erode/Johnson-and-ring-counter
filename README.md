# Johnson-and-ring-counter
Johnson and Ring Counter Simulations
This repository contains the implementation and simulation of Johnson Counter and Ring Counter, two important types of sequential logic circuits used in digital electronics. These counters are widely used for sequence generation, clock division, and digital system design.
Johnson Counter
A Johnson Counter, also known as a twisted ring counter, is a shift register where the complement of the last flip-flop output is fed back to the input of the first flip-flop. It cycles through a fixed sequence of states, doubling the number of states compared to a ring counter with the same number of flip-flops.

Ring Counter
A Ring Counter is a circular shift register where the output of the last flip-flop is fed back to the input of the first flip-flop. It cycles through a sequence of states equal to the number of flip-flops.
Design Details
Johnson Counter
States: Cycles through 2n unique states for an n-bit counter.
Feedback Logic: Inverts the last bit and feeds it back to the first flip-flop.
Ring Counter
States: Cycles through n unique states for an n-bit counter.
Feedback Logic: Directly feeds the last bit to the first flip-flop.
Common Functionalities
Clock-Driven: Both counters operate synchronously with the clock signal.
Reset: Resets the counter to its initial state.
