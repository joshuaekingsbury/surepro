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

[HEASARC Data Access][HEASARCarch]

[^ Table of Contents ^](#TC)

---
# <a id="PRED">Preparing Data</a>
xselect

(https://heasarc.gsfc.nasa.gov/docs/suzaku/analysis/xselect.html)  
(http://www.astro.isas.jaxa.jp/suzaku/research/pub/xselectnotes.html)  
(http://homepage.physics.uiowa.edu/~pkaaret/2016f_a6880/data_reduction.html)  


[^ Table of Contents ^](#TC)

---
# <a id="PROD">Processing Data</a>

[^ Table of Contents ^](#TC)

---
# <a id="MOD">Modeling</a>

> [XSPEC: Fitting Models to Data](https://heasarc.gsfc.nasa.gov/xanadu/xspec/manual/node38.html)  
> [XSPEC: Error](https://heasarc.gsfc.nasa.gov/xanadu/xspec/manual/node80.html)  
> [XSPEC: Model](https://heasarc.gsfc.nasa.gov/xanadu/xspec/manual/node105.html)

https://www.chem.uci.edu/~unicorn/M3LC/handouts/SpectroscopyHandout.pdf

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
  
> [2017: Probing the Anisotropy of the Milky Way Gaseous Halo-II: Sightline toward Mrk 509][paper2017]  
> [2018: Discovery of massive warm-hot circumgalactic medium around NGC 3221][paper2018]  


Vocab:  
- COR: cut-off rigidity (2009:2.2)

Additional:  
(10.1093/pasj/60.sp1.S11)  


(10.1093/mnrasl/slv084)  
PHA: Also, Channel, PI, or ...  
PI: These are usually called pulse-height invariant or PI channels,
because they correspond to the pulse height of an event after
it has been calibrated for temporal and spatial gain variations
onto a standard energy scale


Calculate the Total Galactic H(I) Column Density (nH)
https://heasarc.gsfc.nasa.gov/cgi-bin/Tools/w3nh/w3nh.pl

off2_dye20 nH weighted avg = 4.90E+20 (0.049E+22)

off3_dye20 nH weighted avg = 5.92E+20 (0.059E+22)

off4\_dye20_ 9.01E+20

"mrk509" Weighted average nH (cm**-2)  3.93E+20

rmf = response matrix file

http://atomdb.org/

### 

[^ Table of Contents ^](#TC)

---
# <a id="RES">Additional Resources</a>  
  
[HEASARC Data Access][HEASARCarch]  
- Links to interfaces for retrieving archived data

[NASA Astrophysics Data System][nasaads]  
- For locating research papers  

[HEASARC Assistance][helpformlink]  
- Contacts for troubleshooting

[A New Recipe for Generating XIS NXB Spectra][xisnxbnewrecipe]  

[FTOOLS: The HEASARC Sub-package](https://heasarc.gsfc.nasa.gov/lheasoft/ftools/heasarc.html)  
- List of tasks applicable to multiple instruments  

NASA X-ray Astronomy School  

- 2005  
>[Home][xrayschool2005] | [Seminars (with PDF links)][xrayschool2005schedule]  
  
- 2003  
>[Home][xrayschool2003] | [Seminars (with PDF links)][xrayschool2003schedule]  
  
- 2002  
>[Home][xrayschool2002] | [Seminars (with PDF links)][xrayschool2002schedule]  
  
- 2001  
>[Home][xrayschool2001] | [Seminars (with PDF links)][xrayschool2001schedule]  


[^ Table of Contents ^](#TC)

---  

# Fun
(http://www.sjsu.edu/faculty/watkins/elevsun.htm)  

(2019arXiv190303423K)
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

[paper2017]:https://doi.org/10.3847/1538-4357/836/2/243

[paper2018]:https://ui.adsabs.harvard.edu/link_gateway/2018arXiv181012454D/arxiv:1810.12454

[suzakuabc]:http://heasarc.gsfc.nasa.gov/docs/suzaku/analysis/abc/

[suzakuabcvi]:https://heasarc.gsfc.nasa.gov/docs/suzaku/analysis/abc/node9.html

[xisnxbnewrecipe]:https://heasarc.gsfc.nasa.gov/docs/suzaku/analysis/xisnxbnew.html

[xrayschool2005]:https://heasarc.gsfc.nasa.gov/docs/xrayschool-2005
[xrayschool2005schedule]:https://heasarc.gsfc.nasa.gov/docs/xrayschool-2005/schedule.html

[xrayschool2003]:https://heasarc.gsfc.nasa.gov/docs/xrayschool-2003
[xrayschool2003schedule]:https://heasarc.gsfc.nasa.gov/docs/xrayschool-2003/schedule.html

[xrayschool2002]:https://heasarc.gsfc.nasa.gov/docs/xrayschool_2002
[xrayschool2002schedule]:https://heasarc.gsfc.nasa.gov/docs/xrayschool_2002/schedule.html

[xrayschool2001]:https://heasarc.gsfc.nasa.gov/docs/xrayschool_2001
[xrayschool2001schedule]:https://heasarc.gsfc.nasa.gov/docs/xrayschool_2001/what2.html

[HEASARCarch]:https://heasarc.gsfc.nasa.gov/docs/archive.html