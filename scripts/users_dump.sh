#!/bin/sh

cd /home/librefm/turtle/data/ || exit 1

#we rely on lack of whitespace here
LIST=$(echo "SELECT DISTINCT username FROM Users;" | psql -q)

for I in $LIST; do

    cat /home/librefm/scripts/license > $I.dump.utf8
    
    echo 'COPY (SELECT * FROM Scrobbles where username='"'$I'"') TO STDOUT WITH CSV HEADER;' | psql -q >> $I.dump.utf8
done
