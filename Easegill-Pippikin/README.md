# Easegill / Pippikin survex data files

This subdirectory contains survex data files for the connected
components of the Lancaster Hole / Easegill / Pippikin Pot system.

These have been modified from the originals in the Cave Registry Data
Archive so that the individual caves now break at the cave
descriptions in the new edition of Northern Caves, and duplicate /
splay legs have been identified and flagged.  This means that the cave
lengths can be computed automatically.  A complete list of these
changes (which affect the claimed length of the system) is given in
`duplicates.dat`.

This directory contains a number of useful unix tools:

```
./duplicates.sh Easegill-Pippikin > duplicates.dat
```
generates the above mentioned list in a tab-delimited text file.


```
./table.sh Easegill-Pippikin > table.dat
```
generates a table of lengths of individual pieces of cave, as a tab-delimited text file.

```
./pivot.sh Easegill-Pippikin > pivot.dat
```
folds (or pivots) these into actual cave lengths, also a tab-delimited text file.

For convenience the tab-delimited text files `pivot.dat`, `table.dat`, and `duplicates.dat`
have been imported into the  spreadsheet [`data_summary.ods`](data_summary.ods).

_Patrick B Warren, April 2015 -- October 2019_
