#include <iostream>

int main(int argc, char **argv) {
  int deviceCount;
  cudaGetDeviceCount(&deviceCount);
  std::cerr << "Getting GPU Data." << std::endl;
  for (int dev = 0; dev < deviceCount; dev++) {
    cudaDeviceProp deviceProp;
    cudaGetDeviceProperties(&deviceProp, dev);
    if (dev == 0) {
      if (deviceProp.major == 9999 && deviceProp.minor == 9999) {
        std::cerr << "No CUDA GPU has been detected" << std::endl;
        return -1;
      } else if (deviceCount == 1) {
        std::cerr << "There is 1 device supporting CUDA" << std::endl;
      } else {
        std::cerr << "There are " << deviceCount << " devices supporting CUDA"
                  << std::endl;
      }
    }
    std::cerr << "Device " << dev 
              << " name: " << deviceProp.name
              << std::endl;
    std::cerr << " Computational Capabilities: " 
              << "FIXME" //@@ Print appropriate `deviceProp` field
              << "."
              << "FIXME" //@@ Print appropriate `deviceProp` field
              << std::endl;
    std::cerr << " Maximum global memory size: " 
              << "FIXME" //@@ Print appropriate `deviceProp` field
              << std::endl;
    std::cerr << " Maximum constant memory size: " 
              << "FIXME" //@@ Print appropriate `deviceProp` field
              << std::endl;
    std::cerr << " Maximum shared memory size per block: "
              << "FIXME" //@@ Print appropriate `deviceProp` field
              << std::endl;
    std::cerr << " Maximum block dimensions: " 
              << "FIXME" //@@ Print appropriate `deviceProp` field
              << " x " << "FIXME" //@@ Print appropriate `deviceProp` field
              << " x " << "FIXME" //@@ Print appropriate `deviceProp` field
              << std::endl;
    std::cerr << " Maximum grid dimensions: " 
              << "FIXME" //@@ Print appropriate `deviceProp` field
              << " x " << "FIXME" //@@ Print appropriate `deviceProp` field
              << " x " << "FIXME" //@@ Print appropriate `deviceProp` field
              << std::endl;
    std::cerr << " Warp size: " 
              << "FIXME" //@@ Print appropriate `deviceProp` field
              << std::endl;
  }
  std::cerr << "End of GPU data gathering." << std::endl;
  return 0;
}
