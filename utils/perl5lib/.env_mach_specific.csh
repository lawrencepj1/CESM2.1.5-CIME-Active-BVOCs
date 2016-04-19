#!/usr/bin/env csh -f
#===============================================================================
# Automatically generated module settings for yellowstone
# DO NOT EDIT THIS FILE DIRECTLY!  Please edit env_mach_specific.xml
# in your CASEROOT. This file is overwritten every time modules are loaded!
#===============================================================================

source /glade/apps/opt/lmod/lmod/init/csh
module purge
module load ncarenv/1.0
module load ncarbinlibs/1.1
module load perlmods
module load gmake/4.1
module load python
module load all-python-libs
if ( $COMPILER == "intel" ) then
	module load intel/15.0.3
	module load mkl/11.1.2
	module load trilinos/11.10.2
	module load esmf
endif
if ( $COMPILER == "intel" && $MPILIB != "mpi-serial" && $DEBUG == "true" ) then
	module load esmf-6.3.0rp1-defio-mpi-g
endif
if ( $COMPILER == "intel" && $MPILIB != "mpi-serial" && $DEBUG == "false" ) then
	module load esmf-6.3.0rp1-defio-mpi-O
endif
if ( $COMPILER == "intel" && $MPILIB == "mpi-serial" && $DEBUG == "true" ) then
	module load esmf-6.3.0rp1-defio-uni-g
endif
if ( $COMPILER == "intel" && $MPILIB == "mpi-serial" && $DEBUG == "false" ) then
	module load  esmf-6.3.0rp1-defio-uni-O
endif
if ( $COMPILER == "pgi" ) then
	module load pgi/15.1
endif
if ( $COMPILER == "gnu" ) then
	module load gnu/5.1.0
endif
if ( $MPILIB == "mpi-serial" ) then
	module load netcdf/4.3.3.1
endif
if ( $MPILIB != "mpi-serial" ) then
	module load netcdf-mpi/4.3.3.1
	module load pnetcdf/1.6.0
endif
module load ncarcompilers/1.0
module load cmake/2.8.10.2
setenv OMP_STACKSIZE 256M
setenv MP_LABELIO yes
setenv MP_INFOLEVEL 2
setenv MP_SHARED_MEMORY yes
setenv MP_EUILIB us
setenv MP_MPILIB $MPILIB
setenv MP_STDOUTMODE unordered
setenv MP_RC_USE_LMC yes
limit stacksize unlimited
limit coredumpsize unlimited
