**My Gentoo / Linux Stuff**

  - Gentoox86-64 Stable AMDGPU (vaapi) OpenRC Gnome X11 Pipewire - Portage configs
 
 /etc/portage files inculded in this repo, could possibly serve as drop-in replacements for other similar setups.  

**User needs to set**  
 
 **CPU_FLAGS_X86** in "/portage/package.use/00cpu-flags" (see https://wiki.gentoo.org/wiki/CPU_FLAGS_X86) 
 **COMMON_FLAGS="-march=?"** option (see https://wiki.gentoo.org/wiki/Safe_CFLAGS)  
 **MAKEOPTS="-j?"** option (see https://wiki.gentoo.org/wiki/MAKEOPTS)   

Further edit the configs to your liking if you so choose && emerge @everything!  

<sub>kernel not included</sub>  

```
 System-wide GCC Graphite & Profile-guided optimization  
 LLVM_TARGETS="AArch64 AMDGPU"  
 Per Package Enviroment Setup  
 Clang & Clang-LTO  
 GCC-LTO  
 GCC Fallback  
 GCC-NO-LTO Fallback  
```

**Notice**
   - To maintain high stability and compatibility across toolchains and libraries etc... it is HIGHLY recommeded to rebuild @system & @world after most if not all of these changes...  (See this article https://wiki.gentoo.org/wiki/Upgrading_GCC#Rebuilding_everything)

------------------------------
 
 - mpv: my mpv.conf with a few nice scripts gathered eg. "right click context menu"
 - rip: :( *we dont talk about that*
 - scripts: git-repo check/pull/build & auto full gentoo upgrade & other handy things 
 - stuff: random linux config files
