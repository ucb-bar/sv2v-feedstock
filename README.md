About firtool
=============

Home: https://github.com/ucb-bar/firtool-feedstock

Package license: 

Feedstock license: [BSD-3-Clause](https://github.com/conda-forge/circt-feedstock/blob/master/LICENSE.txt)

Summary: Firtool conda package

Current build status
====================


<table>
</table>

Current release info
====================

| Name | Downloads | Version | Platforms |
| --- | --- | --- | --- |
| [![Conda Recipe](https://img.shields.io/badge/recipe-firtool-green.svg)](https://anaconda.org/ucb-bar/firtool) | [![Conda Downloads](https://img.shields.io/conda/dn/ucb-bar/firtool.svg)](https://anaconda.org/ucb-bar/firtool) | [![Conda Version](https://img.shields.io/conda/vn/ucb-bar/firtool.svg)](https://anaconda.org/ucb-bar/firtool) | [![Conda Platforms](https://img.shields.io/conda/pn/ucb-bar/firtool.svg)](https://anaconda.org/ucb-bar/firtool) |

Installing firtool
==================

Installing `firtool` from the `ucb-bar` channel can be achieved by adding `ucb-bar` to your channels with:

```
conda config --add channels ucb-bar
conda config --set channel_priority strict
```

Once the `ucb-bar` channel has been enabled, `firtool` can be installed with `conda`:

```
conda install firtool
```

or with `mamba`:

```
mamba install firtool
```

It is possible to list all of the versions of `firtool` available on your platform with `conda`:

```
conda search firtool --channel ucb-bar
```

or with `mamba`:

```
mamba search firtool --channel ucb-bar
```

Alternatively, `mamba repoquery` may provide more information:

```
# Search all versions available on your platform:
mamba repoquery search firtool --channel ucb-bar

# List packages depending on `firtool`:
mamba repoquery whoneeds firtool --channel ucb-bar

# List dependencies of `firtool`:
mamba repoquery depends firtool --channel ucb-bar
```




Updating firtool-feedstock
==========================

If you would like to improve the firtool recipe or build a new
package version, please fork this repository and submit a PR. Upon submission,
your changes will be run on the appropriate platforms to give the reviewer an
opportunity to confirm that the changes result in a successful build. Once
merged, the recipe will be re-built and uploaded automatically to the
`ucb-bar` channel, whereupon the built conda packages will be available for
everybody to install and use from the `ucb-bar` channel.
Note that all branches in the conda-forge/firtool-feedstock are
immediately built and any created packages are uploaded, so PRs should be based
on branches in forks and branches in the main repository should only be used to
build distinct package versions.

In order to produce a uniquely identifiable distribution:
 * If the version of a package **is not** being increased, please add or increase
   the [``build/number``](https://docs.conda.io/projects/conda-build/en/latest/resources/define-metadata.html#build-number-and-string).
 * If the version of a package **is** being increased, please remember to return
   the [``build/number``](https://docs.conda.io/projects/conda-build/en/latest/resources/define-metadata.html#build-number-and-string)
   back to 0.

Feedstock Maintainers
=====================

* [@abejgonzalez](https://github.com/abejgonzalez/)
* [@joey0320](https://github.com/joey0320/)

