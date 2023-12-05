xtset no time
xtreg sentiment exhightemp95 exlowtemp5 pm25 wind covall rain i.cityno i.weekday
xtreg sentiment exhightemp90 exlowtemp10 pm25 wind covall rain i.cityno i.weekday,r
xtreg sentiment exhighapptemp95 exlowapptemp5 pm25 wind covall rain i.cityno i.weekday,r
xtreg sentiment exhighapptemp90 exlowapptemp10 pm25 wind covall rain i.cityno i.weekday,r
xtreg robsentiment exhightemp95 exlowtemp5 pm25 wind covall rain i.cityno i.weekday
xtreg sentiment rob95exhightemp rob5exlowtemp pm25 wind covall rain i.cityno i.weekday,r
gen eht95ws=exhightemp95*wind
gen elt5ws=exlowtemp5*wind
gen eht95pcdi=exhightemp95*pcdi/1000
gen elt5pcdi=exlowtemp5*pcdi/1000
xtreg sentiment exhightemp95 exlowtemp5 pm25 wind covall rain pcdi eht95ws elt5ws eht95pcdi elt5pcdi i.cityno i.weekday
xtreg sentiment exhightemp95 exlowtemp5 pm25 wind covall rain pcdi eht95ws elt5ws eht95pcdi elt5pcdi i.cityno i.jieqi
ivregress 2sls sentiment (exhightemp95 exlowtemp5 = exhightempiv exlowtempiv) pm25 wind covall rain,first
xtreg sentiment exhightempdiff exlowtempdiff pm25 wind covall rain i.cityno i.weekday
xtreg sentiment maxapptempdiff95 minapptempdiff5 pm25 wind covall rain i.cityno i.weekday
