NR == 1 {
    if (FILENAME ~ "/") {
	s = FILENAME;
	n = split(FILENAME, a, "/");
	s = a[1];
	if (n > 2) {
	    for (i=2; i<n; i++) {
		s = sprintf("%s/%s",s,a[i]);
	    }
	}
	s = sprintf("%s/", s);
    } else {
	s = ""; 
    }
}

$1 == "*include" { 
    sub(/\\/,"/",$2); 
    printf "%s%s.svx\n", s, $2 
}
