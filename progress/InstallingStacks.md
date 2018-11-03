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
### Time
#### Outcome: FAILURE
I first tried to install Stacks using GitBash on Windows. When I would reach the `./configure` step I would receive the error  

	configure: error: C++ compiler cannot create executables
	See `config.log` for more details  

Based on this, and some internet sleuthing, I first tried to install MSBuild through Microsoft Visual Studio through the GUI interface but that did not fix the problem.  
Next I installed the MinGW Installation Manager and installed the Basic MinGW Installation (mingw32-base-bin) as well as the following compilers: mingw32-gcc-ada-bin, mingw32-gcc-fortrat-bin, mingw32-gcc-g++-bin, mingw32-gcc-objc-bin through the GUI provided by the Installation manager. I then manually added MinGW to my `PATH` following instructions from [this post](https://www.howtogeek.com/118594/how-to-edit-your-system-path-for-easy-command-line-access/).  
I then reopened the GitBash terminal and followed the Stacks install instructions through `./configure` which worked! However the `make` command generated the error  

	"bash:make:command not found"  
Based on searching this command I rea
  