# Unix tools for cave data statistics

This subdirectory contains a number of perl, awk and shell scripts to
automate the extraction of statistics from suitably formatted cave
data sets, in particular the [Easegill-Pippikin](../Easegill-Pippikin)
and [LeckMasongill](../LeckMasongill) data sets in this repository.

The main usage is

```
./duplicates.sh <master>
```
generates a list of survey data marked duplicate and splay in a tab-delimited text format.

```
./table.sh <master>
```
generates a table of lengths of individual pieces of cave, as tab-delimited text.

```
./pivot.sh <master>
```
folds (or pivots) these into actual cave lengths, also as tab-delimited text.

In these `<master>` should be the name of the master survex file omitting the `.svx` suffix.

For convenience a Makefile is provided to run these scripts against a given data set.

For example, to extract cave statistics for
[Easegill-Pippikin](../Easegill-Pippikin), copy the contents of this
directory to the top level directory containing the file
`Easegill-Pippikin.svx` and run the following command, at a command prompt:

```
MASTER = Easegill-Pippikin make tables
```
This will generate the `pivot.dat`, `table.dat`, and `duplicates.dat`
files containing the above information.  For examples of these, see
the [Easegill-Pippikin](../Easegill-Pippikin) and
[LeckMasongill](../LeckMasongill) subdirectories.

_Patrick B Warren, April 2015 -- October 2019_
