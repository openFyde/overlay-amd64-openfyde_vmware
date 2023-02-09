#!/bin/bash
skip_blacklist_check=1
skip_test_image_content=1
FLAGS_boot_args="${FLAGS_boot_args} earlyprintk=ttyS0,115200"
FLAGS_enable_serial="ttyS0,115200"
