**My Gentoo / Linux Stuff**

  - Portage configs for a Gentoo x86-64 Stable efi AMDGPU OpenRC Gnome X11 Pipewire system, built with optimizations for speed and top quality gaming performance in mind... 
 
 /etc/portage files included in this repo, could serve as drop-in replacements for others with similar hardware setups. One helpful use case scenario could be. Once initially mounted and chrooted into a new Gentoo install environment, download this repo as a zip=[https://github.com/mrturcot/Gentoo-Stuff/archive/refs/heads/master.zip] using wget (we dont have git rn). Then extract & edit/use/rm any configs you choose to get you going way ahead of schedule :)

**User needs to set**  
 
  - CPU_FLAGS_X86 in package.use/00cpu-flags (see https://wiki.gentoo.org/wiki/CPU_FLAGS_X86)  

  - COMMON_FLAGS="-march=?" option in make.conf & portage/env/compiler-* environment (see https://wiki.gentoo.org/wiki/Safe_CFLAGS)  

  - MAKEOPTS="-j?" option in make.conf & portage/env/compiler-* environment (see https://wiki.gentoo.org/wiki/MAKEOPTS)   


Further edit the configs to your liking if you so choose && emerge @everything!  
<sub>kernel not included, however you could possibley use a kernel.bin eg. sys-kernel/
gentoo-kernel-bin (i have not tested this) Moreover, i do provide my kernel .config shared in "/stuff". This is for AMD Ryzen 2700 znver1!. I guess it would work for other with same chip, maybe? Untested... </sub>  

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
