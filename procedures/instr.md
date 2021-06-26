[Research Index](index.md) | [Next Step: Observation Preparation](observation.md)

# Night X-Ray Background Cleanup

Only need to do this step once per instrument. Check to see if necessary reject file has been created prior before continuing

1. `cd ~/suzaku/caldb/data/suzaku/xis/bcf`  
	`$ pset xisputpixelquality badcolumfile=ae_xi1_npmsci6_20160128.fits`    
	`$ xisputpixelquality ae_xi1_nxbsci6_20160128.fits`  
	`Name of output event fits file[] ae_xi1_nxbsci6_20160128_badcolum.fits`  
	`$ ftcopy 'ae_xi1_nxbsci6_20160128_badcolum.fits[EVENTS][STATUS=0:524287]' ae_xi1_nxbsci6_20160128_rejectnpm.fits`  
	`$ rm ae_xi1_nxbsci6_20160128_badcolum.fits`  
	- (Roughly) As given in [*New Recipe! Steps 1 & 2 for background data.][newrecipelink]  
	- [Use npm and nxb files related to observation date as given in this table][newrecipeperiodslink]  
	- ["sci" stand for "spaced-row charge injection"][sciinfolink]
	- There are typos in the New Recipe; when referencing the NXB files it uses "xis?" where "xi?" is appropriate  
	- Instead of doing this much, much later, and repeatedly for each analysis, taking care of it now removes a few steps that don't need repeated every time later    
	
[Research Index](index.md) | [Next Step: Observation Preparation](observation.md)

[newrecipelink]:https://heasarc.gsfc.nasa.gov/docs/suzaku/analysis/xisnxbnew.html
[newrecipeperiodslink]:https://darts.isas.jaxa.jp/astro/suzaku/analysis/xis/nxb_new/
[sciinfolink]:https://heasarc.gsfc.nasa.gov/docs/suzaku/analysis/sci.html
