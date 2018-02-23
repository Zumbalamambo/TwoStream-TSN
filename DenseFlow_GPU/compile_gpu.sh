g++ denseFlow_gpu.cpp -o denseFlow_gpu `pkg-config --cflags --libs opencv` -lopencv_cudaoptflow -lopencv_cudaarithm
