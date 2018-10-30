# Trim Galore

## Installing Trim Galore
### 10/26/18
This details how I installed Trim Galore on the FishLab3 Desktop

### Step 1:
Install [Trim Galore](https://www.bioinformatics.babraham.ac.uk/projects/trim_galore/)  
Note: trim galore requires `cutadapt`

### Step 2:
Install `cutadapt` for use with `trim_galore`
First attempt to install failed due to lack of Microsoft Visual C++ 14.0. Followed instructions provided in error message to install C++.  
Then ran:
    pip install --user --upgrade cutadapt
`cutadapt` installed to "C:\Users\FishLab3\AppData\Roaming\Python\Python37\Scripts"  
copied to Bioinfo-progs directory
	cp /c/Users/FishLab3/AppData/Roaming/Python/Python37/Scripts/cutadapt.exe /c/Users/FishLab3/Bioinfo-progs/
Added to system path using GUI following directions [here](https://www.howtogeek.com/118594/how-to-edit-your-system-path-for-easy-command-line-access/) used browse button to add full Bioinfo-progs directory to path

Verified it worked with
	cutadapt --help

## Using Trim Galore
## 10/26-10/30/18
### Step 1:
Run Trim Galore from Jupyter notebook (note: it took > 2 hr to run on desktop computer, 129 min according to Trim Galore summary)
Started run 10/26, ran with default settings, see Data-QT-dktp for code and run output.

### Step 2:
Started FastQC run on trimmed data to compare differences between trimmed and untrimmed data.
Based on FastQC on trimmed data, appears I need to manually trim bases.