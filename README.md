**My Gentoo / Linux Stuff**

  - Portage configs for a Gentoo x86-64 Stable efi AMDGPU OpenRC Gnome X11 Pipewire system, built with optimizations for speed and top quality gaming performance in mind... 
 
 /etc/portage files included in this repo, could serve as drop-in replacements for others with similar hardware setups. One helpful use case scenario could be. Once initially mounted and chrooted into a new Gentoo install environment, download this repo as a zip=[https://github.com/mrturcot/Gentoo-Stuff/archive/refs/heads/master.zip] using wget (we dont have git rn). Then extract & edit/use/rm any configs you choose to get you going way ahead of schedule :)

**User needs to set**  
 
  - CPU_FLAGS_X86 in package.use/00cpu-flags (see https://wiki.gentoo.org/wiki/CPU_FLAGS_X86)  

  - COMMON_FLAGS="-march=?" option in make.conf & portage/env/compiler-* environment (see https://wiki.gentoo.org/wiki/Safe_CFLAGS)  

  - MAKEOPTS="-j?" option in make.conf & portage/env/compiler-* environment (see https://wiki.gentoo.org/wiki/MAKEOPTS)   


Further edit the configs to your liking if you so choose && emerge @everything!  
<sub>kernel not included, however you could possibley use a kernel.bin [LAME!!!] eg. sys-kernel/
gentoo-kernel-bin</sub>   

(i have not tested this) Moreover, i do provide my .config for current "6.0.8-gentoo-sources" super trimmed down kernel (10MB) shared in "/stuff". This is for AMD Ryzen 2700 x470 znver1 & AMDGPU (Arctic Islands - POLARIS10/11/12, VEGAM). I guess it would work for other with same chipset [*not* as a drop in but maybe a start/base?], (running "make menuconfig [https://wiki.gentoo.org/wiki/Kernel/Configuration#Configuration]" in the activily set gentoo kernel sources "/usr/src/linux" would be 100% manditory as other hardware specifications would need to be set for your setup...) Untested...  

```
mrturcot  on GentooRig /home/mrturcot/github/gentoo-stuff on   master [!1 ]
[ 04:10:05 PM ] ➜ l /boot
Permissions Size User Date Modified Name
.rwxr-xr-x  144k root  7 Nov 03:37  config-6.0.7-gentoo
.rwxr-xr-x  144k root 10 Nov 15:06  config-6.0.8-gentoo
.rwxr-xr-x  5.6M root  7 Nov 03:37  System.map-6.0.7-gentoo
.rwxr-xr-x  5.6M root 10 Nov 15:06  System.map-6.0.8-gentoo
.rwxr-xr-x   10M root  7 Nov 03:37  vmlinuz-6.0.7-gentoo
.rwxr-xr-x   10M root 10 Nov 15:06  vmlinuz-6.0.8-gentoo

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
