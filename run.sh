#!/bin/bash
ssh m2kr4r-server "gnatmake m2kr4r.adb && ./m2kr4r && rm -f m2kr4r.ali m2kr4r.o"
