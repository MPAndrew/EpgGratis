#!/bin/bash
perl /volume3/TVheadend/epg/cambiar_categorias < /volume3/TVheadend/epg/epgconrex.xml > /volume3/TVheadend/epg/guide.xml

perl -pi -e "s[1/5][★☆☆☆☆]g" /volume3/TVheadend/epg/guide.xml
perl -pi -e "s[2/5][★★☆☆☆]g" /volume3/TVheadend/epg/guide.xml
perl -pi -e "s[3/5][★★★☆☆]g" /volume3/TVheadend/epg/guide.xml
perl -pi -e "s[4/5][★★★★☆]g" /volume3/TVheadend/epg/guide.xml
perl -pi -e "s[5/5][★★★★★]g" /volume3/TVheadend/epg/guide.xml

perl -pi -e "s#/ Edad: 18#/ [B]Edad:[/B] [B][COLOR red]18[/COLOR][/B]#g" /volume3/TVheadend/epg/guide.xml
perl -pi -e "s#/ Edad: 16#/ [B]Edad:[/B] [B][COLOR orange]16[/COLOR][/B]#g" /volume3/TVheadend/epg/guide.xml
perl -pi -e "s#/ Edad: 12#/ [B]Edad:[/B] [B][COLOR yellow]12[/COLOR][/B]#g" /volume3/TVheadend/epg/guide.xml
perl -pi -e "s#/ Edad: 7#/ [B]Edad:[/B] [B][COLOR cyan]7[/COLOR][/B]#g" /volume3/TVheadend/epg/guide.xml
perl -pi -e "s#/ Edad: TP#/ [B]Edad:[/B] [B][COLOR lime]TP[/COLOR][/B]#g" /volume3/TVheadend/epg/guide.xml
perl -pi -e "s#/ Edad: tp#/ [B]Edad:[/B] [B][COLOR lime]TP[/COLOR][/B]#g" /volume3/TVheadend/epg/guide.xml
perl -pi -e "s#/ Edad: INF#/ [B]Edad:[/B] [B][COLOR lime]TP[/COLOR][/B]#g" /volume3/TVheadend/epg/guide.xml

cp /volume3/TVheadend/epg/guide.xml /volume3/TVheadend/docker/tvheadend/config/data/guide.xml