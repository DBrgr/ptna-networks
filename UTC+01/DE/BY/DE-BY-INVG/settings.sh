#!/bin/bash

#
# set variales for analysis of network
#

PREFIX="DE-BY-INVG"

OVERPASS_QUERY="http://overpass-api.de/api/interpreter?data=area[boundary=administrative][admin_level=6][name~'Ingolstadt'];(rel(area)[route~'(bus|tram|train|subway|light_rail|trolleybus|ferry|monorail|aerialway|share_taxi|funicular)'];rel(br);rel[type='route'](r);)->.routes;(.routes;<<;rel(r.routes);way(r.routes);node(w);node(r.routes););out;"
NETWORK_LONG="Ingolstädter Verkehrsgesellschaft mbH"
NETWORK_SHORT="INVG"

ANALYSIS_PAGE="Ingolstadt/Transportation/Analyse"
ANALYSIS_TALK="Talk:Ingolstadt/Transportation/Analyse"
WIKI_ROUTES_PAGE="Ingolstadt/Transportation/INVG-Linien-gesamt"

ANALYSIS_OPTIONS="--language=de --max-error=10 --check-access --check-name-relaxed --check-stop-position --check-sequence --check-version --check-osm-separator --check-motorway-link --multiple-ref-type-entries=analyze --positive-notes --coloured-sketchline --relaxed-begin-end-for=train,subway,light_rail,monorail,tram"

# --check-bus-stop 
# --expect-network-long
# --expect-network-short
# --expect-network-short-for=
# --expect-network-long-for=

