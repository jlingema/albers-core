platform='unknown'
sw_afs=0
unamestr=`uname`

export ALBERS=$PWD/install

if [[ "$unamestr" == 'Linux' ]]; then
    platform='Linux'
    if [[ -d /afs/cern.ch/sw/lcg ]] && [[ `dnsdomainname` = 'cern.ch' ]] ; then
	#should check domain to make sure we're at CERN
	#or is this software available somewhere in Lyon?
	sw_afs=1
        export PATH=/afs/cern.ch/sw/lcg/contrib/CMake/2.8.9/Linux-i386/bin:${PATH}
	source /afs/cern.ch/sw/lcg/contrib/gcc/4.9.3/x86_64-slc6/setup.sh
	source /afs/cern.ch/sw/lcg/releases/ROOT/6.04.06-458fa/x86_64-slc6-gcc49-opt/bin/thisroot.sh
	echo cmake and root taken from /afs/cern.ch/sw/lcg
    fi
    export LD_LIBRARY_PATH=$ALBERS/lib:$LD_LIBRARY_PATH
elif [[ "$unamestr" == 'Darwin' ]]; then
    platform='Darwin'
    export DYLD_LIBRARY_PATH=$ALBERS/lib:$DYLD_LIBRARY_PATH
fi
echo platform detected: $platform
export PYTHONPATH=$ALBERS/python:$PYTHONPATH
export PATH=$ALBERS/bin:$PATH

