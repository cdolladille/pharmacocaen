
# pharmacocaen

<!-- badges: start -->
[![R-CMD-check](https://github.com/pharmacologie-caen/pharmacocaen/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/pharmacologie-caen/pharmacocaen/actions/workflows/R-CMD-check.yaml)
[![test-coverage](https://github.com/pharmacologie-caen/pharmacocaen/actions/workflows/test-coverage.yaml/badge.svg)](https://github.com/pharmacologie-caen/pharmacocaen/actions/workflows/test-coverage.yaml)
<!-- badges: end -->

The goal of pharmacocaen is to provide tools for worldwide
pharmacovigilance analysis.

## Installation

You can install the development version of pharmacocaen from
[GitHub](https://github.com/) with:

### Solution 1

Look at the **Releases** panel on the right of this Github page. You may
see something like “v0.3.1 (Latest)”.

Click on the version you want to install.

Download source code as a tar.gz file.

Now go to RStudio, click on “Tools”, “Install Packages…”, select
“Package Archive file” and locate the tar.gz file on your computer.

### Solution 2

You should first clone the repo on your local computer. You may use git
command line,
[GitKraken](https://help.gitkraken.com/gitkraken-client/open-clone-init/),
or any other way to clone the repo.

Once this is done, open the repo and click on “pharmacocaen.Rproj”. This
will open RStudio.

In RStudio, go to “Build” then “Install Package”. You will need an up to
date version of Rtools to build the package.

> `devtools::install_github("cdolladille/pharmacocaen")` isn’t working
> for some unclear reason (#14).

## Vignettes

There is a detailed vignette to explain simple data management
[here](https://github.com/cdolladille/pharmacocaen/tree/master/vignettes/)

## Example

Say you want to create columns of drug and adr, then perform a
univariate disproportionality analysis. You may want to use the
`add_drug`, `add_adr`, and `compute_or_abcd` functions.

``` r
library(pharmacocaen)

demo <-
  demo_ %>%
  add_drug(
    d_code = ex_$d_drecno,
    drug_data = drug_
  ) %>%
  add_adr(
    a_code = ex_$a_llt,
    adr_data = adr_
  )

demo %>%
  compute_or_abcd(
    y = "colitis",
    x = "nivolumab"
  )
#>          y         x    a    b     c     d        or    low_ci     up_ci  orl
#> 1: colitis nivolumab 3137 3935 33592 31413 0.7454926 0.7095811 0.7832216 0.75
#>          or_ci         ic    ic_tail ci_level signif_or signif_ic
#> 1: (0.71-0.78) -0.2000836 -0.2510166      95%         0         0
```

<!-- Footnote for myself
&#10;You'll still need to render `README.Rmd` regularly, to keep `README.md` up-to-date. `devtools::build_readme()` is handy for this. You could also use GitHub Actions to re-render `README.Rmd` every time you push. An example workflow can be found here: <https://github.com/r-lib/actions/tree/v1/examples>. -->
