#ifndef __UTIL_H__
#define __UTIL_H__

#include "cuMatrix.h"
#include "opencv2/opencv.hpp"
#include "opencv2/core/core_c.h"
#include "opencv2/highgui/highgui.hpp"

#define MAX_THREADS 1024

// non-linearity
#define NL_SIGMOID 0
#define NL_TANH 1
#define NL_RELU 2

void showImg(cuMatrix<float>* x, float scala);
void DebugPrintf(cuMatrix<float>*x);
void DebugPrintf(float* data, int len, int dim);
void LOG(char* str, char* file);
int  getCV_64();
void createGaussian(float* gaussian, float dElasticSigma1, float dElasticSigma2,
	int rows, int cols, int channels, float epsilon);

#define  cuAssert( X ) if ( !(X) ) {printf("tid %d: FILE=%s, LINE=%d\n", threadIdx.x, __FILE__, __LINE__); return; }
#define  Assert( X )   if ( !(X) ) {printf("FILE=%s, LINE=%d\n", __FILE__, __LINE__); return; }

void dropDelta(cuMatrix<float>* M, float cuDropProb);
void initMatrix(cuMatrix<float>* M, float iniw);

void PCAwrite(cv::FileStorage& fs, cv::PCA& pca);
void PCAread(const cv::FileNode& fs, cv::PCA& pca);
#endif
