BEGIN { dupflag = 0; }

/^\*calibrate/ && /tape/ && NF > 2 { 
    offset = $3; 
}

/\*flags/ && /duplicate|splay/ && !/not/ { 
    dupflag = 1; sum = 0; count = 0; comment_flag = 0;
    if ($0 ~ /splay/) { flag = "splay"; } else { flag = "duplicate"; }
    n = split($0, s, ";");
    comment = s[n]; 
    sub(/^ */, "", comment); 
    sub(/ *$/, "", comment);
    if ($1 ~ /^;/) { flag = "; " flag; comment_flag = 1; }
}

/\*flags/ && /not/ && /duplicate|splay/ { 
    dupflag = 0; 
    if (comment_flag) { 
	printf "%8.2f\tmetres\t(%i)\tleg(s)\t%s\t%s\t%s\n", 0, count, FILENAME, flag, comment;
    } else {
	printf "%8.2f\tmetres\t%3i\tleg(s)\t%s\t%s\t%s\n", sum, count, FILENAME, flag, comment;
    }
}

!/^\*/ && !/^;/ && NF > 2 { 
    if (dupflag) {
	sum += $3 - offset;
	count++;
    }
} 
