# not work now, since libretro citra requires opengl 3.3, ba only provide opengles for rpi.
cmake -B build -G Ninja \
  -DENABLE_LIBRETRO=ON \
  -DENABLE_WEB_SERVICE=OFF \
  -DENABLE_SDL2=OFF \
  -DENABLE_QT=OFF \
  -DCMAKE_BUILD_TYPE=Release \
  -DTHREADS_PTHREAD_ARG=OFF
