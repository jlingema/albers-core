albers-core
===========

WARNING: If you have set up your environment for FCCSW, this package will not compile. Log out and log in again to clean up your environment. 

core albers library 

This software is based on ROOT and CMake, that are preinstalled on lxplus.
If you're not on lxplus, you need to install ROOT and CMake. 

Before compiling or using this package, set up your environment:

    source ./init.sh

Compile:

    mkdir build
    cd build
    cmake -DCMAKE_INSTALL_PREFIX=../install ..
    make -j 4 install
    cd ..

Test:

    ./install/bin/albers-write
    ./install/bin/albers-read
    
