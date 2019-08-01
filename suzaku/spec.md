  
$ cd ~/suzaku/off-field3/509044010/analysis  
  
$ ls *hist*  
  
$ ls *arf*  
  
$ ls *rmf*  
  
$ ls *nxb*  
  
$ mkdir spec/  
  
$ cp hist,arf,rmf,nxb spec/  
  
$ cd spec/  
  
$ ls  
  
$ heainit  
  
$ cdbinit  
  
$ grppha  
Please enter PHA filename[ ] 190529_1_hist.xsl  
Please enter output filename[ ] off-field3_grp_spec.fits  
GRPPHA[] chkey RESPFILE off-field3_rmf.fits  
GRPPHA[] chkey ANCRFILE off-field3_arf.fits  
GRPPHA[] chkey BACKFILE off-field3_nxb.fits  
- Can be hist file... under other circumstances  
GRPPHA[] group min 25  
GRPPHA[] exit  
 ... written the PHA data Extension  
 ...... exiting, changes written to file : off-field3_grp_spec.fits  
 ** grppha 3.0.1 completed successfully  
  
$ mkdir spec/  
  
$ xspec  
  
		XSPEC version: 12.10.1  
	Build Date/Time: Tue May 21 15:51:45 2019  
  
XSPEC12>data off-field3_grp_spec.fits  
  
1 spectrum  in use  
   
Spectral Data File: off-field3_grp_spec.fits  Spectrum 1  
Net count rate (cts/s) for Spectrum:1  4.417e-01 +/- 3.573e-03 (50.4 % total)  
 Assigned to Data Group 1 and Plot Group 1  
  Noticed Channels:  1-1358  
  Telescope: SUZAKU Instrument: XIS1  Channel Type: PI  
  Exposure Time: 7.227e+04 sec  
 Using fit statistic: chi  
 Using test statistic: chi  
 Using Background File                off-field3_nxb.fits  
  Background Exposure Time: 6.63e+05 sec  
 Using Response (RMF) File            off-field3_rmf.fits for Source 1  
 Using Auxiliary Response (ARF) File  off-field3_arf.fits  
-Double check here that background, RMF, and ARF files have been read  
  
XSPEC12>cpd /xw  
XSPEC12>setplot energy  
XSPEC12>iplot data  
PLT> exit  
  
XSPEC12>ignore 0.0-0.3 5.0-**  
    57 channels (1-57) ignored in spectrum #     1  
   858 channels (501-1358) ignored in spectrum #     1  
  
XSPEC12>iplot data  
PLT> exit  
  
XSPEC12>mo apec+wabs*(apec+po)  
  
Input parameter value, delta, min, bot, top, and max values for ...  
  
1:apec:kT>0.1  
  
2:apec:Abundanc>  
  
3:apec:Redshift>  
  
4:apec:norm>1  
  
5:wabs:nH>0.059  
  
6:apec:kT>0.22  
  
7:apec:Abundanc>  
  
8:apec:Redshift>  
  
9:apec:norm>1  
  
10:powerlaw:PhoIndex>1.52  
  
11:powerlaw:norm>1  
  
========================================================================  
Model apec<1> + wabs<2>(apec<3> + powerlaw<4>) Source No.: 1   Active/On  
Model Model Component  Parameter  Unit     Value  
 par  comp  
   1    1   apec       kT         keV      0.100000     +/-  0.0            
   2    1   apec       Abundanc            1.00000      frozen  
   3    1   apec       Redshift            0.0          frozen  
   4    1   apec       norm                1.00000      +/-  0.0            
   5    2   wabs       nH         10^22    5.90000E-02  +/-  0.0            
   6    3   apec       kT         keV      0.220000     +/-  0.0            
   7    3   apec       Abundanc            1.00000      frozen  
   8    3   apec       Redshift            0.0          frozen  
   9    3   apec       norm                1.00000      +/-  0.0            
  10    4   powerlaw   PhoIndex            1.52000      +/-  0.0            
  11    4   powerlaw   norm                1.00000      +/-  0.0            
________________________________________________________________________  
  
Reading APEC data from 3.0.9  
  
  
**************************************************************  
The wabs model is obsolete and is only included for comparison  
with historical results. The tbabs model should be used for  
the ISM or phabs for general photoelectric absorption.  
**************************************************************  
  
Fit statistic : Chi-Squared =   2.170030e+09 using 443 PHA bins.  
  
Test statistic : Chi-Squared =   2.170030e+09 using 443 PHA bins.  
 Reduced chi-squared =   4.977133e+06 for    436 degrees of freedom   
 Null hypothesis probability =   0.000000e+00  
 Current data and model not fit yet.  
  
XSPEC12>freeze 5  
  
Fit statistic : Chi-Squared =   2.170030e+09 using 443 PHA bins.  
  
Test statistic : Chi-Squared =   2.170030e+09 using 443 PHA bins.  
 Reduced chi-squared =   4.965743e+06 for    437 degrees of freedom   
 Null hypothesis probability =   0.000000e+00  
 Current data and model not fit yet.  
  
XSPEC12>renorm  
  
Fit statistic : Chi-Squared =        1021.32 using 443 PHA bins.  
  
Test statistic : Chi-Squared =        1021.32 using 443 PHA bins.  
 Reduced chi-squared =        2.33712 for    437 degrees of freedom   
 Null hypothesis probability =   9.443373e-49  
 Current data and model not fit yet.  
  
XSPEC12>fit  
                                   Parameters  
Chi-Squared  |beta|/N    Lvl          1:kT        4:norm          6:kT        9:norm   10:PhoIndex       11:norm  
984.129      14698.5      -2     0.0764013    0.00994760      0.239856   0.000835205       1.30038    0.00170274  
561.655      49331.2      -3     0.0810247     0.0186757      0.215072    0.00131926       1.31120    0.00172462  
545.188      3174.38      -2     0.0773274     0.0195087      0.213917    0.00142421       1.32669    0.00175119  
544.474      613.238      -2     0.0738645     0.0229257      0.204423    0.00160136       1.33299    0.00176119  
542.883      2575.8       -2     0.0710891     0.0276283      0.199078    0.00177299       1.33625    0.00176632  
540.911      2282.58      -3     0.0645145     0.0423102      0.183507    0.00230419       1.34476    0.00178006  
537.068      2912.94      -1     0.0640822     0.0454572      0.188037    0.00219130       1.34567    0.00178176  
536.237      303.044      -1     0.0635005     0.0478230      0.189464    0.00215589       1.34492    0.00178002  
535.659      33.0998      -1     0.0629123     0.0501003      0.189821    0.00214927       1.34428    0.00177888  
535.099      41.6937      -1     0.0623327     0.0524282      0.189803    0.00215385       1.34401    0.00177843  
Number of trials exceeded: continue fitting? y  
534.526      70.0411      -1     0.0617670     0.0548637      0.189639    0.00216299       1.34399    0.00177841  
533.938      86.1742      -1     0.0612178     0.0574328      0.189412    0.00217427       1.34414    0.00177864  
533.336      95.4653      -1     0.0606866     0.0601479      0.189153    0.00218682       1.34437    0.00177900  
532.722      101.506      -1     0.0601747     0.0630146      0.188872    0.00220034       1.34467    0.00177945  
532.1        105.936      -1     0.0596832     0.0660341      0.188575    0.00221472       1.34500    0.00177996  
531.475      109.417      -1     0.0592132     0.0692036      0.188265    0.00222992       1.34536    0.00178051  
530.852      112.166      -1     0.0587657     0.0725163      0.187942    0.00224590       1.34575    0.00178110  
530.237      114.205      -1     0.0583415     0.0759607      0.187608    0.00226263       1.34616    0.00178173  
529.636      115.476      -1     0.0579416     0.0795204      0.187265    0.00228003       1.34659    0.00178239  
529.056      115.894      -1     0.0575665     0.0831734      0.186916    0.00229802       1.34704    0.00178308  
Number of trials exceeded: continue fitting? y  
528.505      115.382      -1     0.0572168     0.0868927      0.186563    0.00231647       1.34751    0.00178379  
527.987      113.883      -1     0.0568927     0.0906459      0.186208    0.00233524       1.34799    0.00178452  
527.871      111.38       -2     0.0551048      0.112133      0.184038    0.00244942       1.35096    0.00178914  
524.934      2116.91      -3     0.0542072      0.135984      0.181903    0.00257779       1.35458    0.00179470  
524.891      348.394      -4     0.0540775      0.139398      0.181873    0.00258531       1.35514    0.00179546  
524.88       209.734      -5     0.0539277      0.140751      0.181870    0.00258519       1.35521    0.00179554  
524.868      161.133      -6     0.0536905      0.142951      0.181863    0.00258545       1.35525    0.00179561  
524.861      94.1594      -7     0.0532843      0.146884      0.181846    0.00258619       1.35533    0.00179573  
======================================================================  
 Variances and Principal Axes  
                 1        4        6        9       10       11    
 6.5307E-10| -0.0040  -0.0003  -0.0046  -0.0927   0.0010  -0.9957    
 8.4953E-09|  0.0609   0.0052   0.0249   0.9935   0.0017  -0.0929    
 3.5500E-07| -0.9918  -0.0933   0.0637   0.0595   0.0002  -0.0018    
 1.0166E-05|  0.0605   0.0188   0.9969  -0.0291   0.0354  -0.0021    
 1.2281E-02|  0.0944  -0.9947   0.0143  -0.0008  -0.0387  -0.0001    
 1.2238E-03|  0.0016  -0.0392  -0.0349  -0.0006   0.9986   0.0012    
----------------------------------------------------------------------  
  
========================================================================  
  Covariance Matrix  
        1           2           3           4           5           6     
   1.099e-04  -1.153e-03   1.714e-05  -1.013e-06  -4.283e-05  -6.472e-08  
  -1.153e-03   1.215e-02  -1.733e-04   1.028e-05   4.245e-04   6.423e-07  
   1.714e-05  -1.733e-04   1.412e-05  -4.143e-07  -4.905e-05  -8.205e-08  
  -1.013e-06   1.028e-05  -4.143e-07   2.736e-08  -3.709e-07  -4.496e-10  
  -4.283e-05   4.245e-04  -4.905e-05  -3.709e-07   1.239e-03   1.474e-06  
  -6.472e-08   6.423e-07  -8.205e-08  -4.496e-10   1.474e-06   2.525e-09  
------------------------------------------------------------------------  
  
========================================================================  
Model apec<1> + wabs<2>(apec<3> + powerlaw<4>) Source No.: 1   Active/On  
Model Model Component  Parameter  Unit     Value  
 par  comp  
   1    1   apec       kT         keV      5.32843E-02  +/-  1.04814E-02    
   2    1   apec       Abundanc            1.00000      frozen  
   3    1   apec       Redshift            0.0          frozen  
   4    1   apec       norm                0.146884     +/-  0.110237       
   5    2   wabs       nH         10^22    5.90000E-02  frozen  
   6    3   apec       kT         keV      0.181846     +/-  3.75716E-03    
   7    3   apec       Abundanc            1.00000      frozen  
   8    3   apec       Redshift            0.0          frozen  
   9    3   apec       norm                2.58619E-03  +/-  1.65416E-04    
  10    4   powerlaw   PhoIndex            1.35533      +/-  3.51969E-02    
  11    4   powerlaw   norm                1.79573E-03  +/-  5.02477E-05    
________________________________________________________________________  
  
  
Fit statistic : Chi-Squared =         524.86 using 443 PHA bins.  
  
Test statistic : Chi-Squared =         524.86 using 443 PHA bins.  
 Reduced chi-squared =         1.2011 for    437 degrees of freedom   
 Null hypothesis probability =   2.435056e-03  
  
XSPEC12>iplot data  
PLT> exit  
  
XSPEC12>iplot data resid  
PLT> exit  
  
XSPEC12>mo apec+wabs*(apec+po)+gauss  
  
Input parameter value, delta, min, bot, top, and max values for ...  
  
1:apec:kT>0.1  
  
2:apec:Abundanc>  
  
3:apec:Redshift>  
  
4:apec:norm>1  
  
5:wabs:nH>0.059  
  
6:apec:kT>0.22  
  
7:apec:Abundanc>  
  
8:apec:Redshift>  
  
9:apec:norm>1  
  
10:powerlaw:PhoIndex>1.52  
  
11:powerlaw:norm>1  
  
12:gaussian:LineE>0.525  
  
13:gaussian:Sigma>0.001  
  
14:gaussian:norm>1  
  
========================================================================  
Model apec<1> + wabs<2>(apec<3> + powerlaw<4>) + gaussian<5> Source No.: 1   Active/On  
Model Model Component  Parameter  Unit     Value  
 par  comp  
   1    1   apec       kT         keV      0.100000     +/-  0.0            
   2    1   apec       Abundanc            1.00000      frozen  
   3    1   apec       Redshift            0.0          frozen  
   4    1   apec       norm                1.00000      +/-  0.0            
   5    2   wabs       nH         10^22    5.90000E-02  +/-  0.0            
   6    3   apec       kT         keV      0.220000     +/-  0.0            
   7    3   apec       Abundanc            1.00000      frozen  
   8    3   apec       Redshift            0.0          frozen  
   9    3   apec       norm                1.00000      +/-  0.0            
  10    4   powerlaw   PhoIndex            1.52000      +/-  0.0            
  11    4   powerlaw   norm                1.00000      +/-  0.0            
  12    5   gaussian   LineE      keV      0.525000     +/-  0.0            
  13    5   gaussian   Sigma      keV      1.00000E-03  +/-  0.0            
  14    5   gaussian   norm                1.00000      +/-  0.0            
________________________________________________________________________  
  
  
Fit statistic : Chi-Squared =   3.325779e+09 using 443 PHA bins.  
  
Test statistic : Chi-Squared =   3.325779e+09 using 443 PHA bins.  
 Reduced chi-squared =   7.680782e+06 for    433 degrees of freedom   
 Null hypothesis probability =   0.000000e+00  
 Current data and model not fit yet.  
  
XSPEC12>freeze 5 12 13  
  
Fit statistic : Chi-Squared =   3.325779e+09 using 443 PHA bins.  
  
Test statistic : Chi-Squared =   3.325779e+09 using 443 PHA bins.  
 Reduced chi-squared =   7.627933e+06 for    436 degrees of freedom   
 Null hypothesis probability =   0.000000e+00  
 Current data and model not fit yet.  
  
XSPEC12>renorm  
  
Fit statistic : Chi-Squared =        1694.65 using 443 PHA bins.  
  
Test statistic : Chi-Squared =        1694.65 using 443 PHA bins.  
 Reduced chi-squared =        3.88681 for    436 degrees of freedom   
 Null hypothesis probability =  1.546793e-147  
 Current data and model not fit yet.  
  
XSPEC12>fit  
                                   Parameters  
Chi-Squared  |beta|/N    Lvl          1:kT        4:norm          6:kT        9:norm   10:PhoIndex       11:norm       14:norm  
1403.05      107098       -3     0.0347918     0.0133268      0.238550    0.00114127       1.19988    0.00166570   0.000253229  
1341.29      56861.4       1     0.0406140     0.0416744      0.238486    0.00114726       1.20089    0.00166569   0.000258799  
547.184      55520.7       0     0.0556385      0.115591      0.237753    0.00119750       1.20959    0.00166528   0.000305718  
508.709      22376         0     0.0558004      0.117176      0.235367    0.00129982       1.23824    0.00165275   0.000382911  
495.056      8868.26      -1     0.0556957      0.115327      0.222993    0.00147676       1.27341    0.00167152   0.000410672  
493.454      1967.15      -2     0.0551367      0.123382      0.217020    0.00156970       1.29513    0.00170184   0.000394776  
492.624      556.978      -3     0.0546660      0.133539      0.213171    0.00162912       1.30345    0.00171519   0.000389667  
492.618      772.141      -4     0.0537409      0.151180      0.198422    0.00192172       1.31429    0.00173247   0.000348266  
================================================================================  
 Variances and Principal Axes  
                 1        4        6        9       10       11       14    
 6.0591E-10| -0.0145  -0.0005  -0.0029  -0.1562   0.0009  -0.9829  -0.0959    
 1.6106E-09|  0.0729   0.0021   0.0004   0.2685   0.0005  -0.1365   0.9508    
 5.5272E-09| -0.0639  -0.0021  -0.0179  -0.9467  -0.0014   0.1232   0.2900    
 6.5808E-08|  0.9941   0.0440  -0.0140  -0.0825  -0.0000   0.0036  -0.0524    
 8.8558E-05| -0.0042  -0.1883  -0.9785   0.0182  -0.0826   0.0004  -0.0038    
 8.4649E-04|  0.0446  -0.9632   0.1677  -0.0043   0.2053   0.0002  -0.0002    
 1.3102E-03|  0.0098  -0.1869   0.1182  -0.0011  -0.9752  -0.0012   0.0003    
--------------------------------------------------------------------------------  
  
====================================================================================  
  Covariance Matrix  
        1           2           3           4           5           6           7     
   1.880e-06  -3.873e-05   8.220e-06  -1.902e-07  -4.756e-06  -7.181e-09  -5.003e-09  
  -3.873e-05   8.342e-04  -1.494e-04   3.509e-06   7.272e-05   1.108e-07   1.377e-07  
   8.220e-06  -1.494e-04   1.269e-04  -2.365e-06  -1.147e-04  -1.865e-07   3.511e-07  
  -1.902e-07   3.509e-06  -2.365e-06   5.233e-08   5.728e-07   1.018e-09  -6.744e-09  
  -4.756e-06   7.272e-05  -1.147e-04   5.728e-07   1.282e-03   1.518e-06  -3.730e-07  
  -7.181e-09   1.108e-07  -1.865e-07   1.018e-09   1.518e-06   2.521e-09  -5.781e-10  
  -5.003e-09   1.377e-07   3.511e-07  -6.744e-09  -3.730e-07  -5.781e-10   3.540e-09  
------------------------------------------------------------------------------------  
  
========================================================================  
Model apec<1> + wabs<2>(apec<3> + powerlaw<4>) + gaussian<5> Source No.: 1   Active/On  
Model Model Component  Parameter  Unit     Value  
 par  comp  
   1    1   apec       kT         keV      5.37409E-02  +/-  1.37120E-03    
   2    1   apec       Abundanc            1.00000      frozen  
   3    1   apec       Redshift            0.0          frozen  
   4    1   apec       norm                0.151180     +/-  2.88819E-02    
   5    2   wabs       nH         10^22    5.90000E-02  frozen  
   6    3   apec       kT         keV      0.198422     +/-  1.12651E-02    
   7    3   apec       Abundanc            1.00000      frozen  
   8    3   apec       Redshift            0.0          frozen  
   9    3   apec       norm                1.92172E-03  +/-  2.28753E-04    
  10    4   powerlaw   PhoIndex            1.31429      +/-  3.58095E-02    
  11    4   powerlaw   norm                1.73247E-03  +/-  5.02094E-05    
  12    5   gaussian   LineE      keV      0.525000     frozen  
  13    5   gaussian   Sigma      keV      1.00000E-03  frozen  
  14    5   gaussian   norm                3.48266E-04  +/-  5.94948E-05    
________________________________________________________________________  
  
  
Fit statistic : Chi-Squared =         492.62 using 443 PHA bins.  
  
Test statistic : Chi-Squared =         492.62 using 443 PHA bins.  
 Reduced chi-squared =         1.1299 for    436 degrees of freedom   
 Null hypothesis probability =   3.127074e-02  
  
XSPEC12>setplot rebin 5  
XSPEC12>iplot data  
PLT> exit  
  
XSPEC12>iplot data resid  
PLT> exit  
  
XSPEC12>setplot rebin 5 5  
XSPEC12>plot data  
XSPEC12>setplot rebin 10 10  
XSPEC12>plot data  
XSPEC12>setplot rebin 7 7  
XSPEC12>plot data  
XSPEC12>iplot data resid  
PLT> exit  
  
XSPEC12>addcomp 6 gauss  
  
Input parameter value, delta, min, bot, top, and max values for ...  
  
15:gaussian:LineE>0.9  
  
16:gaussian:Sigma>0.001  
  
17:gaussian:norm>1  
  
Fit statistic : Chi-Squared =   4.397942e+09 using 443 PHA bins.  
  
Test statistic : Chi-Squared =   4.397942e+09 using 443 PHA bins.  
 Reduced chi-squared =   1.015691e+07 for    433 degrees of freedom   
 Null hypothesis probability =   0.000000e+00  
 Current data and model not fit yet.  
  
========================================================================  
Model apec<1> + wabs<2>(apec<3> + powerlaw<4>) + gaussian<5> + gaussian<6> Source No.: 1   Active/On  
Model Model Component  Parameter  Unit     Value  
 par  comp  
   1    1   apec       kT         keV      5.37409E-02  +/-  1.37120E-03    
   2    1   apec       Abundanc            1.00000      frozen  
   3    1   apec       Redshift            0.0          frozen  
   4    1   apec       norm                0.151180     +/-  2.88819E-02    
   5    2   wabs       nH         10^22    5.90000E-02  frozen  
   6    3   apec       kT         keV      0.198422     +/-  1.12651E-02    
   7    3   apec       Abundanc            1.00000      frozen  
   8    3   apec       Redshift            0.0          frozen  
   9    3   apec       norm                1.92172E-03  +/-  2.28753E-04    
  10    4   powerlaw   PhoIndex            1.31429      +/-  3.58095E-02    
  11    4   powerlaw   norm                1.73247E-03  +/-  5.02094E-05    
  12    5   gaussian   LineE      keV      0.525000     frozen  
  13    5   gaussian   Sigma      keV      1.00000E-03  frozen  
  14    5   gaussian   norm                3.48266E-04  +/-  5.94948E-05    
  15    6   gaussian   LineE      keV      0.900000     +/-  0.0            
  16    6   gaussian   Sigma      keV      1.00000E-03  +/-  0.0            
  17    6   gaussian   norm                1.00000      +/-  0.0            
  
________________________________________________________________________  
  
XSPEC12>freeze 16  
  
Fit statistic : Chi-Squared =   4.397942e+09 using 443 PHA bins.  
  
Test statistic : Chi-Squared =   4.397942e+09 using 443 PHA bins.  
 Reduced chi-squared =   1.013351e+07 for    434 degrees of freedom   
 Null hypothesis probability =   0.000000e+00  
 Current data and model not fit yet.  
  
XSPEC12>renorm  
  
Fit statistic : Chi-Squared =        7964.95 using 443 PHA bins.  
  
Test statistic : Chi-Squared =        7964.95 using 443 PHA bins.  
 Reduced chi-squared =        18.3524 for    434 degrees of freedom   
 Null hypothesis probability =   0.000000e+00  
 Current data and model not fit yet.  
  
XSPEC12>fit  
  
========================================================================  
Model apec<1> + wabs<2>(apec<3> + powerlaw<4>) + gaussian<5> + gaussian<6> Source No.: 1   Active/On  
Model Model Component  Parameter  Unit     Value  
 par  comp  
   1    1   apec       kT         keV      0.124412     +/-  1.22719E-02    
   2    1   apec       Abundanc            1.00000      frozen  
   3    1   apec       Redshift            0.0          frozen  
   4    1   apec       norm                3.05104E-03  +/-  9.98650E-04    
   5    2   wabs       nH         10^22    5.90000E-02  frozen  
   6    3   apec       kT         keV      64.0000      +/-  98.2533        
   7    3   apec       Abundanc            1.00000      frozen  
   8    3   apec       Redshift            0.0          frozen  
   9    3   apec       norm                9.87430E-03  +/-  1.91262E-03    
  10    4   powerlaw   PhoIndex            4.70193      +/-  0.487846       
  11    4   powerlaw   norm                4.12662E-04  +/-  1.29733E-04    
  12    5   gaussian   LineE      keV      0.525000     frozen  
  13    5   gaussian   Sigma      keV      1.00000E-03  frozen  
  14    5   gaussian   norm                2.34516E-20  +/-  2.62602E-05    
  15    6   gaussian   LineE      keV      0.916790     +/-  8.57773E-03    
  16    6   gaussian   Sigma      keV      1.00000E-03  frozen  
  17    6   gaussian   norm                9.93855E-05  +/-  1.70900E-05    
________________________________________________________________________  
  
  
Fit statistic : Chi-Squared =         548.40 using 443 PHA bins.  
  
Test statistic : Chi-Squared =         548.40 using 443 PHA bins.  
 Reduced chi-squared =         1.2636 for    434 degrees of freedom   
 Null hypothesis probability =   1.540747e-04  
  
XSPEC12>mo vapec+wabs*(vapec+po)+gauss+gauss+gauss  
  
Input parameter value, delta, min, bot, top, and max values for ...  
  
1:vapec:kT>0.099  
  
2:vapec:He>  
  
3:vapec:C>  
  
4:vapec:N>  
              1      -0.01(      0.01)          0          0       1000       1000  
5:vapec:O>0  
              1      -0.01(      0.01)          0          0       1000       1000  
6:vapec:Ne>  
              1      -0.01(      0.01)          0          0       1000       1000  
7:vapec:Mg>  
              1      -0.01(      0.01)          0          0       1000       1000  
8:vapec:Al>  
              1      -0.01(      0.01)          0          0       1000       1000  
9:vapec:Si>  
              1      -0.01(      0.01)          0          0       1000       1000  
10:vapec:S>  
              1      -0.01(      0.01)          0          0       1000       1000  
11:vapec:Ar>  
              1      -0.01(      0.01)          0          0       1000       1000  
12:vapec:Ca>  
              1      -0.01(      0.01)          0          0       1000       1000  
13:vapec:Fe>  
              1      -0.01(      0.01)          0          0       1000       1000  
14:vapec:Ni>  
              0      -0.01(      0.01)     -0.999     -0.999         10         10  
15:vapec:Redshift>  
              1       0.01(      0.01)          0          0      1e+20      1e+24  
16:vapec:norm>1  
              1      0.001(      0.01)          0          0     100000      1e+06  
17:wabs:nH>0.059  
            6.5       0.01(     0.065)     0.0808     0.0808     68.447     68.447  
18:vapec:kT>0.22  
              1      -0.01(      0.01)          0          0       1000       1000  
19:vapec:He>  
              1      -0.01(      0.01)          0          0       1000       1000  
20:vapec:C>  
              1      -0.01(      0.01)          0          0       1000       1000  
21:vapec:N>  
              1      -0.01(      0.01)          0          0       1000       1000  
22:vapec:O>0  
              1      -0.01(      0.01)          0          0       1000       1000  
23:vapec:Ne>  
              1      -0.01(      0.01)          0          0       1000       1000  
24:vapec:Mg>  
              1      -0.01(      0.01)          0          0       1000       1000  
25:vapec:Al>  
              1      -0.01(      0.01)          0          0       1000       1000  
26:vapec:Si>  
              1      -0.01(      0.01)          0          0       1000       1000  
27:vapec:S>  
              1      -0.01(      0.01)          0          0       1000       1000  
28:vapec:Ar>  
              1      -0.01(      0.01)          0          0       1000       1000  
29:vapec:Ca>  
              1      -0.01(      0.01)          0          0       1000       1000  
30:vapec:Fe>  
              1      -0.01(      0.01)          0          0       1000       1000  
31:vapec:Ni>  
              0      -0.01(      0.01)     -0.999     -0.999         10         10  
32:vapec:Redshift>  
              1       0.01(      0.01)          0          0      1e+20      1e+24  
33:vapec:norm>1  
              1       0.01(      0.01)         -3         -2          9         10  
34:powerlaw:PhoIndex>1.52  
              1       0.01(      0.01)          0          0      1e+20      1e+24  
35:powerlaw:norm>1  
            6.5       0.05(     0.065)          0          0      1e+06      1e+06  
36:gaussian:LineE>0.575  
            0.1       0.05(     0.001)          0          0         10         20  
37:gaussian:Sigma>0.001  
              1       0.01(      0.01)          0          0      1e+20      1e+24  
38:gaussian:norm>1  
            6.5       0.05(     0.065)          0          0      1e+06      1e+06  
39:gaussian:LineE>0.653  
            0.1       0.05(     0.001)          0          0         10         20  
40:gaussian:Sigma>0.001  
              1       0.01(      0.01)          0          0      1e+20      1e+24  
41:gaussian:norm>1  
            6.5       0.05(     0.065)          0          0      1e+06      1e+06  
42:gaussian:LineE>0.525  
            0.1       0.05(     0.001)          0          0         10         20  
43:gaussian:Sigma>0.001  
              1       0.01(      0.01)          0          0      1e+20      1e+24  
44:gaussian:norm>1  
  
========================================================================  
Model vapec<1> + wabs<2>(vapec<3> + powerlaw<4>) + gaussian<5> + gaussian<6> + gaussian<7> Source No.: 1   Active/On  
Model Model Component  Parameter  Unit     Value  
 par  comp  
   1    1   vapec      kT         keV      9.90000E-02  +/-  0.0            
   2    1   vapec      He                  1.00000      frozen  
   3    1   vapec      C                   1.00000      frozen  
   4    1   vapec      N                   1.00000      frozen  
   5    1   vapec      O                   0.0          frozen  
   6    1   vapec      Ne                  1.00000      frozen  
   7    1   vapec      Mg                  1.00000      frozen  
   8    1   vapec      Al                  1.00000      frozen  
   9    1   vapec      Si                  1.00000      frozen  
  10    1   vapec      S                   1.00000      frozen  
  11    1   vapec      Ar                  1.00000      frozen  
  12    1   vapec      Ca                  1.00000      frozen  
  13    1   vapec      Fe                  1.00000      frozen  
  14    1   vapec      Ni                  1.00000      frozen  
  15    1   vapec      Redshift            0.0          frozen  
  16    1   vapec      norm                1.00000      +/-  0.0            
  17    2   wabs       nH         10^22    5.90000E-02  +/-  0.0            
  18    3   vapec      kT         keV      0.220000     +/-  0.0            
  19    3   vapec      He                  1.00000      frozen  
  20    3   vapec      C                   1.00000      frozen  
  21    3   vapec      N                   1.00000      frozen  
  22    3   vapec      O                   0.0          frozen  
  23    3   vapec      Ne                  1.00000      frozen  
  24    3   vapec      Mg                  1.00000      frozen  
  25    3   vapec      Al                  1.00000      frozen  
  26    3   vapec      Si                  1.00000      frozen  
  27    3   vapec      S                   1.00000      frozen  
  28    3   vapec      Ar                  1.00000      frozen  
  29    3   vapec      Ca                  1.00000      frozen  
  30    3   vapec      Fe                  1.00000      frozen  
  31    3   vapec      Ni                  1.00000      frozen  
  32    3   vapec      Redshift            0.0          frozen  
  33    3   vapec      norm                1.00000      +/-  0.0            
  34    4   powerlaw   PhoIndex            1.52000      +/-  0.0            
  35    4   powerlaw   norm                1.00000      +/-  0.0            
  36    5   gaussian   LineE      keV      0.575000     +/-  0.0            
  37    5   gaussian   Sigma      keV      1.00000E-03  +/-  0.0            
  38    5   gaussian   norm                1.00000      +/-  0.0            
  39    6   gaussian   LineE      keV      0.653000     +/-  0.0            
  40    6   gaussian   Sigma      keV      1.00000E-03  +/-  0.0            
  41    6   gaussian   norm                1.00000      +/-  0.0            
  42    7   gaussian   LineE      keV      0.525000     +/-  0.0            
  43    7   gaussian   Sigma      keV      1.00000E-03  +/-  0.0            
  44    7   gaussian   norm                1.00000      +/-  0.0            
________________________________________________________________________  
  
  
Fit statistic : Chi-Squared =   5.113317e+09 using 443 PHA bins.  
  
Test statistic : Chi-Squared =   5.113317e+09 using 443 PHA bins.  
 Reduced chi-squared =   1.197498e+07 for    427 degrees of freedom   
 Null hypothesis probability =   0.000000e+00  
 Current data and model not fit yet.  
  
XSPEC12>freeze 17 37 40 43 42  
  
Fit statistic : Chi-Squared =   5.113317e+09 using 443 PHA bins.  
  
Test statistic : Chi-Squared =   5.113317e+09 using 443 PHA bins.  
 Reduced chi-squared =   1.183638e+07 for    432 degrees of freedom   
 Null hypothesis probability =   0.000000e+00  
 Current data and model not fit yet.  
  
XSPEC12>renorm  
  
Fit statistic : Chi-Squared =        2654.39 using 443 PHA bins.  
  
Test statistic : Chi-Squared =        2654.39 using 443 PHA bins.  
 Reduced chi-squared =        6.14441 for    432 degrees of freedom   
 Null hypothesis probability =  2.807274e-315  
 Current data and model not fit yet.  
  
XSPEC12>fit  
  
========================================================================  
Model vapec<1> + wabs<2>(vapec<3> + powerlaw<4>) + gaussian<5> + gaussian<6> + gaussian<7> Source No.: 1   Active/On  
Model Model Component  Parameter  Unit     Value  
 par  comp  
   1    1   vapec      kT         keV      0.173775     +/-  2.78842E-03    
   2    1   vapec      He                  1.00000      frozen  
   3    1   vapec      C                   1.00000      frozen  
   4    1   vapec      N                   1.00000      frozen  
   5    1   vapec      O                   0.0          frozen  
   6    1   vapec      Ne                  1.00000      frozen  
   7    1   vapec      Mg                  1.00000      frozen  
   8    1   vapec      Al                  1.00000      frozen  
   9    1   vapec      Si                  1.00000      frozen  
  10    1   vapec      S                   1.00000      frozen  
  11    1   vapec      Ar                  1.00000      frozen  
  12    1   vapec      Ca                  1.00000      frozen  
  13    1   vapec      Fe                  1.00000      frozen  
  14    1   vapec      Ni                  1.00000      frozen  
  15    1   vapec      Redshift            0.0          frozen  
  16    1   vapec      norm                6.54141E-03  +/-  2.49670E-04    
  17    2   wabs       nH         10^22    5.90000E-02  frozen  
  18    3   vapec      kT         keV      0.924987     +/-  0.152655       
  19    3   vapec      He                  1.00000      frozen  
  20    3   vapec      C                   1.00000      frozen  
  21    3   vapec      N                   1.00000      frozen  
  22    3   vapec      O                   0.0          frozen  
  23    3   vapec      Ne                  1.00000      frozen  
  24    3   vapec      Mg                  1.00000      frozen  
  25    3   vapec      Al                  1.00000      frozen  
  26    3   vapec      Si                  1.00000      frozen  
  27    3   vapec      S                   1.00000      frozen  
  28    3   vapec      Ar                  1.00000      frozen  
  29    3   vapec      Ca                  1.00000      frozen  
  30    3   vapec      Fe                  1.00000      frozen  
  31    3   vapec      Ni                  1.00000      frozen  
  32    3   vapec      Redshift            0.0          frozen  
  33    3   vapec      norm                1.38187E-04  +/-  4.35483E-05    
  34    4   powerlaw   PhoIndex            1.18626      +/-  4.55526E-02    
  35    4   powerlaw   norm                1.51286E-03  +/-  6.74399E-05    
  36    5   gaussian   LineE      keV      0.565718     +/-  6.24721E-03    
  37    5   gaussian   Sigma      keV      1.00000E-03  frozen  
  38    5   gaussian   norm                1.23452E-03  +/-  1.71315E-04    
  39    6   gaussian   LineE      keV      0.656814     +/-  7.55561E-03    
  40    6   gaussian   Sigma      keV      1.00000E-03  frozen  
  41    6   gaussian   norm                3.47020E-04  +/-  4.62775E-05    
  42    7   gaussian   LineE      keV      0.525000     frozen  
  43    7   gaussian   Sigma      keV      1.00000E-03  frozen  
  44    7   gaussian   norm                3.17637E-18  +/-  1.20340E-04    
________________________________________________________________________  
  
  
Fit statistic : Chi-Squared =         461.11 using 443 PHA bins.  
  
Test statistic : Chi-Squared =         461.11 using 443 PHA bins.  
 Reduced chi-squared =         1.0674 for    432 degrees of freedom   
 Null hypothesis probability =   1.607577e-01  
  
XSPEC12>newpar 36 0.575  
  
Fit statistic : Chi-Squared =         473.09 using 443 PHA bins.  
  
Test statistic : Chi-Squared =         473.09 using 443 PHA bins.  
 Reduced chi-squared =         1.0951 for    432 degrees of freedom   
 Null hypothesis probability =   8.404948e-02  
 Current data and model not fit yet.  
  
XSPEC12>freeze 36  
  
Fit statistic : Chi-Squared =         473.09 using 443 PHA bins.  
  
Test statistic : Chi-Squared =         473.09 using 443 PHA bins.  
 Reduced chi-squared =         1.0926 for    433 degrees of freedom   
 Null hypothesis probability =   8.934107e-02  
 Current data and model not fit yet.  
  
XSPEC12>newpar 39 0.653  
  
Fit statistic : Chi-Squared =         476.60 using 443 PHA bins.  
  
Test statistic : Chi-Squared =         476.60 using 443 PHA bins.  
 Reduced chi-squared =         1.1007 for    433 degrees of freedom   
 Null hypothesis probability =   7.254504e-02  
 Current data and model not fit yet.  
  
XSPEC12>freeze 39  
  
Fit statistic : Chi-Squared =         476.60 using 443 PHA bins.  
  
Test statistic : Chi-Squared =         476.60 using 443 PHA bins.  
 Reduced chi-squared =         1.0982 for    434 degrees of freedom   
 Null hypothesis probability =   7.727411e-02  
 Current data and model not fit yet.  
  
XSPEC12>fit  
  
========================================================================  
Model vapec<1> + wabs<2>(vapec<3> + powerlaw<4>) + gaussian<5> + gaussian<6> + gaussian<7> Source No.: 1   Active/On  
Model Model Component  Parameter  Unit     Value  
 par  comp  
   1    1   vapec      kT         keV      0.175221     +/-  2.38481E-03    
   2    1   vapec      He                  1.00000      frozen  
   3    1   vapec      C                   1.00000      frozen  
   4    1   vapec      N                   1.00000      frozen  
   5    1   vapec      O                   0.0          frozen  
   6    1   vapec      Ne                  1.00000      frozen  
   7    1   vapec      Mg                  1.00000      frozen  
   8    1   vapec      Al                  1.00000      frozen  
   9    1   vapec      Si                  1.00000      frozen  
  10    1   vapec      S                   1.00000      frozen  
  11    1   vapec      Ar                  1.00000      frozen  
  12    1   vapec      Ca                  1.00000      frozen  
  13    1   vapec      Fe                  1.00000      frozen  
  14    1   vapec      Ni                  1.00000      frozen  
  15    1   vapec      Redshift            0.0          frozen  
  16    1   vapec      norm                6.46237E-03  +/-  2.42883E-04    
  17    2   wabs       nH         10^22    5.90000E-02  frozen  
  18    3   vapec      kT         keV      0.966781     +/-  0.147677       
  19    3   vapec      He                  1.00000      frozen  
  20    3   vapec      C                   1.00000      frozen  
  21    3   vapec      N                   1.00000      frozen  
  22    3   vapec      O                   0.0          frozen  
  23    3   vapec      Ne                  1.00000      frozen  
  24    3   vapec      Mg                  1.00000      frozen  
  25    3   vapec      Al                  1.00000      frozen  
  26    3   vapec      Si                  1.00000      frozen  
  27    3   vapec      S                   1.00000      frozen  
  28    3   vapec      Ar                  1.00000      frozen  
  29    3   vapec      Ca                  1.00000      frozen  
  30    3   vapec      Fe                  1.00000      frozen  
  31    3   vapec      Ni                  1.00000      frozen  
  32    3   vapec      Redshift            0.0          frozen  
  33    3   vapec      norm                1.33076E-04  +/-  4.20479E-05    
  34    4   powerlaw   PhoIndex            1.18177      +/-  4.55184E-02    
  35    4   powerlaw   norm                1.50610E-03  +/-  6.71414E-05    
  36    5   gaussian   LineE      keV      0.575000     frozen  
  37    5   gaussian   Sigma      keV      1.00000E-03  frozen  
  38    5   gaussian   norm                1.01063E-03  +/-  8.22666E-05    
  39    6   gaussian   LineE      keV      0.653000     frozen  
  40    6   gaussian   Sigma      keV      1.00000E-03  frozen  
  41    6   gaussian   norm                3.17174E-04  +/-  3.83671E-05    
  42    7   gaussian   LineE      keV      0.525000     frozen  
  43    7   gaussian   Sigma      keV      1.00000E-03  frozen  
  44    7   gaussian   norm                8.21469E-05  +/-  5.64701E-05    
________________________________________________________________________  
  
  
Fit statistic : Chi-Squared =         465.17 using 443 PHA bins.  
  
Test statistic : Chi-Squared =         465.17 using 443 PHA bins.  
 Reduced chi-squared =         1.0718 for    434 degrees of freedom   
 Null hypothesis probability =   1.454493e-01  
  
XSPEC12>ipl data resid  
PLT> exit  
  
XSPEC12>setplot add  
XSPEC12>ipl data resid  
PLT> exit  
  
XSPEC12>newpar 1 0.1  
  
Fit statistic : Chi-Squared =         909.09 using 443 PHA bins.  
  
Test statistic : Chi-Squared =         909.09 using 443 PHA bins.  
 Reduced chi-squared =         2.0947 for    434 degrees of freedom   
 Null hypothesis probability =   8.090782e-36  
 Current data and model not fit yet.  
  
XSPEC12>newpar 18 0.2  
  
Fit statistic : Chi-Squared =        1063.08 using 443 PHA bins.  
  
Test statistic : Chi-Squared =        1063.08 using 443 PHA bins.  
 Reduced chi-squared =        2.44950 for    434 degrees of freedom   
 Null hypothesis probability =   1.245510e-54  
 Current data and model not fit yet.  
  
XSPEC12>addcomp 8 gauss  
  
Input parameter value, delta, min, bot, top, and max values for ...  
  
45:gaussian:LineE>0.9  
  
46:gaussian:Sigma>0.001  
  
47:gaussian:norm>1  
  
Fit statistic : Chi-Squared =   4.396792e+09 using 443 PHA bins.  
  
Test statistic : Chi-Squared =   4.396792e+09 using 443 PHA bins.  
 Reduced chi-squared =   1.020137e+07 for    431 degrees of freedom   
 Null hypothesis probability =   0.000000e+00  
 Current data and model not fit yet.  
  
========================================================================  
Model vapec<1> + wabs<2>(vapec<3> + powerlaw<4>) + gaussian<5> + gaussian<6> + gaussian<7> + gaussian<8> Source No.: 1   Active/On  
Model Model Component  Parameter  Unit     Value  
 par  comp  
   1    1   vapec      kT         keV      0.100000     +/-  2.38481E-03    
   2    1   vapec      He                  1.00000      frozen  
   3    1   vapec      C                   1.00000      frozen  
   4    1   vapec      N                   1.00000      frozen  
   5    1   vapec      O                   0.0          frozen  
   6    1   vapec      Ne                  1.00000      frozen  
   7    1   vapec      Mg                  1.00000      frozen  
   8    1   vapec      Al                  1.00000      frozen  
   9    1   vapec      Si                  1.00000      frozen  
  10    1   vapec      S                   1.00000      frozen  
  11    1   vapec      Ar                  1.00000      frozen  
  12    1   vapec      Ca                  1.00000      frozen  
  13    1   vapec      Fe                  1.00000      frozen  
  14    1   vapec      Ni                  1.00000      frozen  
  15    1   vapec      Redshift            0.0          frozen  
  16    1   vapec      norm                6.46237E-03  +/-  2.42883E-04    
  17    2   wabs       nH         10^22    5.90000E-02  frozen  
  18    3   vapec      kT         keV      0.200000     +/-  0.147677       
  19    3   vapec      He                  1.00000      frozen  
  20    3   vapec      C                   1.00000      frozen  
  21    3   vapec      N                   1.00000      frozen  
  22    3   vapec      O                   0.0          frozen  
  23    3   vapec      Ne                  1.00000      frozen  
  24    3   vapec      Mg                  1.00000      frozen  
  25    3   vapec      Al                  1.00000      frozen  
  26    3   vapec      Si                  1.00000      frozen  
  27    3   vapec      S                   1.00000      frozen  
  28    3   vapec      Ar                  1.00000      frozen  
  29    3   vapec      Ca                  1.00000      frozen  
  30    3   vapec      Fe                  1.00000      frozen  
  31    3   vapec      Ni                  1.00000      frozen  
  32    3   vapec      Redshift            0.0          frozen  
  33    3   vapec      norm                1.33076E-04  +/-  4.20479E-05    
  34    4   powerlaw   PhoIndex            1.18177      +/-  4.55184E-02    
  35    4   powerlaw   norm                1.50610E-03  +/-  6.71414E-05    
  36    5   gaussian   LineE      keV      0.575000     frozen  
  37    5   gaussian   Sigma      keV      1.00000E-03  frozen  
  38    5   gaussian   norm                1.01063E-03  +/-  8.22666E-05    
  39    6   gaussian   LineE      keV      0.653000     frozen  
  40    6   gaussian   Sigma      keV      1.00000E-03  frozen  
  41    6   gaussian   norm                3.17174E-04  +/-  3.83671E-05    
  42    7   gaussian   LineE      keV      0.525000     frozen  
  43    7   gaussian   Sigma      keV      1.00000E-03  frozen  
  44    7   gaussian   norm                8.21469E-05  +/-  5.64701E-05    
  45    8   gaussian   LineE      keV      0.900000     +/-  0.0            
  46    8   gaussian   Sigma      keV      1.00000E-03  +/-  0.0            
  47    8   gaussian   norm                1.00000      +/-  0.0            
  
________________________________________________________________________  
  
XSPEC12>fit  
  
========================================================================  
Model vapec<1> + wabs<2>(vapec<3> + powerlaw<4>) + gaussian<5> + gaussian<6> + gaussian<7> + gaussian<8> Source No.: 1   Active/On  
Model Model Component  Parameter  Unit     Value  
 par  comp  
   1    1   vapec      kT         keV      0.774863     +/-  2.42894E-02    
   2    1   vapec      He                  1.00000      frozen  
   3    1   vapec      C                   1.00000      frozen  
   4    1   vapec      N                   1.00000      frozen  
   5    1   vapec      O                   0.0          frozen  
   6    1   vapec      Ne                  1.00000      frozen  
   7    1   vapec      Mg                  1.00000      frozen  
   8    1   vapec      Al                  1.00000      frozen  
   9    1   vapec      Si                  1.00000      frozen  
  10    1   vapec      S                   1.00000      frozen  
  11    1   vapec      Ar                  1.00000      frozen  
  12    1   vapec      Ca                  1.00000      frozen  
  13    1   vapec      Fe                  1.00000      frozen  
  14    1   vapec      Ni                  1.00000      frozen  
  15    1   vapec      Redshift            0.0          frozen  
  16    1   vapec      norm                3.51465E-04  +/-  3.61419E-05    
  17    2   wabs       nH         10^22    5.90000E-02  frozen  
  18    3   vapec      kT         keV      32.8845      +/-  94.1824        
  19    3   vapec      He                  1.00000      frozen  
  20    3   vapec      C                   1.00000      frozen  
  21    3   vapec      N                   1.00000      frozen  
  22    3   vapec      O                   0.0          frozen  
  23    3   vapec      Ne                  1.00000      frozen  
  24    3   vapec      Mg                  1.00000      frozen  
  25    3   vapec      Al                  1.00000      frozen  
  26    3   vapec      Si                  1.00000      frozen  
  27    3   vapec      S                   1.00000      frozen  
  28    3   vapec      Ar                  1.00000      frozen  
  29    3   vapec      Ca                  1.00000      frozen  
  30    3   vapec      Fe                  1.00000      frozen  
  31    3   vapec      Ni                  1.00000      frozen  
  32    3   vapec      Redshift            0.0          frozen  
  33    3   vapec      norm                6.69267E-03  +/-  6.17834E-03    
  34    4   powerlaw   PhoIndex            8.31468      +/-  0.258640       
  35    4   powerlaw   norm                2.48503E-05  +/-  6.71047E-06    
  36    5   gaussian   LineE      keV      0.575000     frozen  
  37    5   gaussian   Sigma      keV      1.00000E-03  frozen  
  38    5   gaussian   norm                9.08889E-04  +/-  8.18481E-05    
  39    6   gaussian   LineE      keV      0.653000     frozen  
  40    6   gaussian   Sigma      keV      1.00000E-03  frozen  
  41    6   gaussian   norm                3.90581E-04  +/-  4.01113E-05    
  42    7   gaussian   LineE      keV      0.525000     frozen  
  43    7   gaussian   Sigma      keV      1.00000E-03  frozen  
  44    7   gaussian   norm                3.32534E-04  +/-  6.12811E-05    
  45    8   gaussian   LineE      keV      1.96981      +/-  4.21003        
  46    8   gaussian   Sigma      keV      2.09662      +/-  2.93737        
  47    8   gaussian   norm                7.54629E-04  +/-  2.54157E-03    
________________________________________________________________________  
  
  
Fit statistic : Chi-Squared =         437.52 using 443 PHA bins.  
  
Test statistic : Chi-Squared =         437.52 using 443 PHA bins.  
 Reduced chi-squared =         1.0151 for    431 degrees of freedom   
 Null hypothesis probability =   4.037126e-01  
  
XSPEC12>ipl data resid  
PLT> exit  
  
XSPEC12>exit  
 XSPEC: quit
