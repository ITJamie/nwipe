#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

export NWIPE_CI_HOTPLUG_CYCLES="${NWIPE_CI_HOTPLUG_CYCLES:-2}"
exec "${SCRIPT_DIR}/hotplug_qemu_multi.sh" "$@"
