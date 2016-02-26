# Setup

## Platform

|setting  |value                        |
|:--------|:----------------------------|
|version  |R version 3.2.1 (2015-06-18) |
|system   |x86_64, darwin13.4.0         |
|ui       |RStudio (0.99.601)           |
|language |(EN)                         |
|collate  |en_US.UTF-8                  |
|tz       |America/Chicago              |

## Packages

|package   |*  |version  |date       |source         |
|:---------|:--|:--------|:----------|:--------------|
|base64enc |   |0.1-2    |2014-06-26 |CRAN (R 3.2.0) |
|curl      |   |0.9      |2015-06-19 |CRAN (R 3.2.0) |
|digest    |   |0.6.8    |2014-12-31 |CRAN (R 3.2.0) |
|httpuv    |   |1.3.2    |2014-10-23 |CRAN (R 3.2.0) |
|jpeg      |   |0.1-8    |2014-01-23 |CRAN (R 3.2.0) |
|jsonlite  |   |0.9.16   |2015-04-11 |CRAN (R 3.2.0) |
|knitr     |   |1.10.5   |2015-05-06 |CRAN (R 3.2.0) |
|mime      |   |0.3      |2015-03-29 |CRAN (R 3.2.0) |
|PKI       |   |0.1-1    |2013-02-20 |CRAN (R 3.2.0) |
|png       |   |0.1-7    |2013-12-03 |CRAN (R 3.2.0) |
|R6        |   |2.0.1    |2014-10-29 |CRAN (R 3.2.0) |
|stringr   |   |1.0.0    |2015-04-30 |CRAN (R 3.2.0) |
|testthat  |*  |0.10.0   |2015-05-22 |CRAN (R 3.2.0) |
|XML       |   |3.98-1.2 |2015-05-31 |CRAN (R 3.2.0) |

# Check results
109 checked out of 109 dependencies 

## abbyyR (0.1)
Maintainer: Gaurav Sood <gsood07@gmail.com>  
Bug reports: http://github.com/soodoku/abbyyR/issues

__OK__

## aemo (0.1.0)
Maintainer: Imanuel Costigan <i.costigan@me.com>

__OK__

## alm (0.4.0)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>  
Bug reports: http://www.github.com/ropensci/alm/issues

```
checking files in ‘vignettes’ ... NOTE
The following directory looks like a leftover from 'knitr':
  ‘figure’
Please remove from your package.
```
```
DONE
Status: 1 NOTE
```

## AntWeb (0.7)
Maintainer: 'Karthik Ram' <karthik.ram@gmail.com>  
Bug reports: https://github.com/ropensci/AntWeb/issues

__OK__

## archivist (1.3)
Maintainer: Przemyslaw Biecek <przemyslaw.biecek@gmail.com>  
Bug reports: https://github.com/pbiecek/archivist/issues

__OK__

## aRxiv (0.5.10)
Maintainer: Karl Broman <kbroman@biostat.wisc.edu>  
Bug reports: https://github.com/ropensci/aRxiv/issues

__OK__

## atsd (1.0.8441)
Maintainer: Mikhail Zvagelsky <mikhail.zvagelsky@axibase.com>

__OK__

## bigrquery (0.1.0)
Maintainer: Hadley Wickham <hadley@rstudio.com>

```
checking dependencies in R code ... NOTE
Namespace in Imports field not imported from: ‘R6’
  All declared Imports should be used.
```
```
DONE
Status: 1 NOTE
```

## bold (0.2.6)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>  
Bug reports: https://github.com/ropensci/bold/issues

```
checking package dependencies ... NOTE
Package suggested but not available for checking: ‘sangerseqR’
```
```
DONE
Status: 1 NOTE
```

## boxr (0.2.6)
Maintainer: Brendan Rocks <rocks.brendan@gmail.com>  
Bug reports: https://github.com/brendan-R/boxr/issues

__OK__

## chromer (0.1)
Maintainer: Matthew Pennell <mwpennell@gmail.com>  
Bug reports: http://www.github.com/ropensci/chromer/issues/new

```
checking DESCRIPTION meta-information ... NOTE
Malformed Description field: should contain one or more complete sentences.
```
```
DONE
Status: 1 NOTE
```

## couchDB (1.3.0)
Maintainer: Aleksander Dietrichson <sasha@xrrch.com>

```
checking DESCRIPTION meta-information ... NOTE
Malformed Description field: should contain one or more complete sentences.
```
```
DONE
Status: 1 NOTE
```

## covr (1.0.0)
Maintainer: Jim Hester <james.f.hester@gmail.com>

```
checking dependencies in R code ... NOTE
There are ::: calls to the package's namespace in its code. A package
  almost never needs to use ::: for its own objects:
  ‘count’
```
```
checking tests ... ERROR
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
  6. Error: it works with travis pull requests 
  7. Error: it works with codeship 
  8. Error: it works with circleci 
  9. Error: it works with semaphore 
  1. Error: it works with drone 
  2. Error: it works with AppVeyor 
  3. Error: it works with Wercker 
  4. Error: coveralls generates a properly formatted json file 
  5. Error: coveralls can spawn a job using repo_token 
  6. ...
  
  Error: testthat unit tests failed
  Execution halted
```
```
DONE
Status: 1 ERROR, 1 NOTE
```

## cranlogs (2.0.0)
Maintainer: Gabor Csardi <csardi.gabor@gmail.com>  
Bug reports: https://github.com/metacran/cranlogs/issues

__OK__

## crunch (1.3.2)
Maintainer: Neal Richardson <neal@crunch.io>  
Bug reports: https://github.com/Crunch-io/rcrunch/issues

__OK__

## ddeploy (1.0.2)
Maintainer: Niall McGearailt <niall@dukeanalytics.com>

__OK__

## devtools (1.8.0)
Maintainer: Hadley Wickham <hadley@rstudio.com>  
Bug reports: http://github.com/hadley/devtools/issues

```
checking package dependencies ... NOTE
Package suggested but not available for checking: ‘BiocInstaller’
```
```
checking dependencies in R code ... NOTE
'library' or 'require' call to ‘testthat’ in package code.
  Please use :: or requireNamespace() instead.
  See section 'Suggested packages' in the 'Writing R Extensions' manual.
```
```
checking R code for possible problems ... NOTE
Found the following calls to attach():
File ‘devtools/R/package-env.r’:
  attach(NULL, name = pkg_env_name(pkg))
File ‘devtools/R/shims.r’:
  attach(e, name = "devtools_shims", warn.conflicts = FALSE)
See section ‘Good practice’ in ‘?attach’.
```
```
DONE
Status: 3 NOTEs
```

## distcomp (0.25.1)
Maintainer: Balasubramanian Narasimhan <naras@stat.Stanford.EDU>

__OK__

## dpmr (0.1.7-1)
Maintainer: Christopher Gandrud <christopher.gandrud@gmail.com>  
Bug reports: https://github.com/christophergandrud/dpmr/issues

__OK__

## ecoengine (1.9.1)
Maintainer: Karthik Ram <karthik.ram@gmail.com>  
Bug reports: https://github.com/ropensci/ecoengine/issues

__OK__

## elastic (0.4.0)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>  
Bug reports: https://github.com/ropensci/elastic/issues

__OK__

## enigma (0.1.1)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>  
Bug reports: https://github.com/ropengov/enigma/issues

```
checking files in ‘vignettes’ ... NOTE
The following directory looks like a leftover from 'knitr':
  ‘figure’
Please remove from your package.
```
```
DONE
Status: 1 NOTE
```

## fbRanks (2.0)
Maintainer: E Holmes <eeholmes@u.washington.edu>

```
checking dependencies in R code ... NOTE
'library' or 'require' calls in package code:
  ‘RCurl’ ‘RJSONIO’ ‘XML’ ‘glmnet’ ‘httr’ ‘speedglm’ ‘tcltk’ ‘xtable’
  Please use :: or requireNamespace() instead.
  See section 'Suggested packages' in the 'Writing R Extensions' manual.
```
```
checking R code for possible problems ... NOTE
print.fbRanks: no visible global function definition for ‘xtable’
rank.teams: no visible global function definition for ‘speedglm’
rank.teams: no visible global function definition for ‘sparseMatrix’
rank.teams: no visible binding for global variable ‘glmnet’
scrape.custom1: no visible global function definition for ‘htmlParse’
scrape.custom1: no visible global function definition for ‘getNodeSet’
scrape.custom1: no visible global function definition for ‘xmlValue’
scrape.custom2: no visible global function definition for
  ‘readHTMLTable’
scrape.custom3: no visible global function definition for
  ‘readHTMLTable’
scrape.custom4: no visible global function definition for
  ‘readHTMLTable’
scrape.demosphere: no visible global function definition for
  ‘readHTMLTable’
scrape.demosphere : getthelink: no visible global function definition
  for ‘xmlChildren’
scrape.demosphere : getthelink: no visible global function definition
  for ‘xmlAttrs’
scrape.demosphere: no visible global function definition for ‘getURL’
scrape.demosphere: no visible global function definition for
  ‘htmlParse’
scrape.demosphere.main : getthelink: no visible global function
  definition for ‘xmlChildren’
scrape.demosphere.main : getthelink: no visible global function
  definition for ‘xmlAttrs’
scrape.demosphere.main : getthelink: no visible global function
  definition for ‘xmlValue’
scrape.demosphere.main : getthelink3: no visible global function
  definition for ‘xmlChildren’
scrape.demosphere.main : getthelink3: no visible global function
  definition for ‘xmlAttrs’
scrape.demosphere.main : getthelink3: no visible global function
  definition for ‘xmlValue’
scrape.demosphere.main: no visible global function definition for
  ‘readHTMLTable’
scrape.gotsport: no visible global function definition for
  ‘readHTMLTable’
scrape.gotsport.main : getthelink: no visible global function
  definition for ‘xmlChildren’
scrape.gotsport.main : getthelink: no visible global function
  definition for ‘xmlAttrs’
scrape.gotsport.main : getthelink: no visible global function
  definition for ‘xmlValue’
scrape.gotsport.main: no visible global function definition for ‘GET’
scrape.gotsport.main: no visible global function definition for
  ‘user_agent’
scrape.gotsport.main: no visible global function definition for
  ‘htmlParse’
scrape.gotsport.main: no visible global function definition for
  ‘text_content’
scrape.gotsport.main: no visible global function definition for
  ‘readHTMLTable’
scrape.json1: no visible global function definition for ‘getURL’
scrape.json1: no visible global function definition for ‘fromJSON’
scrape.korrio: no visible global function definition for ‘GET’
scrape.korrio: no visible global function definition for ‘user_agent’
scrape.korrio: no visible global function definition for
  ‘readHTMLTable’
scrape.korrio: no visible global function definition for ‘text_content’
scrape.korrio: no visible global function definition for ‘htmlParse’
scrape.korrio: no visible global function definition for ‘getNodeSet’
scrape.korrio: no visible binding for global variable ‘xmlValue’
scrape.korrio: no visible global function definition for ‘xmlAttrs’
scrape.korrio: no visible global function definition for ‘content’
scrape.korrio: no visible global function definition for ‘xmlValue’
scrape.scoreboard: no visible global function definition for
  ‘readHTMLTable’
scrape.sportaffinity: no visible global function definition for
  ‘readHTMLTable’
scrape.sportaffinity: no visible global function definition for
  ‘htmlParse’
scrape.sportaffinity: no visible global function definition for
  ‘getNodeSet’
scrape.sportaffinity: no visible binding for global variable ‘xmlValue’
scrape.sportaffinity.brackets: no visible global function definition
  for ‘GET’
scrape.sportaffinity.brackets: no visible global function definition
  for ‘user_agent’
scrape.sportaffinity.brackets: no visible global function definition
  for ‘htmlParse’
scrape.sportaffinity.brackets: no visible global function definition
  for ‘text_content’
scrape.sportaffinity.brackets: no visible global function definition
  for ‘getNodeSet’
scrape.sportaffinity.brackets : <anonymous>: no visible global function
  definition for ‘xmlValue’
scrape.sportaffinity.brackets: no visible global function definition
  for ‘xmlAttrs’
scrape.sportaffinity.brackets: no visible global function definition
  for ‘xmlValue’
scrape.sportaffinity.main : getthelink3: no visible global function
  definition for ‘xmlChildren’
scrape.sportaffinity.main : getthelink3: no visible global function
  definition for ‘xmlValue’
scrape.sportaffinity.main : getthelink3: no visible global function
  definition for ‘xmlAttrs’
scrape.sportaffinity.main: no visible global function definition for
  ‘readHTMLTable’
scrape.usclub: no visible global function definition for
  ‘readHTMLTable’
team.name.select : gogetem: no visible global function definition for
  ‘tclvalue<-’
team.name.select : gogetem: no visible global function definition for
  ‘tkcurselection’
team.name.select : clearteam: no visible global function definition for
  ‘tclvalue<-’
team.name.select : clearteam: no visible global function definition for
  ‘tkselection.clear’
team.name.select : showteam: no visible global function definition for
  ‘tclvalue<-’
team.name.select : showteam: no visible global function definition for
  ‘tkcurselection’
team.name.select : showteam: no visible global function definition for
  ‘tclvalue’
team.name.select : enterteam: no visible global function definition for
  ‘tclvalue<-’
team.name.select : enterteam: no visible global function definition for
  ‘tclvalue’
team.name.select : updateteam: no visible global function definition
  for ‘tclvalue<-’
team.name.select : updateteam: no visible global function definition
  for ‘tkcurselection’
team.name.select : updateteam: no visible global function definition
  for ‘tclvalue’
team.name.select : showlist: no visible global function definition for
  ‘tclvalue<-’
team.name.select : showlist: no visible global function definition for
  ‘tclvalue’
team.name.select : searchteam: no visible global function definition
  for ‘tclvalue<-’
team.name.select : searchteam: no visible global function definition
  for ‘tclvalue’
team.name.select : skipteam: no visible global function definition for
  ‘tclvalue<-’
team.name.select: no visible global function definition for
  ‘tktoplevel’
team.name.select: no visible global function definition for
  ‘tkwm.title’
team.name.select: no visible global function definition for ‘tkframe’
team.name.select: no visible global function definition for ‘tclVar’
team.name.select: no visible global function definition for ‘tclObj<-’
team.name.select: no visible global function definition for ‘tklistbox’
team.name.select: no visible global function definition for ‘tkpack’
team.name.select: no visible global function definition for
  ‘tkradiobutton’
team.name.select: no visible global function definition for ‘tklabel’
team.name.select: no visible global function definition for ‘tkentry’
team.name.select: no visible global function definition for ‘tkbutton’
team.name.select: no visible global function definition for ‘tkgrid’
team.name.select: no visible global function definition for
  ‘tclvalue<-’
team.name.select : <anonymous>: no visible global function definition
  for ‘tkdestroy’
team.name.select: no visible global function definition for
  ‘tkwait.window’
```
```
DONE
Status: 2 NOTEs
```

## fitbitScraper (0.1.3)
Maintainer: Cory Nissen <corynissen@gmail.com>

__OK__

## GAR (1.0)
Maintainer: Andrew Geisler <andrew.geisler@gmail.com>  
Bug reports: https://github.com/andrewgeisler/GAR/issues

__OK__

## gender (0.4.3)
Maintainer: Lincoln Mullen <lincoln@lincolnmullen.com>  
Bug reports: https://github.com/ropensci/gender/issues

__OK__

## genderizeR (1.1.0)
Maintainer: Kamil Wais <kamil.wais@gmail.com>  
Bug reports: https://github.com/kalimu/genderizeR

```
checking tests ... ERROR
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
  13: request_perform(req, hu$handle$handle) at /Users/hadley/Documents/web/httr/R/http-get.r:67
  14: curl::handle_setopt(handle, .list = req$options) at /Users/hadley/Documents/web/httr/R/request.R:116
  15: stop("Unknown option", ifelse(length(bad_opts) > 1, "s: ", ": "), paste(bad_opts, 
         collapse = ", "))
  
  testthat results ================================================================
  OK: 0 SKIPPED: 0 FAILED: 3
  1. Error: given name found 
  2. Error: subscription limits 
  3. Error: authorization 
  
  Error: testthat unit tests failed
  Execution halted
```
```
DONE
Status: 1 ERROR
```

## geocodeHERE (0.1.2)
Maintainer: Cory Nissen <corynissen@gmail.com>

__OK__

## geojsonio (0.1.0)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>

__OK__

## gistr (0.2.0)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>  
Bug reports: http://www.github.com/ropensci/gistr/issues

__OK__

## gmailr (0.6.0)
Maintainer: Jim Hester <james.f.hester@gmail.com>  
Bug reports: https://github.com/jimhester/gmailr/issues

__OK__

## hoardeR (0.0-2)
Maintainer: Daniel Fischer <daniel.fischer@mtt.fi>

__OK__

## imguR (1.0.0)
Maintainer: Thomas J. Leeper <thosjleeper@gmail.com>

```
checking DESCRIPTION meta-information ... NOTE
Malformed Description field: should contain one or more complete sentences.
```
```
checking S3 generic/method consistency ... NOTE
Found the following apparent S3 methods exported but not registered:
  plot.imgur_gallery_image
See section ‘Registering S3 methods’ in the ‘Writing R Extensions’
manual.
```
```
DONE
Status: 2 NOTEs
```

## indicoio (0.3)
Maintainer: Madison May <madison@indico.io>

```
checking DESCRIPTION meta-information ... NOTE
Malformed Description field: should contain one or more complete sentences.
```
```
DONE
Status: 1 NOTE
```

## internetarchive (0.1.2)
Maintainer: Lincoln Mullen <lincoln@lincolnmullen.com>  
Bug reports: https://github.com/ropensci/internetarchive/issues

__OK__

## knitcitations (1.0.6)
Maintainer: Carl Boettiger <cboettig@gmail.com>  
Bug reports: https://github.com/cboettig/knitcitations/issues

__OK__

## leafletR (0.3-3)
Maintainer: Christian Graul <christian.graul@gmail.com>

__OK__

## manifestoR (1.0-1)
Maintainer: Jirka Lewandowski <jirka.lewandowski@wzb.eu>  
Bug reports: https://github.com/ManifestoProject/manifestoR/issues

__OK__

## miniCRAN (0.2.4)
Maintainer: Andrie de
 Vries <andrie@revolutionanalytics.com>  
Bug reports: https://github.com/RevolutionAnalytics/miniCRAN/issues

__OK__

## nat (1.6.6)
Maintainer: Greg Jefferis <jefferis@gmail.com>  
Bug reports: https://github.com/jefferis/nat/issues

__OK__

## ngramr (1.4.5)
Maintainer: Sean Carmody <seancarmody@gmail.com>

```
checking DESCRIPTION meta-information ... NOTE
Malformed Description field: should contain one or more complete sentences.
```
```
DONE
Status: 1 NOTE
```

## opencpu (1.4.6)
Maintainer: Jeroen Ooms <jeroen.ooms@stat.ucla.edu>  
Bug reports: https://github.com/jeroenooms/opencpu/issues

```
checking package dependencies ... NOTE
Package suggested but not available for checking: ‘RAppArmor’
```
```
DONE
Status: 1 NOTE
```

## packrat (0.4.4)
Maintainer: Kevin Ushey <kevin@rstudio.com>  
Bug reports: https://github.com/rstudio/packrat/issues

```
checking package dependencies ... NOTE
Package which this enhances but not available for checking: ‘BiocInstaller’
```
```
DONE
Status: 1 NOTE
```

## pdfetch (0.1.6)
Maintainer: Abiel Reinhart <abielr@gmail.com>

__OK__

## pollstR (1.2.0)
Maintainer: Jeffrey B. Arnold <jeffrey.arnold@gmail.com>  
Bug reports: https://github.com/rOpenGov/pollstR/issues

__OK__

## primerTree (1.0.1)
Maintainer: Jim Hester <james.f.hester@gmail.com>

__OK__

## pushoverr (0.1.4)
Maintainer: Brian Connelly <bdc@bconnelly.net>  
Bug reports: https://github.com/briandconnelly/pushoverr/issues

```
checking DESCRIPTION meta-information ... NOTE
Malformed Description field: should contain one or more complete sentences.
```
```
DONE
Status: 1 NOTE
```

## pvsR (0.3)
Maintainer: Ulrich Matter <ulrich.matter@unibas.ch>

__OK__

## pxweb (0.5.54)
Maintainer: Mans Magnusson <mons.magnusson@gmail.com>  
Bug reports: https://github.com/rOpenGov/pxweb/issues

__OK__

## Quandl (2.6.0)
Maintainer: Raymond McTaggart <raymond@quandl.com>  
Bug reports: https://github.com/quandl/R-package/issues

__OK__

## randNames (0.2)
Maintainer: Karthik Ram <karthik.ram@gmail.com>  
Bug reports: https://github.com/karthik/randNames/issues

__OK__

## rbhl (0.1.0)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>  
Bug reports: https://github.com/ropensci/rbhl/issues

```
checking DESCRIPTION meta-information ... NOTE
Malformed Title field: should not end in a period.
```
```
DONE
Status: 1 NOTE
```

## rbison (0.4.5)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>  
Bug reports: https://github.com/ropensci/rbison/issues

```
checking files in ‘vignettes’ ... NOTE
The following directory looks like a leftover from 'knitr':
  ‘figure’
Please remove from your package.
```
```
DONE
Status: 1 NOTE
```

## rclinicaltrials (1.4.1)
Maintainer: Michael C Sachs <sachsmc@gmail.com>

__OK__

## Rcolombos (1.5.2)
Maintainer: Paolo Sonego <paolo.sonego@fmach.it>

__OK__

## rcrossref (0.3.0)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>  
Bug reports: https://github.com/ropensci/rcrossref/issues

__OK__

## rdrop2 (0.6)
Maintainer: Karthik Ram <karthik.ram@gmail.com>

__OK__

## rebird (0.1.1)
Maintainer: Rafael Maia <rm72@zips.uakron.edu>

```
checking DESCRIPTION meta-information ... NOTE
Malformed Description field: should contain one or more complete sentences.
```
```
DONE
Status: 1 NOTE
```

## redcapAPI (1.3)
Maintainer: Stephen Lane <stephen.lane@barwonhealth.org.au>  
Bug reports: https://github.com/nutterb/redcapAPI/issues

__OK__

## REDCapR (0.7-1)
Maintainer: Will Beasley <wibeasley@hotmail.com>

```
checking package dependencies ... NOTE
Package suggested but not available for checking: ‘RODBC’
```
```
checking dependencies in R code ... NOTE
'library' or 'require' calls in package code:
  ‘RODBC’ ‘testthat’
  Please use :: or requireNamespace() instead.
  See section 'Suggested packages' in the 'Writing R Extensions' manual.
```
```
checking re-building of vignette outputs ... NOTE
Error in re-building vignettes:
  ...
Quitting from lines 41-44 (BasicREDCapROperations.Rmd) 
Error: processing vignette 'BasicREDCapROperations.Rmd' failed with diagnostics:
is.request(y) is not TRUE
Execution halted

```
```
DONE
Status: 3 NOTEs
```

## rentrez (0.4.1)
Maintainer: David Winter <david.winter@gmail.com>

```
checking tests ... ERROR
Running the tests in ‘tests/test-all.R’ failed.
Last 13 lines of output:
  > test_check("rentrez")
  Loading required package: rentrez
  Loading required package: XML
  1. Failure (at test_webenv.r#16): Searches using WebEnv features work ----------
  length(strsplit(snail_coi, ">")[[1]]) not equal to 11
  11 - 17 == -6
  
  testthat results ================================================================
  OK: 65 SKIPPED: 0 FAILED: 1
  1. Failure (at test_webenv.r#16): Searches using WebEnv features work 
  
  Error: testthat unit tests failed
  Execution halted
```
```
DONE
Status: 1 ERROR
```

## repmis (0.4.4)
Maintainer: Christopher Gandrud <christopher.gandrud@gmail.com>  
Bug reports: https://github.com/christophergandrud/repmis/issues

__OK__

## rerddap (0.1.0)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>  
Bug reports: http://www.github.com/ropensci/rerddap/issues

__OK__

## Rfacebook (0.5)
Maintainer: Pablo Barbera <pablo.barbera@nyu.edu>

```
checking DESCRIPTION meta-information ... NOTE
Malformed Description field: should contain one or more complete sentences.
```
```
DONE
Status: 1 NOTE
```

## rfigshare (0.3.7)
Maintainer: Carl Boettiger <cboettig@gmail.com>  
Bug reports: https://github.com/ropensci/rfigshare/issues

__OK__

## rfisheries (0.1)
Maintainer: Karthik Ram <karthik.ram@gmail.com>  
Bug reports: http://www.github.com/ropensci/rfisheries/issues/new

```
checking DESCRIPTION meta-information ... NOTE
Malformed Description field: should contain one or more complete sentences.
```
```
checking R code for possible problems ... NOTE
fish_plot: no visible binding for global variable ‘species_code_data’
fish_plot: no visible binding for global variable ‘country_code_data’
```
```
DONE
Status: 2 NOTEs
```

## rfoaas (0.1.6)
Maintainer: Dirk Eddelbuettel <edd@debian.org>

__OK__

## RGA (0.2.2)
Maintainer: Artem Klevtsov <a.a.klevtsov@gmail.com>  
Bug reports: https://bitbucket.org/unikum/rga/issues

__OK__

## rgauges (0.2.0)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>  
Bug reports: https://github.com/ropensci/rgauges/issues

```
checking files in ‘vignettes’ ... NOTE
The following directory looks like a leftover from 'knitr':
  ‘figure’
Please remove from your package.
```
```
DONE
Status: 1 NOTE
```

## rgbif (0.8.4)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>  
Bug reports: https://github.com/ropensci/rgbif/issues

__OK__

## RGoogleAnalytics (0.1.1)
Maintainer: Kushan Shah <kushan@tatvic.com>  
Bug reports: https://github.com/Tatvic/RGoogleAnalytics/issues

```
checking DESCRIPTION meta-information ... NOTE
Malformed Description field: should contain one or more complete sentences.
```
```
DONE
Status: 1 NOTE
```

## rHealthDataGov (1.0.1)
Maintainer: Erin LeDell <ledell@berkeley.edu>

```
checking R code for possible problems ... NOTE
.quick_fetch: no visible global function definition for ‘POST’
.quick_fetch: no visible global function definition for ‘add_headers’
.quick_fetch: no visible global function definition for
  ‘stop_for_status’
.quick_fetch: no visible global function definition for ‘content’
fetch_healthdata: no visible binding for global variable ‘resources’
fetch_healthdata : <anonymous>: no visible binding for global variable
  ‘filters’
```
```
DONE
Status: 1 NOTE
```

## ridigbio (0.2.2)
Maintainer: Matthew Collins <mcollins@acis.ufl.edu>  
Bug reports: https://github.com/iDigBio/ridigbio/issues

__OK__

## rinat (0.1.4)
Maintainer: Edmund Hart <edmund.m.hart@gmail.com>

__OK__

## Rlinkedin (0.1)
Maintainer: Michael Piccirilli <michael.r.piccirilli@gmail.com>

__OK__

## Rmonkey (0.2.11)
Maintainer: Thomas J. Leeper <thosjleeper@gmail.com>  
Bug reports: https://github.com/leeper/Rmonkey/issues

__OK__

## rnbn (1.0.3)
Maintainer: Tom August <tomaug@ceh.ac.uk>  
Bug reports: https://github.com/ropensci/rnbn/issues

__OK__

## RNeXML (2.0.3)
Maintainer: Carl Boettiger <cboettig@gmail.com>  
Bug reports: https://github.com/ropensci/RNeXML/issues

```
checking package dependencies ... NOTE
Packages suggested but not available for checking: ‘rrdf’ ‘Sxslt’
```
```
DONE
Status: 1 NOTE
```

## rnoaa (0.4.0)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>  
Bug reports: http://www.github.com/ropensci/rnoaa/issues

__OK__

## rplos (0.4.7)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>  
Bug reports: https://github.com/ropensci/rplos/issues

__OK__

## RPublica (0.1.2)
Maintainer: Thomas J. Leeper <thosjleeper@gmail.com>  
Bug reports: https://github.com/rOpenGov/RPublica/issues

```
checking DESCRIPTION meta-information ... NOTE
Malformed Description field: should contain one or more complete sentences.
```
```
DONE
Status: 1 NOTE
```

## RSiteCatalyst (1.4.3)
Maintainer: Randy Zwitch <rzwitch+rsitecatalyst@gmail.com>  
Bug reports: https://github.com/randyzwitch/RSiteCatalyst

```
checking DESCRIPTION meta-information ... NOTE
Malformed Description field: should contain one or more complete sentences.
```
```
DONE
Status: 1 NOTE
```

## rsnps (0.1.6)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>  
Bug reports: https://github.com/ropensci/rsnps/issues

__OK__

## RSocrata (1.6.0-12)
Maintainer: "Tom Schenk Jr." <developers@cityofchicago.org>  
Bug reports: https://github.com/Chicago/RSocrata/issues

```
checking whether package ‘RSocrata’ can be installed ... WARNING
Found the following significant warnings:
  Warning: replacing previous import by ‘curl::handle_reset’ when loading ‘RSocrata’
See ‘/private/tmp/RtmpSvieTp/check_cranddb1ca750de/RSocrata.Rcheck/00install.out’ for details.
```
```
DONE
Status: 1 WARNING
```

## rsunlight (0.3.0)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>  
Bug reports: https://github.com/ropengov/rsunlight/issues

```
checking package dependencies ... NOTE
Package suggested but not available for checking: ‘rCharts’
```
```
checking DESCRIPTION meta-information ... NOTE
Malformed Title field: should not end in a period.
Malformed Description field: should contain one or more complete sentences.
```
```
checking files in ‘vignettes’ ... NOTE
The following directory looks like a leftover from 'knitr':
  ‘figure’
Please remove from your package.
```
```
DONE
Status: 3 NOTEs
```

## rvertnet (0.2.2)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>  
Bug reports: https://github.com/ropensci/rvertnet/issues

__OK__

## rvest (0.2.0)
Maintainer: Hadley Wickham <h.wickham@gmail.com>

__OK__

## rWBclimate (0.1.3)
Maintainer: Edmund Hart <edmund.m.hart@gmail.com>  
Bug reports: http://github.com/ropensci/rWBclimate/issues

```
checking R code for possible problems ... NOTE
check_ISO_code: no visible binding for global variable ‘NoAm_country’
check_ISO_code: no visible binding for global variable ‘SoAm_country’
check_ISO_code: no visible binding for global variable ‘Oceana_country’
check_ISO_code: no visible binding for global variable ‘Africa_country’
check_ISO_code: no visible binding for global variable ‘Asia_country’
check_ISO_code: no visible binding for global variable ‘Eur_country’
```
```
DONE
Status: 1 NOTE
```

## slackr (1.2)
Maintainer: Bob Rudis <bob@rudis.net>  
Bug reports: https://github.com/hrbrmstr/slackr/issues

__OK__

## SmarterPoland (1.5)
Maintainer: Przemyslaw Biecek <przemyslaw.biecek@gmail.com>

```
checking data for non-ASCII characters ... NOTE
  Note: found 1122 marked UTF-8 strings
```
```
DONE
Status: 1 NOTE
```

## SocialMediaMineR (0.1)
Maintainer: Marco Toledo Bastos <marco@toledobastos.com>

__OK__

## solr (0.1.4)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>  
Bug reports: http://www.github.com/ropensci/solr/issues

__OK__

## spareserver (1.0.0)
Maintainer: "Gabor Csardi" <csardi.gabor@gmail.com>  
Bug reports: https://github.com/metacran/spareserver/issues

__OK__

## spocc (0.2.4)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>  
Bug reports: https://github.com/ropensci/spocc/issues

__OK__

## stringgaussnet (1.0)
Maintainer: Emmanuel Chaplais <emmanuel.chaplais@inserm.fr>

```
checking package dependencies ... ERROR
Packages required but not available:
  ‘AnnotationDbi’ ‘GO.db’ ‘biomaRt’ ‘limma’

Package suggested but not available for checking: ‘org.Hs.eg.db’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
```
```
DONE
Status: 1 ERROR
```

## swirl (2.2.21)
Maintainer: Nick Carchedi <nick.carchedi@gmail.com>

```
checking DESCRIPTION meta-information ... NOTE
Malformed Title field: should not end in a period.
```
```
DONE
Status: 1 NOTE
```

## SWMPr (2.0.0)
Maintainer: Marcus W. Beck <mbafs2012@gmail.com>  
Bug reports: https://github.com/fawda123/SWMPr/issues

__OK__

## taxize (0.6.0)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>  
Bug reports: https://github.com/ropensci/taxize/issues

__OK__

## TMDb (1.0)
Maintainer: Andrea Capozio <andreacapozio@gmail.com>

__OK__

## traits (0.1.0)
Maintainer: Scott Chamberlain <myrmecocystus@gmail.com>  
Bug reports: http://www.github.com/ropensci/traits/issues

__OK__

## translateR (1.0)
Maintainer: Christopher Lucas <clucas@fas.harvard.edu>

__OK__

## tumblR (1.1)
Maintainer: Andrea Capozio <andreacapozio@gmail.com>

__OK__

## twitteR (1.1.8)
Maintainer: Jeff Gentry <geoffjentry@gmail.com>

__OK__

## WaterML (1.0.0)
Maintainer: Jiri Kadlec <jirikadlec2@gmail.com>

__OK__

## whoami (1.1.0)
Maintainer: Gabor Csardi <csardi.gabor@gmail.com>  
Bug reports: https://github.com/gaborcsardi/whoami/issues

__OK__

## WikidataR (1.0.0)
Maintainer: Oliver Keyes <ironholds@gmail.com>

__OK__

## wikipediatrend (1.1.4)
Maintainer: Peter Meissner <retep.meissner@gmail.com>  
Bug reports: https://github.com/petermeissner/wikipediatrend/issues

```
checking package dependencies ... NOTE
Packages suggested but not available for checking:
  ‘AnomalyDetection’ ‘BreakoutDetection’
```
```
DONE
Status: 1 NOTE
```

## WikipediR (1.2.0)
Maintainer: Oliver Keyes <ironholds@gmail.com>  
Bug reports: https://github.com/Ironholds/WikipediR/issues

__OK__

## yhatr (0.13.6)
Maintainer: Greg Lamp <greg@yhathq.com>

__OK__

