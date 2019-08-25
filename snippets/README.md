Code snippets to allow easy inspection and comparison of generated machine code

The intention of the code in this directory is not to be run, but to be compiled into LLVM
and assembly code for visual inspection and comparison.

recompile.ps1 will compile the code and overwrite the checked-in files snippets.ll and snippets.s
'git diff' can then be used to compare about the previously generated code.

So far, only the x86_64 architecture is targetted. Other architectures may be added in the future.
