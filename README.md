**My Gentoo / Linux Stuff**
   
   
```
 mrturcot  on GentooRig /home/mrturcot/github/gentoo-stuff on   master took 7s
[ 05:07:34 PM ] ➜ neofetch
         -/oyddmdhs+:.                mrturcot@GentooRig 
     -odNMMMMMMMMNNmhy+-`             ------------------ 
   -yNMMMMMMMMMMMNNNmmdhy+-           OS: Gentoo Linux x86_64 
 `omMMMMMMMMMMMMNmdmmmmddhhy/`        Host: Gigabyte Technology Co., Ltd. X470 AORUS GAMING 7 WIFI-CF 
 omMMMMMMMMMMMNhhyyyohmdddhhhdo`      Kernel: 6.1.1-gentoo-filthy 
.ydMMMMMMMMMMdhs++so/smdddhhhhdm+`    Uptime: 3 hours, 16 mins 
 oyhdmNMMMMMMMNdyooydmddddhhhhyhNd.   Packages: 1166 (emerge) 
  :oyhhdNNMMMMMMMNNNmmdddhhhhhyymMh   Shell: zsh 5.9 
    .:+sydNMMMMMNNNmmmdddhhhhhhmMmy   Resolution: 3840x2160 
       /mMMMMMMNNNmmmdddhhhhhmMNhs:   DE: GNOME 43.2 
    `oNMMMMMMMNNNmmmddddhhdmMNhs+`    WM: Mutter 
  `sNMMMMMMMMNNNmmmdddddmNMmhs/.      WM Theme: Orchis-Dark 
 /NMMMMMMMMNNNNmmmdddmNMNdso:`        Theme: Orchis-Dark [GTK2/3] 
+MMMMMMMNNNNNmmmmdmNMNdso/-           Icons: Papirus [GTK2/3] 
yMMNNNNNNNmmmmmNNMmhs+/-`             Terminal: kitty 
/hMMNNNNNNNNMNdhs++/-`                Terminal Font: source code pro 14.0 
`/ohdmmddhys+++/:.`                   CPU: AMD Ryzen 7 2700 (16) @ 3.800GHz 
  `-//////:--.                        GPU: AMD ATI Radeon RX 590 
                                      Memory: 832MiB / 64242MiB
```
   

 - **Main Features**

  - My in sync Portage directory & Kernel for a Stable Gentoo x86-64 EFI, Ryzen ZenVer1, AMDGPU, OpenRC, Gnome-*Light*, X11, Pipewire based system configuration. With optimizations for speed and gaming performance in mind...  

  - /etc/portage files included in this repo, could serve as drop-in replacements for others with similar hardware setups. It should also be noted, the PER-Package build environments are portable and modular, they should work with most Gentoo based systems with LLVM/Clang installed, (upon setting a few values mentioned below)   

```
 PER-Package compiler environments (as defined in portage/env & portage/package.env) for:  
 Clang, Clang-LTO, Clang-Hardended, GCC-LTO, GCC-Fallback, GCC-NO-LTO-Fallback & more
```
```
 GCC set to compile with Graphite, LTO & PGO optimizations  
 System-wide LLVM_TARGETS="AArch64 AMDGPU" 
 AArch64 CPU target (arm64 in Gentoo) 
 AMDGPU target (supports R600 and GCN GPUs)  
```
```
 Local USE Flags enabled (select packages only eg. GCC)  
 ## Can be overridden using PER-Package env's compiler-$(environment) *not PGO*  
 Clang = Force building using installed clang (rather than the default CC/CXX).  
 LTO = Build using Link Time Optimizations (LTO)  
 PGO = Profile-guided optimizations   
 and more... see portage/make.conf "USE=$(Flags)"  
```  

Clang Kernel
```
➜ cat /proc/version
Linux version 6.1.1-gentoo-filthy (root@GentooRig) (clang version 15.0.6, LLD 15.0.6) #5 SMP PREEMPT_DYNAMIC Fri Dec 23 03:48:45 PST 2022
```   

 - **Use Case**

 One helpful use case scenario could be. Once initially mounted and chrooted into a new Gentoo install environment. Complete the install as normal 

```
 emerge-webrsync
 emerge --sync
 eselect profile set = default/linux/amd64/17.1/desktop/gnome
```

Then before >> **Updating the @world set** (https://wiki.gentoo.org/wiki/Handbook:AMD64/Full/Installation#Updating_the_.40world_set) > download this repo as a zip=[https://github.com/mrturcot/Gentoo-Stuff/archive/refs/heads/master.zip] using wget (we dont have git rn). Extract & add/edit/use/remove the configs you choose *then* >> "emerge --ask --verbose --update --deep --newuse @world" Grab a coffee, save some time? Save some headaches? maybe? Yes, I think so. Nevertheless   
   
 **User needs to set** <sub>(Unless you have znver1 cpu and okay with 12 threads?)</sub>   
 
  - CPU_FLAGS_X86 in package.use/00cpu-flags (see https://wiki.gentoo.org/wiki/CPU_FLAGS_X86)  

  - COMMON_FLAGS="-march=?" option in make.conf & portage/env/compiler-$(environment) (see https://wiki.gentoo.org/wiki/Safe_CFLAGS)  

  - MAKEOPTS="-j?" option in make.conf & portage/env/compiler-$(environment) (see https://wiki.gentoo.org/wiki/MAKEOPTS)   
   
   
- **Untested**  

Furthermore, I do provide my own kernel and .config for current "6.1-gentoo-sources". This is for AMD Ryzen znver1 & AMDGPU Arctic Islands - POLARIS10/11/12 setup with support for NVMe-SDD and SATA-HDD (ext4, fat & ntfs) with Network etc... (all this stuff here works https://www.gigabyte.com/Motherboard/X470-AORUS-ULTRA-GAMING-rev-10/sp#sp).  

Running "make menuconfig [https://wiki.gentoo.org/wiki/Kernel/Configuration#Configuration]" in your activily set gentoo kernel sources in "/usr/src/linux" would be very strongly recommened making your own kernel from the kernel.config provided, as other hardware specifications that differ from this would most definitely need to be set for your setup... This is *Untested*...     
      
   
```
 mrturcot  on GentooRig /home/mrturcot 
[ 08:10:38 AM ] ➜ l /boot         
Permissions Size User Date Modified Name
.rwxr-xr-x  145k root 23 Dec 03:51  config-6.1.1-gentoo-filthy
.rwxr-xr-x     0 root 23 Dec 03:51  System.map-6.1.1-gentoo-filthy
.rwxr-xr-x  9.0M root 23 Dec 03:51  vmlinuz-6.1.1-gentoo-filthy
```

   
Every package currently set in portage/package.env is confirmed working with the specified per-package build environment(s) eg. compiler-clang   
   

**Notice**
   - In order to maintain high stability and compatibility across toolchains and libraries etc... ~~It is???~~ I personally HIGHLY recommeded to rebuild @system & @world after most if not all of these changes...  (See this article for steps [not opinions xd] https://wiki.gentoo.org/wiki/Upgrading_GCC#Rebuilding_everything)
   
------------------------------
    
**The Rest**
   
 - mpv: my mpv.conf with a few nice scripts gathered eg. "right click context menu"  

 - scripts: git-repo check/pull/build & auto full gentoo upgrade & other handy things  

 - stuff: random linux config files  

 - rip: :( *we dont talk about that*  
