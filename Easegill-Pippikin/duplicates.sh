perl findincludes.pl $1 | xargs -n 1 perl findincludes.pl \
    | xargs -n 1 gawk -f duplicates.awk | sort -k5 \
    | gawk '{ print; x+= $1; n += $3}; END { printf "%8.2f\tmetres\t%3i\tleg(s)\t%s\t%s\t%s\n", x, n, "TOTAL", "", ""; }'
