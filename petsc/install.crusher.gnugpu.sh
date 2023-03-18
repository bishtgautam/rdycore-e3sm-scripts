#!/bin/sh

source ../modules/modules.crusher.gnugpu

./configure \
--with-cc=/opt/cray/pe/craype/2.7.16/bin/cc \
--with-cxx=/opt/cray/pe/craype/2.7.16/bin/CC \
--with-fc=/opt/cray/pe/craype/2.7.16/bin/ftn \
--with-fortran-bindings=1 \
--with-mpiexec="srun -g 8 --smpiargs=-gpu " \
--with-batch=0 \
--download-kokkos \
--download-kokkos-kernels \
--with-kokkos-kernels-tpl=0 \
--with-make-np=8 \
--with-netcdf-dir=/opt/cray/pe/netcdf-hdf5parallel/4.8.1.1/gnu/9.1 \
--with-pnetcdf-dir=/opt/cray/pe/parallel-netcdf/1.12.1.7/gnu/9.1 \
--with-hdf5-dir=/opt/cray/pe/hdf5-parallel/1.12.1.1/gnu/9.1 \
--with-hip=1 \
--with-hipc=/opt/rocm-5.4.0/bin/hipcc \
--download-parmetis \
--download-metis \
--download-zlib \
--download-scalapack \
--download-sowing \
--download-triangle \
--download-exodusii \
--download-libceed \
--with-debugging=1 \
PETSC_ARCH=crusher-gpu-debug-gcc-11-2-0