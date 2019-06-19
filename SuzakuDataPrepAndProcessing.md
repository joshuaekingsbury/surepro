When extracting an observation data set (`$ tar xvf w3-browse#####.tar`) it will create and extract to a directory titled according to the observation ID being extracted.


1. Directory 50.../xis/event_cl
2. `$ Gunzip *.*`
	- gunzip everything in/to current working directory
3. `cd 50.../`
4. `mkdir analysis`
	- This will be the directory we use to analyze and process a single variation of the observation
	- Within this observation ID we will also make 2 (analysis2 & analysis3) more dirs so we have a dir each for DYE\_ELV>60, DYE\_ELV>40, DYE\_ELV>20 respectively
5. `cd analysis`
6. cp xi1\_3x3 + xi1\_5x5 to analysis dir from event_cl  
	- `$ cp ../xis/event_cl/ae50...xi1_0_3x3no69b_ev.evt .`  
	- `$ cp ../xis/event_cl/ae50...xi1_0_5x5no69b_ev.evt .`  
	- cp means "copy", then give file copying from and directory copying too
	- "." is current working directory
7. Look for bad colum file [*New Recipe! Steps 1-2](https://heasarc.gsfc.nasa.gov/docs/suzaku/analysis/xisnxbnew.html) (Here steps 7-10)   
	- `~/suzaku/caldb/data/suzaku/xis/bcf/ae_xi1_npmsci6_20160128.fits`  
	- Use 6KeV most recent for xis1 as newest 2KeV is older than and doesn't contain necessary GTIs for Night X-Ray Background  (NXB)  
	- In original procedure, files are merged before cleaning using New Recipe
8. `$ pset xisputpixelquality badcolumfile=~/YOUR/PATH/FROM/STEP/7`
	- Input path to badcolum file found in previous step
9. `$ xisputpixelquality 3x3 file [Enter]`  
	``output file: 3x3_badcolum.fits``
	- Repeat this step for 5x5 file
10. `ftcopy 3x3_badcolum.fits[EVENTS][STATUS=0:524287] 3x3_new.fits`
	- Repeat this step for the 5x5 file output from the previous step
	- ftcopy applies filtering and transformations to the tables
		+ [In this case, filtering EVENTS by their pixel STATUS](https://heasarc.nasa.gov/docs/suzaku/processing/criteria_xis.html)
		+ [From xisputpixelquality doc](https://heasarc.gsfc.nasa.gov/lheasoft/ftools/headas/xisputpixelquality.txt)  
			`B19 | 524288 | one pixel apart from the frame/window boundary`

11. 
	`$ xis5x5to3x3`  
	`input file: 5x5 fits file`  
	`output file: 5x5to3x3.fits`  
	`input hk file: ~/suzaku/off-field3/50.../xis/hk/ae509044010xi1_0.hk.gz`  
	- [An hk file is a "housekeeping" file](https://heasarc.gsfc.nasa.gov/lheasoft/ftools/heasarc.html)
	- Converting 5x5 to a 3x3, according to Suzaku user guide ch 6?, extracting 3x3 from center of 5x5?
12. `$ ftmerge`  
	`3x3_new.fits, 5x5to3x3.fits`  
	`output: xis1_events.fits`  
13. `$ ftmerge`  
	``xis1_events.fits[GTI], 5x5to3x3.fits[GTI]``  
	`output: xis1_events_GTI.fits`  
14. `$ mv xis1_events_GTI.fits ../xis/event_cl`  

15. `$ xselect`  
	`> Enter session name > YYMMDD_#`  
	`YYMMDD_#:SUZAKU > set datadir`  
	`> Enter the Event file dir > [path to event_cl dir]`  
	`??set instr xis1??`  
	`YYMMDD_#:SUZAKU > read events`  
	`> Enter Event file list > xis1_events_GTI.fits`  
	`YYMMDD_#:SUZAKU-XIS1-STANDARD > select mkf`  
	`> Boolean expression for filter file selection > SAA==0 && T_SAA>436 && COR>8 && ELV>10 && DYE_ELV>60`  
	- `select mkf` command creates a time filter of GTIs. To actually filter the events, we must use or issue the command `extract events`  
	- Will do this step and save out a file each for DYE_ELV>20, 40, 60

	`YYMMDD_#:SUZAKU-XIS1-STANDARD > extract events`  
	`YYMMDD_#:SUZAKU-XIS1-STANDARD > save events`  
	`> Give output file name > clean_events.fits`  
	- In original procedure it lists following steps 1-2 of New Recipe here  
	`> Use filtered events as input data file ? >[yes] y????????`
	`filter pha_cutoff 109 547`  
	`extract image`  
	`190617_1:SUZAKU-XIS1-STANDARD > save image`  
	`0.4-2.0_image.fits`  
	`exit`  
	`> Save this session? >[y] y`  
16. `ds9 0.4-2.0_image.fits`  
	- Change scale to Log  
	- Analysis  
		+ Smooth  
	- Change color to rainbow  
	- Edit  
		+ Region  
		Select regions with high count rate  
		Double click regions to bring up info to edit like angle for rotation
	+ Region  
		* Select All  
	+ Properties  
		* Exclude  
	+ Save regions  
		* `ds9.reg`  
17. `$ xselect`  
	`set instr xis1`  
	`set datadir []`  
	`read events [clean_events.fits]` 
	`??xis1_filtered_rmsrc??` 
	`filter region ds9.reg`  
	`extract all`  
	`exit`  
	`Save?: [y]`







---
[FTOOLS: The HEASARC Sub-package](https://heasarc.gsfc.nasa.gov/lheasoft/ftools/heasarc.html): List of tasks applicable to multiple instruments
