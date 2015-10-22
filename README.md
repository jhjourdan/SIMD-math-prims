# SIMD-math-prims

Vectorizable, approximated, portable implementations of some mathematical
functions.

If you are willing to pay a reasonnable loss in precision when computing
mathematical functions, you may want to use these implementations. When
compiled with gcc vectorization on recent processors, the functions in
simd_math_prims.h enable speedups from 20x to 40x. Clang does also a good
job, and not-so-recent processors provide also large speedups.

In order to take advantage of this, you may use "-O3 -march=native" options
of gcc or clang.

# Benchmarks

The makefile can be used to build an example executable that can be used to
test the precision and performance of these functions. Here is the output
on my computer:

```
Sin functions:
--------------
Comparing the behavior of sinapprox against sinf, in the interval [-3.14159, 3.14159]:
Bias:                  7.088636e-08
Mean absolute error:   3.677623e-06
RMS error:             4.105857e-06
Min difference:         -5.900860e-06
Max difference:                 5.930662e-06

Benchmarking sinf...    213.3M/s
Benchmarking sinapprox...    6238.5M/s


Cos functions:
--------------
Comparing the behavior of cosapprox against cosf, in the interval [-3.14159, 3.14159]:
Bias:                  -1.549725e-06
Mean absolute error:   2.618475e-05
RMS error:             2.886462e-05
Min difference:         -4.026294e-05
Max difference:                 4.023314e-05

Benchmarking cosf...    226.7M/s
Benchmarking cosapprox...    7380.7M/s


Log functions:
--------------
Comparing the behavior of logapprox against logf, in the interval [1e-10, 10]:
Bias:                  3.214468e-07
Mean absolute error:   5.617922e-06
RMS error:             6.237142e-06
Min difference:         -9.059906e-06
Max difference:                 8.940697e-06

Comparing the behavior of icsi_log against logf, in the interval [1e-10, 10]:
Bias:                  6.748079e-06
Mean absolute error:   1.771525e-04
RMS error:             2.089661e-04
Min difference:         -4.338026e-04
Max difference:                 4.688501e-04

Benchmarking logf...    115.2M/s
Benchmarking icsi_log...    621.7M/s
Benchmarking logapprox...    4112.9M/s


Exp functions:
--------------
Comparing the behavior of expapprox against expf, in the interval [-10, 10]:
Relative bias:                      5.809334e-08
Mean relative error:                    2.720899e-06
RMS relative error:                             3.322937e-06
Min relative difference:                        -8.573404e-06
Max relative difference:                        8.328092e-06

Benchmarking expf...    111.3M/s
Benchmarking expapprox...    2366.8M/s
```
