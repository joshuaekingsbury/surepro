
only need to do this .5 step once per instrument. Check to see if necessary reject file has been created prior before continuing

\_0.5. `cd ~/suzaku/caldb/data/suzaku/xis/bcf`  
	`$ pset xisputpixelquality badcolumfile=ae_xi1_npmsci6_20160128.fits`    
	`$ xisputpixelquality ae_xi1_nxbsci6_20160128.fits`  
	`Name of output event fits file[] ae_xi1_nxbsci6_20160128_badcolum.fits`  
	`$ ftcopy 'ae_xi1_nxbsci6_20160128_badcolum.fits[EVENTS][STATUS=0:524287]' ae_xi1_nxbsci6_20160128_rejectnpm.fits`  
	`$ rm ae_xi1_nxbsci6_20160128_badcolum.fits`  
	- (Roughly) As given in [*New Recipe! Steps 1 & 2 for background data.][newrecipelink]  
	- There are typos in the New Recipe; when referencing the NXB files it uses "xis?" where "xi?" is appropriate  
	- Instead of doing this much, much later, and repeatedly for each analysis, taking care of it now removes a few steps that don't need repeated every time later    