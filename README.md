# -Compiler-Implemented-Fault-Tolerance-for-Faults-Originating-in-Hardware

Objectives

Implement a code transformation that improves system reliability through code replication.
Combine static and dynamic analysis to prove properties of code at runtime.
Gain experience generating phi-nodes and ensuring the consistency of SSA-form.

Description
Soft errors are transient errors (temporary hardware errors) that arise in hardware due to cosmic ray strikes, device variation, thermal fluctuation, or other phenomena that may result in a random bit flip. Such random bit flips can lead to incorrect calculations, outputs, or other observable program failures.  While soft errors have been rare in the past, as transistors continue to scale down, soft error rates are expected to increase, compromising the reliability of computation. Soft errors are already happening in the cloud at rates observable to the hyperscalers.
 
One way to mitigate faults is by replicating code. In the same way that two engines make an airplane more reliable and less likely to crash should one of the engines fail, we can use replication of code to provide greater reliability. The compiler is an ideal layer at which to deploy code replication since the compiler can do it in an automated manner. This reflects a general trend in compiler research and compiler use in the industry for using compilers to perform automated code transformations for a variety of purposes beyond just performance.

In this project, you will implement an algorithm that provides fault tolerance for soft errors by replicating code and protecting control flow. To prevent soft errors from corrupting data, we can replicate instructions in the program and compare intermediate results to make sure they are correct.  If a discrepancy is detected, we presume a soft error is to blame and the program can be gracefully terminated or it can recover to a safe state.  Since recovery requires more sophisticated transformations, we will only focus on detecting the errors and terminating the program.
 
There are two kinds of errors we want to catch:
We want to detect if the computation of any integer or pointer value is incorrect.
We want to guarantee that control flow occurs properly.

The implementation involves techniques to replicate code segments, compare intermediate results, and ensure consistent control flow. Additionally, static and dynamic analysis has been employed to verify the correctness of computations at runtime. The project aims to enhance system reliability in the face of soft errors, contributing to the growing field of fault-tolerant computing.




