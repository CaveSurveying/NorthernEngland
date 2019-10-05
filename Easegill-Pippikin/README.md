# Easegill / Pippikin survex data files

This subdirectory contains survex data files for the connected
components of the Lancaster Hole / Easegill / Pippikin Pot system.

These have been modified from the originals in the Cave Registry Data
Archive so that the individual caves now break at the cave
descriptions in the new edition of Northern Caves, and duplicate /
splay legs have been identified and flagged.  This means that the cave
lengths can be computed automatically.  A complete table of these
changes (which affect the claimed length of the system) is given in
`duplicates.txt`.  This is a tab-delimited text file, can be opened as
a spreadsheet.

This directory contains a number of useful unix tools:

```
./duplicates.sh Easegill-Pippikin > duplicates.txt
```
generates the above mentioned table.


```
./table.sh Easegill-Pippikin > table.txt
```
generates a table of lengths of individual pieces of cave.

```
./pivot.sh Easegill-Pippikin > pivot.txt
```
folds (or pivots) these into actual cave lengths.
