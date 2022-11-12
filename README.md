**My Gentoo / Linux Stuff**

  - Portage configs for a Gentoo x86-64 Stable efi AMDGPU OpenRC Gnome X11 Pipewire system, built with optimizations for speed and top quality gaming performance in mind... 
 
 /etc/portage files included in this repo, could serve as drop-in replacements for other similar setups. One helpful use case scenario would be downloading this repo as a zip=[https://github.com/mrturcot/Gentoo-Stuff/archive/refs/heads/master.zip] using wget once initially mounted and chrooted into a new Gentoo install. Extract the repo then edit/use/rm any configs as deemed needed to get you going way ahead of schedule :)

**User needs to set**  
 
  - CPU_FLAGS_X86 in package.use/00cpu-flags (see https://wiki.gentoo.org/wiki/CPU_FLAGS_X86)  

  - COMMON_FLAGS="-march=?" option in make.conf & portage/env/compiler-* environment (see https://wiki.gentoo.org/wiki/Safe_CFLAGS)  

  - MAKEOPTS="-j?" option in make.conf & portage/env/compiler-* environment (see https://wiki.gentoo.org/wiki/MAKEOPTS)   


Further edit the configs to your liking if you so choose && emerge @everything!  
<sub>kernel not included</sub>  

```
 System GCC-LTO with Graphite  
 System Profile-guided optimizations  
 LLVM_TARGETS="AArch64 AMDGPU"  
 Per package environment setup for:  
 Clang & Clang-LTO  
 GCC-LTO, GCC Fallback & GCC-NO-LTO Fallback  
```

**Notice**
   - In order to maintain high stability and compatibility across toolchains and libraries etc... it is HIGHLY recommeded to rebuild @system & @world after most if not all of these changes...  (See this article https://wiki.gentoo.org/wiki/Upgrading_GCC#Rebuilding_everything)

------------------------------
 
 - mpv: my mpv.conf with a few nice scripts gathered eg. "right click context menu"  

 - scripts: git-repo check/pull/build & auto full gentoo upgrade & other handy things  

 - stuff: random linux config files  

 - rip: :( *we dont talk about that*  
