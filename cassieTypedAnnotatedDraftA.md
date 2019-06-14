1. Directory 50.../xis/event_cl
2. `$ Gunzip *.*`
	- gunzip everything in/to current working directory
3. `cd 50.../`
4. `mkdir analysis`
	- This will be the directory we use to analyze and process a single variation of the observation
	- Within this observation ID we will also make 2 (analysis2 & analysis3) more dirs so we have a dir each for DYE\_ELV>20, DYE\_ELV>40, DYE\_ELV>60
5. `cd analysis`
6. cp xi1\_3x3 + xi1\_5x5 to analysis dir from event_cl
	- `$ cp ../xis/event_cl/ae50...xi1_0_5x5no69b_ev.evt .`
	- cp means "copy", then give file copying from and directory copying too
	- "." is current working directory
7. Look for bad colum file
	- `~/suzaku/caldb/data/suzaku/xis/bcf/ae_xi1_npmscion_20160128.fits`
8. `$ pset xisputpixelquality badcolumfile=ae_xi1_npmscion_20160128.fits`
	- Input badcolum file found in previous step
9. `$ xisputpixelquality 3x3 file [Enter]`  
	``output file: 3x3_badcolmn.fits``
	- Repeat this step for 5x5 file
10. `ftcopy '3x3_badcolum.fits[EVENTS][STATUS=0:524287]' 3x3_new.evt`
	- Repeat this step for the 5x5 file output from the previous step
	- ftcopy applies filtering and transformations to the tables
		+ [In this case, filtering EVENTS by their pixel STATUS](https://heasarc.nasa.gov/docs/suzaku/processing/criteria_xis.html)
		+ [From xisputpixelquality doc](https://heasarc.gsfc.nasa.gov/lheasoft/ftools/headas/xisputpixelquality.txt)
		
			~~~~
			B19 | 524288 | one pixel apart from the frame/window boundary  


11. 
	`$ xis5x5to3x3`  
	`input file: 5x5 file`  
	`output file: 5x5to3x3.fits`  
	`input hk file: ~/suzaku/MBM20/50.../xis/hk/...hk.gz`  
	- [An hk file is a "housekeeping" file](https://heasarc.gsfc.nasa.gov/lheasoft/ftools/heasarc.html)
	- Converting 5x5 to a 3x3, according to Suzaku user guide ch 6?, extracting 3x3 from center of 5x5?
12. `$ ftmerge`  
	`3x3_new.fits, xis5x5to3x3.fits`  
	`output: xis1_events.fits`
13. `$ ftmerge`  
	``xis1_events.fits[GTI], xis5x5to3x3.fits[GTI]``  
	`output: xis1_events_GTI.fits`  
14. 
15. 



---
[FTOOLS: The HEASARC Sub-package](https://heasarc.gsfc.nasa.gov/lheasoft/ftools/heasarc.html): List of tasks applicable to multiple instruments