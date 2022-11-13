**My Gentoo / Linux Stuff**


```
 mrturcot  on GentooRig /home/mrturcot/github/gentoo-stuff on   master took 7s
[ 05:07:34 PM ] ➜ neofetch
         -/oyddmdhs+:.                mrturcot@GentooRig 
     -odNMMMMMMMMNNmhy+-`             ------------------ 
   -yNMMMMMMMMMMMNNNmmdhy+-           OS: Gentoo Linux x86_64 
 `omMMMMMMMMMMMMNmdmmmmddhhy/`        Host: X470 AORUS GAMING 7 WIFI 
 omMMMMMMMMMMMNhhyyyohmdddhhhdo`      Kernel: 6.0.8-gentoo 
.ydMMMMMMMMMMdhs++so/smdddhhhhdm+`    Uptime: 4 hours, 41 mins 
 oyhdmNMMMMMMMNdyooydmddddhhhhyhNd.   Packages: 1062 (emerge) 
  :oyhhdNNMMMMMMMNNNmmdddhhhhhyymMh   Shell: zsh 5.9 
    .:+sydNMMMMMNNNmmmdddhhhhhhmMmy   Resolution: 3840x2160 
       /mMMMMMMNNNmmmdddhhhhhmMNhs:   DE: GNOME 42.5 
    `oNMMMMMMMNNNmmmddddhhdmMNhs+`    WM: Mutter 
  `sNMMMMMMMMNNNmmmdddddmNMmhs/.      WM Theme: Equilux 
 /NMMMMMMMMNNNNmmmdddmNMNdso:`        Theme: Equilux [GTK2/3] 
+MMMMMMMNNNNNmmmmdmNMNdso/-           Icons: Papirus [GTK2/3] 
yMMNNNNNNNmmmmmNNMmhs+/-`             Terminal: kitty 
/hMMNNNNNNNNMNdhs++/-`                CPU: AMD Ryzen 7 2700 (16) @ 3.800GHz 
`/ohdmmddhys+++/:.`                   GPU: AMD ATI Radeon RX 470/480/570/570X/580/580X/590 
  `-//////:--.                        Memory: 829MiB / 32032MiB 
```


  - Portage configs for a Gentoo x86-64 Stable Znver1 AMDGPU OpenRC efi Gnome-Light X11 Pipewire system, built with optimizations for speed and top quality gaming performance in mind... 
 
 /etc/portage files included in this repo, could serve as drop-in replacements for others with similar hardware setups. One helpful use case scenario could be. Once initially mounted and chrooted into a new Gentoo install environment, download this repo as a zip=[https://github.com/mrturcot/Gentoo-Stuff/archive/refs/heads/master.zip] using wget (we dont have git rn). Then extract & edit/use/rm any configs you choose to get you going way ahead of schedule :)

**User needs to set**  
 
  - CPU_FLAGS_X86 in package.use/00cpu-flags (see https://wiki.gentoo.org/wiki/CPU_FLAGS_X86)  

  - COMMON_FLAGS="-march=?" option in make.conf & portage/env/compiler-$(environment) (see https://wiki.gentoo.org/wiki/Safe_CFLAGS)  

  - MAKEOPTS="-j?" option in make.conf & portage/env/compiler-$(environment) (see https://wiki.gentoo.org/wiki/MAKEOPTS)   


Further edit the configs to your liking if you so choose && emerge @everything!  
<sub>kernel not included, however you could possibley use a kernel.bin [*not recommended as its extremely lame*] eg. sys-kernel/
gentoo-kernel-bin</sub>   

(I have not tested this) furthermore, I do provide my .config for current "6.0-gentoo-sources" super trimmed down kernel (10MB) shared in "/stuff". This is for a basic AMD Ryzen 2700 x470 znver1 & AMDGPU Arctic Islands - POLARIS10/11/12, VEGAM setup. I guess it would work for others with same chipsets? [*not* as a drop in but maybe a start/base?], (running "make menuconfig [https://wiki.gentoo.org/wiki/Kernel/Configuration#Configuration]" in the activily set gentoo kernel sources "/usr/src/linux" would be 100% manditory as other hardware specifications would need to be set for your setup...) This is *Untested*...  

```
mrturcot on GentooRig /home/mrturcot/github/gentoo-stuff on   master [!1 ]
[ 04:10:05 PM ] ➜ l /boot
Permissions Size User Date Modified Name
.rwxr-xr-x  144k root  7 Nov 03:37  config-6.0.7-gentoo
.rwxr-xr-x  144k root 10 Nov 15:06  config-6.0.8-gentoo
.rwxr-xr-x  5.6M root  7 Nov 03:37  System.map-6.0.7-gentoo
.rwxr-xr-x  5.6M root 10 Nov 15:06  System.map-6.0.8-gentoo
.rwxr-xr-x   10M root  7 Nov 03:37  vmlinuz-6.0.7-gentoo
.rwxr-xr-x   10M root 10 Nov 15:06  vmlinuz-6.0.8-gentoo
```
```
 System GCC-LTO with Graphite  
 System Profile-guided optimizations  
 LLVM_TARGETS="AArch64 AMDGPU"  
 Per package environment setup for:  
 Clang & Clang-LTO  
 GCC-LTO, GCC Fallback & GCC-NO-LTO Fallback  
```

Every package currently set in portage/package.env is confirmed working with the specified per-package build environment(s) eg. compiler-clang   

**Notice**
   - In order to maintain high stability and compatibility across toolchains and libraries etc... ~~It is???~~ I personally HIGHLY recommeded to rebuild @system & @world after most if not all of these changes...  (See this article for steps [not opinions xd] https://wiki.gentoo.org/wiki/Upgrading_GCC#Rebuilding_everything)

------------------------------
 
 - mpv: my mpv.conf with a few nice scripts gathered eg. "right click context menu"  

 - scripts: git-repo check/pull/build & auto full gentoo upgrade & other handy things  

 - stuff: random linux config files  

 - rip: :( *we dont talk about that*  
