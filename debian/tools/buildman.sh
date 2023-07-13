#!/bin/bash

cd ../../

quilt push -a

debian/rules override_dh_auto_build
debian/rules override_dh_auto_install
debian/rules build-manpages
debian/rules override_dh_auto_clean

quilt pop -a

