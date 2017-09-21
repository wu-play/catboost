#pragma once
#include <catboost/cuda/cuda_lib/kernel/kernel.cuh>


namespace NKernel {

    void PoissonRand(ui64* seeds, uint size, const float* alphas, int* result, TCudaStream stream);

    void GaussianRand(ui64* seeds, uint size, float* result, TCudaStream stream);

    void UniformRand(ui64* seeds, uint size, float* result, TCudaStream stream);

    void GammaRand(ui64* seeds, const float* alphas, const float* scale,
                   uint size, float* result, TCudaStream stream);

    void BetaRand(ui64* seeds, const float* alphas, const float* betas,
                  uint size, float* result, TCudaStream stream);
}
