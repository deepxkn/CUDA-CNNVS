################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CU_SRCS += \
../dataAugmentation/cuTrasformation.cu \
../dataAugmentation/dataPretreatment.cu 

CU_DEPS += \
./dataAugmentation/cuTrasformation.d \
./dataAugmentation/dataPretreatment.d 

OBJS += \
./dataAugmentation/cuTrasformation.o \
./dataAugmentation/dataPretreatment.o 


# Each subdirectory must supply rules for building sources it contributes
dataAugmentation/%.o: ../dataAugmentation/%.cu
	@echo 'Building file: $<'
	@echo 'Invoking: NVCC Compiler'
	/usr/local/cuda-6.5/bin/nvcc -I/home/zhxfl/NVIDIA_CUDA-6.5_Samples/common/inc/ -G -g -O0 -gencode arch=compute_50,code=sm_50  -odir "dataAugmentation" -M -o "$(@:%.o=%.d)" "$<"
	/usr/local/cuda-6.5/bin/nvcc -I/home/zhxfl/NVIDIA_CUDA-6.5_Samples/common/inc/ -G -g -O0 --compile --relocatable-device-code=false -gencode arch=compute_50,code=compute_50 -gencode arch=compute_50,code=sm_50  -x cu -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


