# SPDX-FileCopyrightText: 2022 Alec Delaney, written for Adafruit Industries
#
# SPDX-License-Identifier: MIT

while read filename; do
    if [ "$1" == "install" ]; then
        echo "Copying $filename to cirpy_lib_pkg_clarification/"
        ln  ./submodules/adabot/tools/$filename ./cirpy_lib_pkg_clarification/$filename;
    elif [ "$1" == "clean" ]; then
        echo "Deleting $filename in cirpy_lib_pkg_clarification/"
        rm ./cirpy_lib_pkg_clarification/$filename;
    fi
done < tools_reqs.txt
