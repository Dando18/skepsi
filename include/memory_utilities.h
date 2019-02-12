/**
 * @file memory_utilities.h
 * @author Daniel Nichols
 * @version 0.1
 * @date 2019-02-12
 * 
 * @copyright Copyright (c) 2019
 */
#pragma once

#ifdef _HAS_CUDA_

namespace skepsi {

/**	gets the device array element at idx.
	@param arr the device array
	@param idx the index to retrieve the array from
	@return T the value of arr[idx] on the device
*/
template <typename T>
T get_device_array_element(T *arr, unsigned int idx);


/** Sets an element on a device.
	@param arr device array
	@param idx index to set
	@param val value to set arr[idx]
*/
template <typename T>
void set_device_array_element(T *arr, unsigned int idx, T val);

}; // namespace skepsi

#endif