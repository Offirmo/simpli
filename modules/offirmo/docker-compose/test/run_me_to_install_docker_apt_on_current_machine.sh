#! /bin/bash

## Test of SIMPLI provisionning module

source ../../../../test/test_common.sh "docker-compose module provisionning - manual mode"

## this func will be called by simpli as root
install_apt_sources()
{
	DO_NOTHING=1
}

## load simpli
export SIMPLI_SKIP_APT_UPDATE=1
export SIMPLI_SKIP_APT_UPGRADE=1
source "${SIMPLI_DIR}/bin/index.sh"
OSL_EXIT_abort_execution_if_bad_retcode $?

## provision our stuff
require offirmo/docker-compose
OSL_EXIT_abort_execution_if_bad_retcode $?

## display a summary (user-mode only)
print_provisionning_summary

echo
