perl table.pl $1 | sort -k3 | gawk '{ print; x += $1 }; END { printf "%8.2f\tmetres\tTOTAL\n", x; }'

perl length.pl $1
