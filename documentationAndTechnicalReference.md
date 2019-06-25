# <a id="TC">Table of Contents</a>

- [Software Installation and Setup](#SIS)
- [Optional Environment Adjustments](#OEA)
- [Data Retrieval and Placement](#DRP)
- [Preparing Data](#PRED)
- [Processing Data](#PROD)
- [Modeling](#MOD)
- [References and Reading](#REF)
- [Resources](#RES)


---

# <a id="SIS">Software Installation and Setup</a>

### DS9

### Heasoft Pre-Requisites  
>A) [For Specific Dependencies Click Here] (https://heasarc.gsfc.nasa.gov/lheasoft/ubuntu.html)  
>B) General additional dependencies covered by running:  `$ sudo apt-get install build-essential`    

### Heasoft Installation

### [CALDB](#CALDOC)  
> [CALDB Setup Files][caldbsetupfileslink]  


[^ Table of Contents ^](#TC)

---

# <a id="OEA">Optional Environment Adjustments</a>

Applications and OS Extensions

Aliases and Functions

[^ Table of Contents ^](#TC)

---

# <a id="DRP">Data Retrieval and Placement</a>

[Suzaku Calibaration Files][suzakucaldbfiles]  
- XRT > Retrieve TAR file  
- XIS > Retrieve TAR file part 1 cpf  
- XIS > Retrieve TAR file part 2 bcf  
- XIS > Retrieve TAR file part 3 index  

[^ Table of Contents ^](#TC)

---
# <a id="PRED">Preparing Data</a>
xselect

[^ Table of Contents ^](#TC)

---
# <a id="PROD">Processing Data</a>

[^ Table of Contents ^](#TC)

---
# <a id="MOD">Modeling</a>

xspec

[^ Table of Contents ^](#TC)

---
# <a id="REF">References and Reading</a>

### Textbooks

- The Cosmic Perspective (9E) by Bennett JO, Donahue MO, Schneider N

>```
>Chapters:
>*1* ( TITLE | SUBJECT )
>2 ( TITLE | SUBJECT )
>3 ( TITLE | SUBJECT )
>4 ( TITLE | SUBJECT )
>*5* ( TITLE | SUBJECT )
>*6* ( TITLE | SUBJECT )
>17 ( TITLE | SUBJECT )
>21 ( TITLE | SUBJECT )
>22 ( TITLE | SUBJECT )
>23 ( TITLE | SUBJECT )
>```

- Physics for Scientists and Engineers (9E) by Serway, Jewett

>```
>Chapters:
>
>```


### Setup Documentation

- <a id="DS9DOC"></a>DS9 (SAOImageDS9)

>[Website][ds9homelink] | [PDF Download (Ubuntu Setup)][ds9ubuntupdf]

- <a id="HEADOC"></a>HEASOFT Setup

>[Website][heasoftweblink]  

- <a id="CALDOC"></a>CALDB Setup

>[Website][caldbinstallweblink] | [PDF Download][caldbinstallpdflink]





### Software and Analysis Documentation  

- Suzaku ABC Guide

>[Website][suzakuabc] | [Part 6: XIS Data Analysis][suzakuabcvi]


- <a id="XSEDOC"></a>XSELECT  

>[Website][xselectdocweblink] | [PDF Download][xselectdocpdflink]  
>Read ["Introduction"](https://heasarc.gsfc.nasa.gov/docs/software/lheasoft/ftools/xselect/node2.html) and ["Generalities"](https://heasarc.gsfc.nasa.gov/docs/software/lheasoft/ftools/xselect/node4.html) sections

- <a id="XSPDOC"></a>XSPEC 

>[Website][xspecdocweblink] | [PDF Download][xspecdocpdflink]

### Research Papers


> [2007: XMM-Newton Observations of the Diffuse X-Ray Background][paper2007]  
> [2009: Properties of the Diffuse X-ray Background Toward MBM20 With Suzaku][paper2009]  
> [2012: A Huge Reservoir of Ionized Gas around the Milky Way: Accounting for the Missing Mass?][paper2012]  
> [2014: OI fluorescent line contamination in soft X-ray diffuse background obtained with Suzaku/XIS][paper2014]  
> [2016: The Interaction of the Fermi Bubbles with the Milky Way’s Hot Gas Halo][paper2016]  



### 

[^ Table of Contents ^](#TC)

---
# <a id="RES">Additional Resources</a>  
  
[NASA Astrophysics Data System][nasaads]  
- For locating research papers  

[HEASARC Assistance][helpformlink]  
- Contacts for troubleshooting

[A New Recipe for Generating XIS NXB Spectra][xisnxbnewrecipe]  

[FTOOLS: The HEASARC Sub-package](https://heasarc.gsfc.nasa.gov/lheasoft/ftools/heasarc.html)  
- List of tasks applicable to multiple instruments

[^ Table of Contents ^](#TC)

---  

[caldbinstallweblink]:https://heasarc.gsfc.nasa.gov/docs/heasarc/caldb/caldb_install.html

[caldbinstallpdflink]:http://heasarc.gsfc.nasa.gov/FTP/caldb/docs/memos/cal_gen_94_004/cal_gen_94_004.pdf

[suzakucaldbfiles]:https://heasarc.gsfc.nasa.gov/docs/heasarc/caldb/suzaku/

[caldbsetupfileslink]:http://heasarc.gsfc.nasa.gov/FTP/caldb/software/tools/caldb_setup_files.tar.Z

[helpformlink]:https://heasarc.gsfc.nasa.gov/cgi-bin/Feedback

[ds9ubuntupdf]:https://www.iiap.res.in/files/DS9-Ubuntu_0.pdf

[ds9homelink]:http://ds9.si.edu/site/Home.html

[nasaads]:https://ui.adsabs.harvard.edu/

[heasoftdownloadlink]:http://heasarc.gsfc.nasa.gov/lheasoft/download.html

[heasoftweblink]:https://heasarc.gsfc.nasa.gov/lheasoft/install.html

[ftoolshelplink]:http://heasarc.gsfc.nasa.gov/cgi-bin/ftoolshelp

[xspecdocpdflink]:https://heasarc.gsfc.nasa.gov/docs/xanadu/xspec/XspecManual.pdf

[xspecdocweblink]:https://heasarc.gsfc.nasa.gov/docs/xanadu/xspec/manual/manual.html

[xselectdocpdflink]:http://legacy.gsfc.nasa.gov/FTP/software/lheasoft/release/doc/xselect/Xselect_2.4.pdf

[xselectdocweblink]:https://heasarc.nasa.gov/docs/software/lheasoft/ftools/xselect/xselect.html


[paper2007]:https://iopscience.iop.org/article/10.1086/512032

[paper2009]:https://iopscience.iop.org/article/10.1088/0004-637X/707/1/644

[paper2012]:https://iopscience.iop.org/article/10.1088/2041-8205/756/1/L8

[paper2014]:https://doi.org/10.1093/pasj/psu007

[paper2016]:https://iopscience.iop.org/article/10.3847/0004-637X/829/1/9

[suzakuabc]:http://heasarc.gsfc.nasa.gov/docs/suzaku/analysis/abc/

[suzakuabcvi]:https://heasarc.gsfc.nasa.gov/docs/suzaku/analysis/abc/node9.html

[xisnxbnewrecipe]:https://heasarc.gsfc.nasa.gov/docs/suzaku/analysis/xisnxbnew.html