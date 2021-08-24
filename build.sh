#!/bin/sh

_cwd=$(cd "$(dirname "$0")"; pwd)
_variant=${1:-openvz-centos-6.10}
_provider=${2:-qemu}

if [ -f "${_cwd}/.env.sh" ]; then
  . "${_cwd}/.env.sh"
fi

packer build -only="${_provider}" "${_variant}.json"

