# sw3Dconv
High-Performance 3D convolution on the Latest Generation Sunway Processor

The efficient assembly kernel is realized by automatic generation, which is different for various 3D convolutional sizes.
So we list some executable files for 3D convolution to prove the performance.

The executable file name, sunch as ***32_32_32_64_64*** represents the situation where
***D=32, H=32, W=32, Ci=64, Co=64, bH=32, bCo=64*** in our paper.

One can directly run the shell file ***test.sh*** to execute all the tests cases, 
the output information (performance) is printed in a log file ***perf.log***
