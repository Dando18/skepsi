/**
 * @file tanh_internal_device.cu
 * @author Daniel Nichols
 * @version 0.0.1
 * @date 2019-02-23
 * 
 * @copyright Copyright (c) 2019
 */
 #include "compute/tanh_internal.h"

 namespace skepsi {
 namespace internal {


template <typename T>
__global__ void kernel_tanh_full_device(unsigned int size, T *x) {
    unsigned int idx = blockIdx.x * blockDim.x + threadIdx.x;
	unsigned int stride = blockDim.x * gridDim.x;

	for (unsigned int i = idx; i < size; i += stride) {
        x[i] = tanh(x[i]);
	}
}

template <typename T>
void tanh_full_device(tensor<T> *x) {
    kernel_tanh_full_device <<<x->get_size(), 1>>> (x->get_size(), x->get_ptr());
}
template void tanh_full_device(tensor<int> *x);
template void tanh_full_device(tensor<float> *x);
template void tanh_full_device(tensor<double> *x);

 }   // namespace internal
 }   // namespace skepsi