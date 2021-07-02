# This repository is used to show where zig translation from C fails

Please look into `capabilities/src/zig-cache/o/1500ada649b2a8dfb691e673fcdc122b/cimport.zig` for an example of zig translation of C's #includes.  

This cimport.zig is generated from @cInclude() which is in `capabilities/src/zig_helper.zig`.  

The build directory is also needed because these @cInclude() files depend on generated files in the build directory e.g. musllibc.  
