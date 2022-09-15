#!/bin/bash

PROJ_NAME="sky130_sonos_array"
echo "Setting up ${PROJ_NAME}..."

install_dir=/opt/z2a
caravel_dir_name=$PROJ_NAME

if [ -z "$1" ]; then
	export PDK=sky130A
else
	export PDK="$1"
fi
echo "PDK: $PDK"

export PDK_ROOT=$install_dir/pdk
export OPENLANE_ROOT=$install_dir/openlane
export OPENLANE_TAG=2022.07.02_01.38.08
export OPENLANE_IMAGE_NAME=efabless/openlane:$OPENLANE_TAG
export PDKPATH=$PDK_ROOT/$PDK

export MGMT_AREA_ROOT=$install_dir/$caravel_dir_name/mgmt_core_wrapper
export MCW_ROot=$MANAGEMENT_AREA_ROOT
export DESIGNS=$install_dir/$caravel_dir_name
export TARGET_PATH=$DESIGNS
export CARAVEL_ROOT=$DESIGNS/caravel 
export MCW_ROOT=$DESIGNS/mgmt_core_wrapper 
export CORE_VERILOG_PATH=$MCW_ROOT/verilog

# netgen
export NETGEN_HOME=$install_dir/eda-netgen/glnxa64

export PATH=$PATH:$install_dir/openlane_summary:$install_dir/GDS3D/linux:$NETGEN_HOME/bin

echo "Setting up Python..."
if [ "$1" = "python" ]; then
	echo "oss-cad-suite Python requested."
	source $install_dir/oss-cad-suite/environment
	export VIRTUAL_ENV="z2a ${VIRTUAL_ENV}"
	echo "oss-cad-suite Python activated. Run \`deactivate' to deactivate."
else
	echo "Python not requested. Using system Python and installing PATH."
	export VIRTUAL_ENV="z2a"
	if [ -n "${ZSH_VERSION-}" ] ; then
    	autoload -U colors && colors
    	PS1="%{$fg[magenta]%}(${VIRTUAL_ENV})%{$reset_color%} ${PS1-}"
	else
    	PS1="\[\033[1;35m\]\342\246\227${VIRTUAL_ENV}\342\246\230\[\033[0m\] ${PS1-}"
	fi
	export PATH=$PATH:$install_dir/oss-cad-suite/bin
fi

echo "Setting up riscv64-unknown-elf-gcc toolchain..."
export PATH=$PATH:$install_dir/riscv64-unknown-elf-gcc-8.3.0-2020.04.1-x86_64-linux-ubuntu14/bin
export GCC_PATH=$install_dir/riscv64-unknown-elf-gcc-8.3.0-2020.04.1-x86_64-linux-ubuntu14/bin/ 
export GCC_PREFIX=riscv64-unknown-elf 

echo "Finished."

