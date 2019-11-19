#!/bin/bash

#
# set variales for analysis of network
#

PREFIX="DE-HE-RMV"

OVERPASS_QUERY="http://overpass-api.de/api/interpreter?data=[timeout:300];area[boundary=public_transport][name='Rhein-Main-Verkehrsverbund'];(rel(area)[route~'(bus|tram|train|subway|light_rail|trolleybus|ferry|monorail|aerialway|share_taxi|funicular)'];rel(br);rel[type='route'](r);)->.routes;(.routes;<<;rel(r.routes);way(r.routes);node(w);node(r.routes););out;"
NETWORK_LONG="Rhein-Main-Verkehrsverbund"
NETWORK_SHORT="RMV"

ANALYSIS_PAGE="Rhein-Main-Verkehrsverbund/Analyse"
ANALYSIS_TALK="Talk:Rhein-Main-Verkehrsverbund/Analyse"
WIKI_ROUTES_PAGE="Rhein-Main-Verkehrsverbund/Analyse/DE-HE-RMV-Linien"

ANALYSIS_OPTIONS="--language=de --max-error=10 --check-access --check-name-relaxed --check-stop-position --check-sequence --check-version --check-osm-separator --check-motorway-link --multiple-ref-type-entries=analyze --positive-notes --coloured-sketchline --ptv1-compatibility=allow --relaxed-begin-end-for=train,subway,light_rail,monorail,tram"

# --check-bus-stop 
# --expect-network-short 
# --expect-network-long
# --expect-network-short-for=
# --expect-network-long-for=

#
# extensions to support ptna-www and PHP in results/xx/index.php files by code in ptna-network.sh (section: upload results)
#
# column 1 = Name + Link to Analysis Result Page on server
# automatically build by PHP script

# column 2 = Name + Link to Overpass-Turbo call to show area on map
PTNA_WWW_REGION_NAME="Rhein-Main Gebiet, Südhessen, Mittelhessen, Teile von Osthessen und die rheinland-pfälzische Landeshauptstadt Mainz"
PTNA_WWW_REGION_LINK="http://overpass-turbo.eu/map.html?Q=%5Bout%3Ajson%5D%5Btimeout%3A25%5D%3B(relation%5Bboundary%3Dpublic_transport%5D%5Bname%3D%27Rhein-Main-Verkehrsverbund%27%5D%3B)%3Bout%20body%3B%3E%3Bout%20skel%20qt%3B"

# column 3 = Name + Link to the network provider / transport association
PTNA_WWW_NETWORK_NAME="Rhein-Main-Verkehrsverbund"
PTNA_WWW_NETWORK_LINK="https://www.rmv.de/"

# column 4 = Date and Time of last analysis in UTC and Local Time format
# automatically build by PHP script

# column 5 = Date and Time of latest changes in UTC and Local Time format
# automatically build by PHP script

# column 6 = Name + Link to discussion / documentation page (usually in OSM Wiki)
PTNA_WWW_DISCUSSION_NAME="Diskussion"
PTNA_WWW_DISCUSSION_LINK="https://wiki.openstreetmap.org/wiki/$ANALYSIS_TALK"

# column 7 Name + Link to list of expected public ransport routes page (usually in OSM Wiki but can als be on GitHub)
PTNA_WWW_ROUTES_NAME="RMV Linien"
PTNA_WWW_ROUTES_LINK="https://wiki.openstreetmap.org/wiki/$WIKI_ROUTES_PAGE"

