When extracting an observation data set (`$ tar xvf downloadedObservationData.tar`) it will create and extract to a directory titled according to the observation ID being extracted.

(Ignore this: analysis dir, then copy all to 20,40,60 (adding '_dye20' to each) for next steps)

1. Navigate to directory 50.../xis/event_cl
2. `$ Gunzip *.*`
	- gunzip everything in/to current working directory
3. `cd 50.../`
4. `mkdir analysis`
	- This will be the directory we use to analyze and process a single variation of the observation
	- Within this observation ID we will also make 3 more dirs (20analysis, 40analysis & 60analysis) so we have a dir each for DYE\_ELV>20, DYE\_ELV>40, DYE\_ELV>60 respectively
	- This naming convention allows for the terminal [TAB] auto-complete to be leveraged while remaining recognizable in the context of our recent notes and research
5. `cd analysis`
6. cp xi1\_3x3 + xi1\_5x5 to analysis dir from event_cl  
	- `$ cp ../xis/event_cl/ae50...xi1_0_3x3no69b_ev.evt .`  
	- `$ cp ../xis/event_cl/ae50...xi1_0_5x5no69b_ev.evt .`  
	- cp means "copy", then give file copying from and directory copying too
	- "." is current working directory
7. Look for bad colum file [*New Recipe! Steps 1 & 2 for science observation data.][newrecipelink] (Here steps 7-10)   
	- `~/suzaku/caldb/data/suzaku/xis/bcf/ae_xi1_npmsci6_20160128.fits`  
	- Use 6KeV most recent for xis1 as newest 2KeV is older than and doesn't contain necessary GTIs for Night X-Ray Background  (NXB)  
	- In original procedure, files are merged before cleaning using New Recipe
8. `$ pset xisputpixelquality badcolumfile=~/YOUR/PATH/FROM/STEP/7`
	- Input path to badcolum file found in previous step
	- Make sure your working directory is the relative analysis folder
9. `$ xisputpixelquality ae50...xi1_0_3x3no69b_ev.evt`  
	`output file: badcolum_3x3_off3.fits`
	- Repeat this step for 5x5 file
10. `ftcopy badcolum_3x3_off3.fits[EVENTS][STATUS=0:524287] ftcopy_3x3_524288_off3.fits `
	- Repeat this step for the 5x5 file output from the previous step  
		+ ???(ftcopy\_5x5\_128_off3.fits)???
		+ (128? Since is before making into a 3x3 file?)
	- ftcopy applies filtering and transformations to the tables
		+ [In this case, filtering EVENTS by their pixel STATUS](https://heasarc.nasa.gov/docs/suzaku/processing/criteria_xis.html)
		+ [From xisputpixelquality doc](https://heasarc.gsfc.nasa.gov/lheasoft/ftools/headas/xisputpixelquality.txt)  
			`B19 | 524288 | one pixel apart from the frame/window boundary`

11. 
	`$ xis5x5to3x3`  
	`input file: ftcopy_5x5_524288_off3.fits`  
	`output file: 5x5to3x3_off3.fits`  
	`input hk file: ~/suzaku/off-field3/50.../xis/hk/ae509044010xi1_0.hk.gz`  
	- [An hk file is a "housekeeping" file](https://heasarc.gsfc.nasa.gov/lheasoft/ftools/heasarc.html)
	- Converting 5x5 to a 3x3, according to Suzaku user guide ch 6?, extracting 3x3 from center of 5x5?
12. `$ ftmerge`  
	`Filename[extension] of tables to be merged[] ftcopy_3x3_524288_off3.fits, 5x5to3x3_off3.fits`  
	`output: merged_5to3_w_3_off3.fits`  
13. `$ ftmerge`  
	`Filename[extension] of tables to be merged[] merged_5to3_w_3_off3.fits[GTI], 5x5to3x3_off3.fits[GTI]`  
	`output: merged_merged_w_5to3_GTI_off3.fits`  
	`$ cp merged_merged_w_5to3_GTI_off3.fits xi1_events_GTI_off3.fits`  
14. `$ cp xi1_events_GTI.fits ../xis/event_cl`  
  14.5. `cd ../20analysis`  
  change to analysis directory relative to DYE (20analysis in following steps; when repeating: 40analysis, 60analysis)

15. `$ xselect`  
	`> Enter session name > YYMMDD_#`  
	`YYMMDD_#:SUZAKU > set datadir`  
	`> Enter the Event file dir > [path to event_cl dir]`  
	- Must be on same line if set instr first, otherwise error
	- Must enter ENTIRE path from root dir (/home/USER/suzaku/etc...), cannot start with "~/"  

	`YYMMDD_#:SUZAKU > set instr xis1`  
	`YYMMDD_#:SUZAKU > read events`  
	`> Enter Event file list > xi1_events_GTI_off3.fits`  
	`YYMMDD_#:SUZAKU-XIS1-STANDARD > select mkf`  
	`> Boolean expression for filter file selection > SAA==0 && T_SAA>436 && COR>8 && ELV>10 && DYE_ELV>20`  
	- `select mkf` command creates a time filter of GTIs. To actually filter the events, we must use or issue the command `extract events`  
	- Will do this step and save out a file each for DYE_ELV>20, 40, 60
	- DYE_ELV: Earth Day-Time Elevation Angle

	`YYMMDD_#:SUZAKU-XIS1-STANDARD > extract events`  
	`YYMMDD_#:SUZAKU-XIS1-STANDARD > save events`  
	`> Give output file name > clean_events_off3_dye20.fits`  
	- Ignore; In original procedure it lists following steps 1-2 of New Recipe here  
	
	`> Use filtered events as input data file ? > y`  
	`YYMMDD_#:SUZAKU-XIS1-STANDARD > filter pha_cutoff 109 547`  
	`YYMMDD_#:SUZAKU-XIS1-STANDARD > extract image`  
	`YYMMDD_#:SUZAKU-XIS1-STANDARD > save image`  
	`> Give output file name > 0_4-2_0_image_off3_dye20.fits`  
	`YYMMDD_#:SUZAKU-XIS1-STANDARD > exit`  
	`> Save this session? > y`  
16. `ds9 0_4-2_0_image_off3_dye20.fits`  
	- Change scale to Log  
	- Analysis  
		+ Smooth  
	- Change color to rainbow  
	- Edit  
		+ Region  
		Select regions with high count rate  
		Double click regions to bring up info to edit like angle for rotation
	+ Region  
		* Shape  
			- Make Circle/Ellipse/Box/Polygon Selections  
	+ When finished making selections:  
		* Regions  
			* Select All  
			+ Properties  
				* Exclude  
			+ Save regions  
				* `ds9.reg`  
17. `$ xselect`  
	`> Enter session name > YYMMDD_#`  
	`YYMMDD_#:SUZAKU > set datadir`  
	`> Enter the Event file dir > [path to event_cl dir]`  
	- datadir used in step 15

	`YYMMDD_#:SUZAKU > read events`  
	`> Enter Event file list > xis1_events_GTI_off3.fits`  
	~~`read events [clean_events.fits]`~~
	~~`??xis1_filtered_rmsrc??`~~  
	`YYMMDD_#:SUZAKU-XIS1-STANDARD > filter region ds9.reg`  
	`YYMMDD_#:SUZAKU-XIS1-STANDARD > extract all`  
	`YYMMDD_#:SUZAKU-XIS1-STANDARD > exit`  
	`> Save this session? > y`
18. `$ xisrmfgen`   
	`Name of input PI or IMAGE file or NONE[] YYMMDD_#_image.xsl`  
	`Name of output RMF[]: rmf_off3_dye20.fits`  
19. `$ xisexpmapgen`  
	`output exposure map file[]: expmap_off3_dye20.fits`  
	`input PHA or EVENT file to get observation mode[] YYMMDD_#_hist.xsl`  
	`input attitude file[] ../auxil/ae509044010.att.gz`  
20. `$ pset xissimarfgen badcolumfile=~/suzaku/caldb/data/suzaku/xis/bcf/ae_xi1_npmsci6_20160128.fits`  
	`$ xissimarfgen`
		`[instrument name]: xis1`  
		`[source mode]: UNIFORM`  
		`[minimum source radius]: 0.0`  
		`[maximum source radius]: 20`  
		`[# of ARF region]: 1`  
		`[region mode]: SKYREG`  
		`[region file]: ds9.reg`  
		`[output arf file]: arf_off3_dye20.fits`  
		`[limit mode]: MIXED`  
		`[# of photons]: 2000000`  
		`[calculation accuracy]: 0.005`  
		`input PHA or Event file to get observation mode[] YYMMDD_#_hist.xsl`  
		`[xis det-coordinates mask image]: expmap_off3_dye20.fits`  
		- ?? ~~/home/joking/suzaku/caldb/data/suzaku/xis/bcf/ae\_xi1\_calmask\_20051105.fits~~
		`[input GTI file]: YYMMDD_#_hist.xsl`  
		`[input attitude file]: ../auxil/ae509044010.att.gz`  
		`[input rmf file]: rmf_off3_dye20.fits`  
		`[energy step file]: medium`  
	- This step takes a VERY long time - allow time for it.  
	- As given in [*New Recipe! Step 3 for science observation data.][newrecipelink]  
21. `$ pset xisputpixelquality badcolumfile=~/suzaku/caldb/data/suzaku/xis/bcf/ae_xi1_npmsci6_20160128.fits`  
	`$ cp ~/suzaku/caldb/data/suzaku/xis/bcf/ae_xi1_nxbsci6_20160128.fits .`  
	`$ xisputpixelquality ae_xi1_nxbsci6_20160128.fits`  
	`Name of output event fits file[] ae_xi1_nxbsci6_20160128_badcolum.fits`  
	`$ ftcopy 'ae_xi1_nxbsci6_20160128_badcolum.fits[EVENTS][STATUS=0:524287]' ae_xi1_nxbsci6_20160128_rejectnpm.fits`  
	- (Roughly) As given in [*New Recipe! Steps 1 & 2 for background data.][newrecipelink]  
	- There are typos in the New Recipe; when referencing the NXB files it uses "xis?" where "xi?" is appropriate  
	- Additionally, we copy the nxb file to work with in the current working directory

22. ~~`cp ~/suzaku/caldb/data/suzaku/xis/bcf/ae_xi1_nxbsci6_20160128_rejectnpm.fits .` to current directory~~ 

23. `$ pset xisnxbgen nxbevent=ae_xi1_nxbsci6_20160128_rejectnpm.fits`  
	- As given in [*New Recipe! Steps 3 for background data.][newrecipelink]  

24. `$ xisnxbgen`  
	`[outputfile]: nxb_off3_dye20.fits`  
	`[input PHA or event]: YYMMDD_#_hist.xsl`  
	`[region mode]: SKYREG`  
	`[region file for output NXB]: ds9.reg`  
	`[input orbit file]: ../auxil/ae509044010.orb.gz`  
	`[input att file]: ../auxil/ae509044010.att.gz`  
	
25. Before proceeding, check that the following files have been created and are located in your relative analysis dir:  
	- PHA filename  
`$ ls *hist*`  
	- RESPFILE  
`$ ls *rmf*`  
	- ANCRFILE  
`$ ls *arf*`  
	- BACKFILE  
`$ ls *nxb*`  



[newrecipelink]:https://heasarc.gsfc.nasa.gov/docs/suzaku/analysis/xisnxbnew.html