FROM kaixhin/cuda-torch:7.5
WORKDIR /usr/src/reed2016
COPY . .
RUN luarocks install https://raw.githubusercontent.com/szym/display/master/display-scm-0.rockspec
