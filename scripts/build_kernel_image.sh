#!/bin/bash

modify_kernel_command_line() {
  echo "chromiumos.allow_overlayfs" >> "$1"
}
