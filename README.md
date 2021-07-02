# This repository is used to show where zig translation from C fails

Please look into `capabilities/src/zig-cache/o/1500ada649b2a8dfb691e673fcdc122b/cimport.zig` for an example of zig translation of C's #includes.  

This cimport.zig is generated from @cInclude() which is in `capabilities/src/zig_helper.zig`.  

The build directory is also needed because these @cInclude() files depend on generated files in the build directory e.g. musllibc.  

There are 3 sets of errors in the `cimport.zig` file, they can be found by searching for `//` comments in cimport.zig: line 198-214, line 3845-3858, line 5879-6090.
