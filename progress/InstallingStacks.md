# Installing Stacks
## Successfully installed: 11/2/18

Analysis of my RADSeq data has been delayed due to my inability to install Stacks, the most common pipeline for analyzing RADSeq data, on my Windows machine. With all attempts I followed the code provided on in the [Installation section](http://catchenlab.life.illinois.edu/stacks/manual/#install) of the [Stacks Manual](http://catchenlab.life.illinois.edu/stacks/manual/) copied below.
Download stacks from [here](http://catchenlab.life.illinois.edu/stacks/)  
    
	tar xfvz stacks-2.2.tar.gz  
	cd stacks-2.2  
    ./configure  
	make
    make install 
 
### Attempt 1: GitBash
**Time used: ~6-8 hours**  
**Outcome: FAILURE**  

I first tried to install Stacks using GitBash on Windows. When I reached the `./configure` step I would receive the error  

	configure: error: C++ compiler cannot create executables
	See `config.log` for more details  

Based on this, and some internet sleuthing, I first tried to install MSBuild through Microsoft Visual Studio through the GUI interface but that did not fix the problem.  
Next I installed the [MinGW Installation Manager](https://osdn.net/projects/mingw/releases/) and installed the Basic MinGW Installation (mingw32-base-bin) as well as the following compilers: mingw32-gcc-ada-bin, mingw32-gcc-fortrat-bin, mingw32-gcc-g++-bin, mingw32-gcc-objc-bin through the GUI provided by the Installation manager. I then manually added MinGW to my `PATH` following instructions from [this post](https://www.howtogeek.com/118594/how-to-edit-your-system-path-for-easy-command-line-access/).  
I then reopened the GitBash terminal and followed the Stacks install instructions through `./configure` which worked! However the `make` command generated the error  

	"bash:make:command not found"  
Based on searching this error I determined that `autotools`wasn't installed in GitBash. A few hours of reading later I realized that `autotools` is typically part of Linux environments so I decided to switch away from using GitBash and start using Ubuntu.

### Attempt 2: Ubuntu on Windows
**Time used: ~6 hours**  
**Outcome: FAILURE**  
Based on advice from Sam I tried running Ubuntu through Windows as supported in the Windows 10 Anniversary Update. On my desktop computer I ran into an issue of having a different Windows 10 version but managed to get Ubuntu running following Sam's instructions on this [issue](https://github.com/sr320/course-fish546-2018/issues/23).  
I then followed the Stacks install instructions again after figuring out how to share my repository folder between my machine and the Ubuntu environment. At the `.configure` step I again ran into the error

	configure: error: C++ compiler cannot create executables
	See `config.log` for more details  
Now being in Ubuntu I attempted to install different C++ compilers as well as double checking that MinGW was in the `PATH` for my Ubuntu environment. Using the command `sudo apt install` I installed g++, gcc, and build-essentials each in turn and none of them fixed the problem.  
I reached out to the MerLab to see if they had any advice since I know a number of people in that lab use Stacks. This led me to running Ubuntu on a virtual machine.

### Attempt 3: Ubuntu virtual machine
**Time used: ~6 hours**   
**Outcome: SUCCESS**  

After consulting members of the MerLab I decided to run Ubuntu through a virtual machine on my Windows machine instead of using the Ubuntu app as in Attempt 2. The following steps were performed following Mary Fisher's [Evernote Notebook](https://www.evernote.com/client/snv?noteGuid=f2cfdbab-70bc-4330-a01b-4bc4e34e57bc&noteKey=f20cf000a339ea88&sn=https%3A%2F%2Fwww.evernote.com%2Fshard%2Fs650%2Fsh%2Ff2cfdbab-70bc-4330-a01b-4bc4e34e57bc%2Ff20cf000a339ea88&title=Installing%2BVMware%2B%252B%2BStacks%2B%252B%2BHarddrive%2B%252B%2Betc.)    
First I downloaded VMware and created an Ubuntu machine following [this blog post](https://theholmesoffice.com/installing-ubuntu-in-vmware-player-on-windows/). I ran into an issue when attempting to launch the virtual machine. I got an error message that stated:

	This host supports Intel VT-x, but Intel VT-x is disabled
I was able to enable Intel VT-x following instructions from [here](https://www.howtogeek.com/213795/how-to-enable-intel-vt-x-in-your-computers-bios-or-uefi-firmware/). 
I found and navigated the startup menu following [steps 3 and 4](https://support.hp.com/us-en/document/c03508835). Accessing the startup settings menu took pressing `esc` at the exact right time during a very small window of time during start up.  I then went to the `Computer Setup (F10)` menu and navigated `Security -> System Security` and enabled both 
	
	"Virtualization Technology (VTx)"
	"Virtualization Technology Directed I/O (VTd)"
Then I went back to `File -> Save Changes and Exit` then selected `yes`. This allowed my virtual machine to launch.

Next I enabled sharing of my Git repository folder between my Windows machine and my virtual machine following the instructions in Mary's Evernote notebook. I further followed those instructions to update VMtools.  
*Note:excute steps for updating VMtools with the virtual machine running* 
 
Once I had successfully created and launched my virtual machine and configured file sharing  I next went to the Stacks website on my virtual machine and downloaded stacks. I then followed the install instructions but once again ran into the configure error

	configure: error: C++ compiler cannot create executables
	See `config.log` for more details 
I then searched this error in combination with my Ubuntu version (18.04) and followed [this](https://linuxconfig.org/how-to-install-gcc-the-c-compiler-on-ubuntu-18-04-bionic-beaver-linux). First I ran

	sudo apt install gcc
but that didn't fix the problem even after restarting the terminal. So next I ran

	sudo apt intall build-essentials
and it worked!  
Next, following Mary's [notebook]((https://www.evernote.com/client/snv?noteGuid=f2cfdbab-70bc-4330-a01b-4bc4e34e57bc&noteKey=f20cf000a339ea88&sn=https%3A%2F%2Fwww.evernote.com%2Fshard%2Fs650%2Fsh%2Ff2cfdbab-70bc-4330-a01b-4bc4e34e57bc%2Ff20cf000a339ea88&title=Installing%2BVMware%2B%252B%2BStacks%2B%252B%2BHarddrive%2B%252B%2Betc.) I ran

	sudo make install
and it worked! I verified that Stacks had installed by calling the help file for the program `process_radtags`

	process_radtags -h
So nearly 20 hours of work later I finally have Stacks running on my machine!   
Next steps are to get the barcode file from my collaborators and start demultiplexing the data.