BEGIN { FS = "\t"; }

{ 
    fullname = $4;
    sub(/^ */, "", fullname); 
    sub(/ *$/, "", fullname);
    totlen[fullname] += $1; 
}

END { 
    for (fullname in totlen)  
	printf "%8.2f\tmetres\t%s\n", totlen[fullname], fullname;
}
