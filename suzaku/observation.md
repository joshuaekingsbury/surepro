[Previous Step: Instrument Prep](instr.md) | [Next Step: Data Reduction](reduction.md)

# Preparing Observation

When extracting an observation data set (`$ tar xvf downloadedObservationData.tar`) it will create and extract to a directory titled according to the observation ID being extracted.

1. Navigate to directory 50.../xis/event_cl
2. `$ gunzip *.*`
	- gunzip everything in/to current working directory
3. `cd 50.../`
4. `mkdir analysis`
	- This will be the directory we use to analyze and process a single variation of the observation
	- Within this observation ID we will also make 3 more dirs (20analysis, 40analysis & 60analysis) so we have a dir each for DYE\_ELV>20, DYE\_ELV>40, DYE\_ELV>60 respectively
	- This naming convention allows for the terminal [TAB] auto-complete to be leveraged while remaining recognizable in the context of our recent notes and research
5. `cd analysis`
6. cp xi1\_3x3 + xi1\_5x5 to analysis dir from event_cl  
	- `$ cp ../xis/event_cl/ae50...xi1_0_3x3n069b_cl.evt .`  
	- `$ cp ../xis/event_cl/ae50...xi1_0_5x5n069b_cl.evt .`  
	- cp means "copy", then give file copying from and directory copying too
	- "." is current working directory
7. Look for bad colum file [*New Recipe! Steps 1 & 2 for science observation data.][newrecipelink] (Here steps 7-10)   
	- `~/suzaku/caldb/data/suzaku/xis/bcf/ae_xi1_npmsci6_20160128.fits`  
	- Use 6KeV most recent for xis1 as newest 2KeV is older than and doesn't contain necessary GTIs for Night X-Ray Background  (NXB)
	- [Use npm and nxb files related to observation date as given in this table][newrecipeperiodslink]  
	- ["sci" stand for "spaced-row charge injection"][sciinfolink]
	- In original procedure, files are merged before cleaning using New Recipe
8. `$ pset xisputpixelquality badcolumfile=~/YOUR/PATH/FROM/STEP/7`
	- Input path to badcolum file found in previous step
	- Make sure your working directory is the relative analysis folder
9. `$ xisputpixelquality ae50...xi1_0_3x3n069b_cl.evt`  
	`output file: badcolum_3x3_off3.fits`
	- Repeat this step for 5x5 file
10. `ftcopy badcolum_3x3_off3.fits[EVENTS][STATUS=0:524287] ftcopy_3x3_524287_off3.fits `
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
14. `$ cp xi1_events_GTI_off3.fits ../xis/event_cl`  
  14.5. `cd ../20analysis`  
  change to analysis directory relative to DYE (20analysis in following steps; when repeating: 40analysis, 60analysis)
  
[Previous Step: Instrument Prep](instr.md) | [Next Step: Data Reduction](reduction.md)
  
[newrecipelink]:https://heasarc.gsfc.nasa.gov/docs/suzaku/analysis/xisnxbnew.html
[newrecipeperiodslink]:https://darts.isas.jaxa.jp/astro/suzaku/analysis/xis/nxb_new/
[sciinfolink]:https://heasarc.gsfc.nasa.gov/docs/suzaku/analysis/sci.html
