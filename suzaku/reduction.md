[Previous Step: Observation Preparation](observation.md) | [Next Step: Spectral Analysis](spec.md)

# Data Reduction

1. `$ xselect`  
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
	`> Enter Event file list > xi1_events_GTI_off3.fits`  
	`YYMMDD_#:SUZAKU-XIS1-STANDARD > select mkf`  
	`> Boolean expression for filter file selection > SAA==0 && T_SAA>436 && COR>8 && ELV>10 && DYE_ELV>20`  
	`YYMMDD_#:SUZAKU-XIS1-STANDARD > filter region ds9.reg`    
	`YYMMDD_#:SUZAKU-XIS1-STANDARD > extract all`  
	`YYMMDD_#:SUZAKU-XIS1-STANDARD > exit`  
	`> Save this session? > y`  
	
	18.5 `cp YYMMDD_#_hist.xsl hist_off3_dye20.fits`  
18. `$ xisrmfgen`   
	`Name of input PI or IMAGE file or NONE[] hist_off3_dye20.fits`  
	`Name of output RMF[]: rmf_off3_dye20.fits`  
19. `$ xisexpmapgen`  
	`output exposure map file[]: expmap_off3_dye20.fits`  
	`input PHA or EVENT file to get observation mode[] hist_off3_dye20.fits`  
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
		`input PHA or Event file to get observation mode[] hist_off3_dye20.fits`  
		`[xis det-coordinates mask image]: expmap_off3_dye20.fits`  
		- ?? ~~/home/joking/suzaku/caldb/data/suzaku/xis/bcf/ae\_xi1\_calmask\_20051105.fits~~
		`[input GTI file]: hist_off3_dye20.fits`  
		`[input attitude file]: ../auxil/ae509044010.att.gz`  
		`[input rmf file]: rmf_off3_dye20.fits`  
		`[energy step file]: medium`  
	- This step takes a VERY long time - allow time for it.  
	- As given in [*New Recipe! Step 3 for science observation data.][newrecipelink]  
21. ~~`$ pset xisputpixelquality badcolumfile=~/suzaku/caldb/data/suzaku/xis/bcf/ae_xi1_npmsci6_20160128.fits`~~  
	~~`$ cp ~/suzaku/caldb/data/suzaku/xis/bcf/ae_xi1_nxbsci6_20160128.fits .`~~  
	~~`$ xisputpixelquality ae_xi1_nxbsci6_20160128.fits`~~  
	~~`Name of output event fits file[] ae_xi1_nxbsci6_20160128_badcolum.fits`~~  
	~~`$ ftcopy 'ae_xi1_nxbsci6_20160128_badcolum.fits[EVENTS][STATUS=0:524287]' ae_xi1_nxbsci6_20160128_rejectnpm.fits`~~  
	- ~~(Roughly) As given in [*New Recipe! Steps 1 & 2 for background data.][newrecipelink]~~  
	- ~~There are typos in the New Recipe; when referencing the NXB files it uses "xis?" where "xi?" is appropriate~~  
	- ~~Additionally, we copy the nxb file to work with in the current working directory~~

22. ~~`cp ~/suzaku/caldb/data/suzaku/xis/bcf/ae_xi1_nxbsci6_20160128_rejectnpm.fits .` to current directory~~ 

23. `$ pset xisnxbgen nxbevent=~/suzaku/caldb/data/suzaku/xis/bcf/ae_xi1_nxbsci6_20160128_rejectnpm.fits`  
	- As given in [*New Recipe! Steps 3 for background data.][newrecipelink]  
	- This file was generated in a procedure pre-req for this part of the process. Currently step 0.5

24. `$ xisnxbgen`  
	`[outputfile]: nxb_off3_dye20.fits`  
	`[input PHA or event]: hist_off3_dye20.fits`  
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

cp hist file to hist\_off2\_dye20.fits (in earlier step when done with creating hist file)

inside 20analysis dir mkdir spec

copy the above files into this directory


[Previous Step: Observation Preparation](observation.md) | [Next Step: Spectral Analysis](spec.md)

[newrecipelink]:https://heasarc.gsfc.nasa.gov/docs/suzaku/analysis/xisnxbnew.html