@echo off

echo Gathering version information

echo ###Installed Versions### > versions.txt
echo generated on: >> versions.txt

date /t >> versions.txt

echo ###GCC### >> versions.txt
bin\tricore-gcc --version >> versions.txt

echo ###c++### >> versions.txt
bin\tricore-c++ --version >> versions.txt

echo ###g++### >> versions.txt
bin\tricore-g++ --version >> versions.txt

echo ###Assembler### >> versions.txt
bin\tricore-as --version >> versions.txt

echo ###Linker### >> versions.txt
bin\tricore-ld --version >> versions.txt

echo ###C-Compiler### >> versions.txt
libexec\gcc\tricore\3.4.5\cc1 --version >> versions.txt 2>&1 

echo ###C++-Compiler### >> versions.txt
libexec\gcc\tricore\3.4.5\cc1plus --version >> versions.txt 2>&1 

echo ###gcov### >> versions.txt
bin\tricore-gcov --version >> versions.txt

echo ###c++filt### >> versions.txt
bin\tricore-c++filt --version >> versions.txt

echo ###addr2line### >> versions.txt
bin\tricore-addr2line --version >> versions.txt

echo ###ar### >> versions.txt
bin\tricore-ar --version >> versions.txt

echo ###nm### >> versions.txt
bin\tricore-nm --version >> versions.txt

echo ###objcopy### >> versions.txt
bin\tricore-objcopy --version >> versions.txt

echo ###objdump### >> versions.txt
bin\tricore-objdump --version >> versions.txt

echo ###ranlib### >> versions.txt
bin\tricore-ranlib --version >> versions.txt

echo ###size### >> versions.txt
bin\tricore-size --version >> versions.txt

echo ###strings### >> versions.txt
bin\tricore-strings --version >> versions.txt

echo ###strip### >> versions.txt
bin\tricore-strip --version >> versions.txt

echo ###Make### >> versions.txt
bin\make --version >> versions.txt

echo ###lsyms### >> versions.txt
bin\tricore-lsyms --version >> versions.txt

echo ###Vared### >> versions.txt
bin\tricore-vared --version >> versions.txt

echo ###Jtagsrv### >> versions.txt
bin\tricore-jtagsrv --version >> versions.txt

echo ###Specsfile### >> versions.txt
bin\tricore-gcc -dumpspecs >> versions.txt

echo ###Search-dirs### >> versions.txt
bin\tricore-gcc -print-search-dirs >> versions.txt

echo ###Environment### >> versions.txt
set >> versions.txt

echo ###toc of the installdir### >> versions.txt
dir /s >> versions.txt

echo Done


