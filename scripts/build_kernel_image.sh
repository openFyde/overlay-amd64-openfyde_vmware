#!/bin/bash

modify_kernel_command_line() {
  echo "chromiumos.allow_overlayfs" >> "$1"
  # VMware's TSC-deadline timer emulation wedges all vCPUs in
  # hrtimer_interrupt when the guest TSC crosses 2^39 ticks (~4min after
  # every reset), ending in a softlockup panic + reset loop. Use LAPIC
  # one-shot mode instead.
  echo "lapic=notscdeadline" >> "$1"
}
