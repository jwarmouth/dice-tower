pico-8 cartridge // http://www.pico-8.com
version 36
__lua__
-- tower die-fence
-- by alex, ben, & jeffu warmouth
#include path.p8:1
#include dieprototype.p8
__gfx__
0000000077777777777777777777777777777777777777777ff77ff7000000000000000000000000000000000000000000000000000000000000000000000000
00000000777777777ff777777ff777777ff77ff77ff77ff77ff77ff7000000000000000000000000000000000000000000000000000000000000000000000000
00700700777ff7777ff777777ff777777ff77ff77ff77ff777777777000000000000000000000000000000000000000000000000000000000000000000010000
0007700077ffff7777777777777ff77777777777777ff7777ff77ff7005500000055000000055000000550000000000000000000000000000000000000811000
0007700077ffff7777777777777ff77777777777777ff7777ff77ff700d5500000d5500e00511500005555000000000000000000000000000000000000011000
00700700777ff77777777ff777777ff77ff77ff77ff77ff7777777770e555ee00e555ee0005ee500005ee500000000000000200000000000000ee00000011000
000000007777777777777ff777777ff77ff77ff77ff77ff77ff77ff70055550e00555500005555000055550000000000000e0e00000000000002200000010000
0000000077777777777777777777777777777777777777777ff77ff700e00e000e0000e000e00e0000e00e000e2e2e2e0e20002e000ee000000ee00000000000
00000000000000000000000000000000333333311333333300000001100000003333333333333333333333333333333300000000000000000000000000000000
00000000000000000000000000000000333335511553333300000551155000003333333333333333333333333333333300000000000000000000000000000000
00111100001111000011110000111100333555511555533300055551155550003333333333333333333333333333333300000000000000000000000000000000
01811810118118110111111011111111355555511555555305555551155555503355333333553333333553333335533300000000000000000000000000000000
111001110110011011100111011001105556666776666555555666677666655533d5533333d5533e335115333355553300000000000000000000000000000000
01000010100000010100001010000001666666777766666666666677776666663e555ee33e555ee3335ee533335ee53300000000000000000000000000000000
00000000000000000000000000000000666667777776666666666777777666663355553e33555533335555333355553300000000000000000000000000000000
000000000000000000000000000000005666600070006665566667777776666533e33e333e3333e333e33e3333e33e3300000000000000000000000000000000
00000000000000000000000000000000566677707070666556667777777766650000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000556670007070665555667777777766550000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000556770777070765555677777777776550000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000555770007000755555577777777775550000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000555666666666655555566666666665550000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000351166666666115305116666666611500000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000315556666665551301555666666555100000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000333555666655533300055566665550000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
44446444333333333333333333333333333333333333333333767633336557334446444644655744cccccccccccccccccc2222cccc9999cc0000000000000000
444444443333333333333b3333333833333bb3333333333336555573337556334444444446955944cccccccccccccccccc9449ccc942429c0000000000000000
464444643333333333333bb33333388333bbbb337676767675555556336557337999999644955946cccccccc49999992cc9229cc924242490000000000000000
4446444433333333bbbbbbbb888888883bbbbbb35555555565555557337556335555555544955944cccccccc42424242cc9449cc924242490000000000000000
4444444433333333bbbbbbbb888888883bbbbbb35555555575555556336557335555555564955944cccccccc42424242cc9229cc924242490000000000000000
444446443333333333333bb33333388333bbbb336767676765555557337556336999999744955944cccccccc49999992cc9449cc924242490000000000000000
446444443333333333333b3333333833333bb3333333333337555563336557334444444444955964cccccccccccccccccc9229ccc942429c0000000000000000
44444444333333333333333333333333333333333333333333676733337556336444644444755644cccccccccccccccccc4444cccc9999cc0000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
33777777777777337777777733333333337777333733773337773333333773333333773373377333337777333333333300000000000000000000000000000000
33777777777777337777777733333333373333733737337337337733333773333337337373733733373333333333333300000000000000000000000000000000
33333337733333337770077737337337733333733773333737333373333333333373333377333373733333333333333300000000000000000000000000000000
33333337733333337700007737373737733337333733333337333337333773333733333373333373733333337777777300000000000000000000000000000000
33333337733333337700007737373737737773333733333337333337333773333733333373333373733333337777777300000000000000000000000000000000
33333337733333337770077737373737733333333733333337333373333773337777773373333373733333333333333300000000000000000000000000000000
33333337733333337777777733733373373333333733333337337733333773333733333373333373373333333333333300000000000000000000000000000000
33333337733333337777777733733373337777333733333337773333333773333733333373333373337777333333333300000000000000000000000000000000
33333337733333330000000033777777777773333333333733333333337777333333333300000000000000000000000000000000000000000000000000000000
33333337733333330777777037777777777777333377773733333333373333733333333300000000000000000000000000000000000000000000000000000000
33333337733333330707707077733333333377333733337733733373733333377333333700000000000000000000000000000000000000000000000000000000
33333337733333330777777077333333333333337333333737373737733333373733337300000000000000000000000000000000000000000000000000000000
33333337733333330777777077333333333333337333333737373737733333373733337300000000000000000000000000000000000000000000000000000000
33333337733333330707707077333333333333337333333737373737733333373373373300000000000000000000000000000000000000000000000000000000
33333337733333330777777077333333333333333733337337337337373333733373373300000000000000000000000000000000000000000000000000000000
33333337733333330000000077333333333333333377773337333337337777333337733300000000000000000000000000000000000000000000000000000000
00000000000000000007700077333377777777730000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000007700077333377777777730000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000007700077333333333337730000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000007700077333333333337730000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000007700077333333333337730000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000007700077733333333377730000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000007700037777777777777330000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000007700033777777777773330000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__label__
33333333333333333376763333333333333333333333333333333333333333333333333333333333333333333333333333333333337676333333333333333333
30033000333333333655557333333333333333333333333333333333333333333333311111111111333333333333333333333333365555733333333333333333
33033330333333337555555676767676767676767676767676767676767676767111167676767676111176767676767676767676755555563333333333333333
33033300333333336555555755555555555555555555555555555555555555511555555555555555555511555555555555555555655555573333333333333333
33033330333333337555555655555555555555555555555555555555555511155555555555555555555555111555555555555555755555563333333333333333
30003000333333336555555767676767676767676767676767676767676167676767676767676767676767676167676767676767655555573333333333333333
33333333333333333755556333333333333333333333333333333333311333333333333333333333333333333311333333333333375555633333333333333333
33333333333333333367673333333333333333333333333333333333133333333333333333333333333333333333133333333333336767333333333333333333
33333333333333333365573333333333444464444444644444446441444464444444644444446444444464443333313333333333336557333333333333333333
333333333333333333755633333333334444444444444444444444144444444444444444444444444444444433333313333bb3333375563333333333333bb333
33333333333333333365573333333333464444644644446446444164464444644644446446444464464444643333333133bbbb33336557333333333333bbbb33
3333333333333333337556333333333344464444444644444446144444464444444644444446444444464444333333331bbbbbb333755633333333333bbbbbb3
33333333333333333365573333333333444444444444444444414444444444444444444444444444444444443333333331bbbbb333655733333333333bbbbbb3
333333333333333333755633333333334444464444444644441446444444464444444644444446444444464433333333331bbb33337556333333333333bbbb33
3333333333333333336557333333333344644444446444444164444444644444446444444464444444644444333333333331b3333365573333333333333bb333
33333333333333333375563333333333444444444444444441444444444444444444444444444444444444443333333333313333337556333333333333333333
33333333333333333365573333333333444464443333333313333333333333333333333333333333444464443333333333331333336557333333333333333333
33333333333333333375563333333333444444443333333133333333333333333333333333333333444444443333333333333133337556333333333333333333
33333333333333333365573333333333464444643333333133333333333333333333333333333333464444643333333333333133336557333333333333333333
33333333333333333375563333333333444644443333333133333333333333333333333333333333444644443333333333333133337556333333333333333333
33333333333333333365573333333333444444443333331333333333333333333333333333333333444444443333333333333313336557333333333333333333
33333333333333333375563333333333444446443333331333333333333333333333333333333333444446443333333333333313337556333333333333333333
33333333333333333365573333333333446444443333313333333333333333333333333333333333446444443333333333333331336557333333333333333333
33333333333333333375563333333333444444443333313333333333333333333333333333333333444444443333333333333331337556333333333333333333
33333333333333333376763333333333444464443333313333333333333333333333333333333333444464443333333333333331336557333333333333333333
333333333333333336555573333333334444444433333133333333333333333333333333333bb333444444443333333333333331337556333333333333333333
76767676767676767555555633333333464444643333133333333333333333333333333333bbbb33464444643333333333333333136557333333333333333333
555555555555555565555557333333334446444433331333333333333333333333333377777777b3444644443333333333333333137556333333333333333333
555555555555555575555556333333334444444433331333333333333333333333333370077007b3444444443333333333333333136557333333333333333333
67676767676767676555555733333333444446443333133333333333333333333333337007700733444446443333333333333333137556333333333333333333
33333333333333333755556333333333446444443333133333333333333333333333337777777733446444443333333333333333136557333333333333333333
33333333333333333367673333333333444444443333133333333333333333333333337777777733444444443333333333333333137556333333333333333333
33333333333333333333333333333333444461111111111111111111111111443333337007700733444464443333333333333333136557333333333333333333
3333333333333333333333333333333344444166611116666661616666666144333333700770073344444444333333333333333313755633333bb33333333333
333333333333333333333333333333334644416661111666666161666666616433333377777777334644446433333333333333331365573333bbbb3333333333
33333333333333333333333333333333444641666111166666616166666661443333333333333333444644443333333333333333137556333bbbbbb333333333
33333333333333333333333333333333444441666111166666616166666661443333333333333333444444443333333333333333136557333bbbbbb333333333
333333333333311111111133333333334444416661116166666161666666614433333333333333334444464433333333333333313375563333bbbb3333333333
3333333331111333333333111133333344644166611161666661616666666144333333333333333344644444333333333333333133655733333bb33333333333
33333331133333333333333333113333444441666111616666616166666661443333333333333333444444443333333333333331337556333333333333333333
33333113333333333333333333331133333331111111111111111111111111443333333333333333444464443333333333333331336557333333333333333333
333313333333333333333333333333133333333333333313333333334444444433333333331133334444444433333333333bb313337556333333333333333333
33113333333333333333333333333331133333333333331333333333464444643333333333313333464444643333333333bbbb13336557333333333333333333
3133333333333333333333333333333331333333333333313333333344464444333333333331333344464444333333333bbbb1b3337556333333333333333333
1333333333333333333333333333333333133333333333313333333344444444333333333331333344444444333333333bbbb1b3336557333333333333333333
33333333333333333333333333333333333133333333333133333333444446443333333333111333444446443333333333bbb133337556333333333333333333
333333333333333333333333333333333333133333333333133333331111111113333333333333334464444433333333333b1333336557333333333333333333
33333333333333333333333333333333333313333333333331333333166666661333333333333333444444443333333333313333337556333333333333333333
33333333333333333333333333333333333331333333333331333333166666661333333333333333444464443333333333313333336557333333333333333333
3333333333333333333333333333333333333313333bb33333133333166666661333333333333333444444443333333333133333337556333333333333333333
333333333333333333333333333333333333331333bbbb3333313333166666661333333333333333464444643333333331333333336557333333333333333333
33333333333333333333333333333333333333313bbbbbb333331333166666661333333333333333444644443333333313333333337556333333333333333333
33333333333333333333333333333333333333313bbbbbb333333133166666661333333333333333444444443333333133333333336557333333333333333333
333333333333333333333333333333333333333313bbbb3333333313166666661333333333333333444446443333331333333333337556333333333333333333
3333333333333333333333333333333333333333133bb33333333331111111111333333333333333446444443333313333333333336557333333333333333333
33333333333333333333333333333333333333331333333333333333144444443333333333333333111111111333133333333333337556333333333333333333
33333333333333333333333333333333333333331333333333333333411464443333333333333333166666661311333333333333336557333333333333333333
333333333333377777777333333333333333333331333333333333334441444433333333333bb333166666661133333333333333337556333333333333333333
33333333333337007700733333333333333333333133333333333333464411143333333333bbbb33166666111333333333333333336557333333333333333333
3333333333333700770073333333333333333333313333333333333344464441133333333bbbbbb3166611661333333333333333337556333333333333333333
3333333333333777007773333333333333333333313333333333333344444444311113333bbbbbb3111166661333333333333333336557333333333333333333
33333333333337770077733333333333333333333133333333333333444446443333311111111111166666661333333333333333337556333333333333333333
333333333333370077007333333333333333333331333333333333334464444433333333333bb333166666661333333333333333336557333333333333333333
33333333333337007700733333333333333333333133333333333333444444443333333333333333111111111333333333333333337556333333333333333333
33333333333337777777733333333333333333333133333333333333444461111111113333333333111111111333333333333333336557333333333333333333
33333b333333333333333333333333333333333331333333333333334411144433333311133333334444444433333333333333333375563333333333333bb333
33333bb3333333333333333333333333333333331333333333333333111111111333333331133333464444643333333333333333336557333333333333bbbb33
bbbbbbbb33333333333333333333333333333333133333333333331116666666133333333331133344464444333333333333333333755633333333333bbbbbb3
bbbbbbbb33333333333333333333333333333333133333333333313316666666133333333333313344444444333333333333333333655733333333333bbbbbb3
33333bb3333333333333333333333333333333331333333333311333166666661333333333333311444446443333333333333333337556333333333333bbbb33
33333b333333333333333333333333333333333133333333331333331666666613333333333333331464444433333333333333333365573333333333333bb333
33333333333333333111333333333333333333313333333331333333166666661333333333333333414444443333333333333333337556333333333333333333
44446444444464443331333333333333333333134444641111111111111666661333333333333333414464443333333333333333336557333333333333333333
444444444444444431113333333bb333333333131111111116666616611666661333333333333333441444443333333333333333337556333333333333333333
46444464464444643133333333bbbb33333331331666666116666616611111111333333333333333464144643333333333333333336557333333333333333333
4446444444464444311133333bbbbbb3333313331666666116666616611644443333333333333333444144443333333333333333337556333333333333333333
4444444444444444333333333bbbbbb3333313331666661616666616611444443333333333333333444414443333333333333333336557333333333333333333
44444644444446443333333333bbbb33333133331666661616666616611446443333333333333333444416443333333333333333337556333333333333333333
146444444464444433333333333bb333331333331666616616666616611444443333333333333333446441443333333333333333336557333333333333333333
41444444444444443333333333333333313333331666616616666616611444443333333333333333444441443333333333333333337556333333333333333333
33113333444464443333333333333331133333331111111111111111111333333333333333333333444461443333333333333333336557333333333113333333
33331b33444444443333333333333313333333331666166613333333333337777777733333333333444444143333333333333833337556333333355115533333
33333113464444643333333333331133333333331666166613333333333337007777733333333333464444143333333333333883336557333335555115555333
bbbbbbb1144644443333333333113333333333331666166613333333333337007777733333333333444644143333333388888888337556333555555115555553
bbbbbbbb411114443333331111333333333333331666166613333333333337770077733333333333444444143333333388888888336557335556666776666555
33333bb3444441111111113333333333333333331666166613333333333337770077733333333333444446143333333333333883337556336666667777666666
33333b33446444443333333333333333333333331666166613333333333337777700733333333333446444143333333333333833336557336666677777766666
33333333444444443333333333333333333333331666166613333333333337777700733333333333444444143333333333333333337556335666600070006665
33333333444464411111111111111111444464441111111113333333333337777777733333333333444464144411111111111144446566665666777070706665
33333333444444416666666166661661444444444444144433333333333bb3333333333333333333444444144416666666166144466659445566700070706655
3333333346444461666666616666166146444464464441643333333333bbbb333333333333333333464441644616666666166166649559465567707770707655
333333334446444166666661666616614446444444464144333333333bbbbbb33333333333333333444641444416666666166644449559445557700070007555
333333334444444166666661666616614444444444444144333333333bbbbbb33333333333333333444441444416666666166144649559445556666666666555
3333333344444641666666616666166144444644444446143333333333bbbb333333333333333333444416444416666666666144449559443511666666661153
33333333446444416666611111661661446444444464441433333333333bb3333333333333333333446414444416666666166144449559643155566666655513
33333333444444416661166166111661444444444444444133333333333333333111333333333333444144444416666666166144447556443335556666555333
33333333333333311111111111111111333333333333333133333333333333333331333333333333333133333311116111111133336557333333333333333333
33333333333333331333333333333313333333333333333313333333333333333311333333333333331333333333363333333833337556333333333333333333
33333333333333331333333333333313333333333333333331333333333333333331333333333333313333333333633333333883336557333333333333333333
33333333333333313337777777733331333333333333333331333333333333333111333333333333313333333336333388888888337556333333333333333333
33333333333333313337007700733331333333333333333333133333333333333333333333333333133333333336333388888888336557333333333333333333
33333333333333133337007700733333133333333333333333311333333333333333333333333311333333333363333333333883337556333333333333333333
33333333333333133337777777733333133333333333333333333133333333333333333333333133333333333633333333333833336557333333333333333333
33333333333333133337777777733333133333333333333333333311333333333333333333311333333333333633333333333333337556333333333333333333
33333333333333133337007700733333133333333333333333333333113333333333333331133333333333336333333333333333336557333333333333333333
333333333333331333370077007bb333133333333333333333333333331113333333331113333333333333336333333333333333337556333333333333333333
333333333333333133377777777bbb31333333333333333333333333333331111111113333333333333333336333333333333333336557333333333333333333
3333333333333331333333333bbbbbb1333333333333333333333333333333333333333333333333333333363333333333333333337556333333333333333333
3333333333333333133333333bbbbb13333333333333333333333333333333333333333333333333333333363333333333333333336557333333333333333333
33333333333333331333333333bbbb13333333333333333333333333333333333333333333333333333333363333333333333333337556333333333333333333
777377737773377337733333737b1133777337733333777373337773377377733333777337737373777377733333333333333333336557333333333333333333
73737373733373337331133373713333373373733333737373337373733373333333373373737373733373733333333333333333337556333333333333333333
77737733773377737773311117333333373373733333777373337773733377333333373373737373773377633333333333333333336557333333333333333333
73337373733333733373333171733333373373733333733373337373733373333333373373737773733b737333333333333333333375563333333333333bb333
73337373777377337733333371733333373377333333733377737373377377733333373377337773777b7b733333333333333333336557333333333333bbbb33
333333333333333333333331113333333333333333333333333333333333333333333333333333333bbbbb63333333333333333333755633333333333bbbbbb3
333333333333333333333331333333333333333333333333333333333333333333333333333333333bbbbb63333333333333333333655733333333333bbbbbb3
3333333333333333333333311133333333333333333333333333333333333333333333333333333333bbbb633333333333333333337556333337337333bbbb33
33333333333333333333333333333333333333333333333333333333333333333333333333333333333bb36333333333333333333365573333337733333bb333
33333333333333333333333333333333333333333333333333333333333333333333333333333333333333633333333333333333337556333333773333333333
33333333333333333333333333333333333333333333333333333333333333333333333333333333333333633333333333333333337676333337337333333333
33333333333333333333333333333333333333333333333333333333333333333333333333333333333333363333333333333333365555733333333333333333
76767676767676767676767676767676767676767676767676767676767676767676767676767676767676767676767676767676755555563333333333333333
55555555555555555555555555555555555555555555555555555555555555555555555555555555555555565555555555555555655555573333333333333333
55555555555555555555555555555555555555555555555555555555555555555555555555555555555555556555555555555555755555563333333333333333
67676767676767676767676767676767676767676767676767676767676767676767676767676767676767676767677767776777677757773333333337773337
33333333333333333333333333333333333333333333333333333333333333333333333333333333333333336333373337373733375557673373333337333373
33333333333333333333333333333333333333333333333333333333333333333333333333333333333333333633377737773773377767373333333337773373

__map__
424141414141414141414a4141414141414146454545454545454545454641410000808182838485448687848b8884898a84414141939495968444979884854141410000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
404040404040404040404b404040414141414741404040404040404144474144000090914141414141414141414141414141414141a3a441414141414141414144410000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
424141414141414141414a414140414441414741404141414141404141474141000046454545454545454545454545454546414141414141411b41194141184141410000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
404040404040404040404b404040414645454641404141414144404141474141000047414141414144414141414144414147414144414141414141414141414141410000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
404141414141414141414a414141414741414141404040404141404141474441000047424144414141414141414141414147411b41184141194141414144414141410000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
404141414141414441414a4144414147414141414141414041414041444741410000494040404040404041414141414141474141414141414141411b4141411a41410000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
404040404141414141414a414141414741414141414441404141404141474141000047424141414141404141414441414147414441411a4141444141411a414141410000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
414141404144414141414a414141414741414141414141404144404141474141000047414141404040404141414141414147414141414141194141411841414141410000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
414441404141414141414a414141434742414141414141404141404141474144000047444141404144414141414141414147414141414141414141414141414144410000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
414141404040404141414d404040404940404144414040404141404141474141000047414141404141414141414141414347414141414141414141444141414141410000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
414141414141404144414c414141434742404141414041414141404143471415000047414141404040404040404040404049414141444141414141414141414141410000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
414141414441404141414c414441414741404040404041444141404040492425000047414141414141414141414141414347414a4a4a4a4a4a4a4a4a4a4a4a4a4a4a0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
414141414141404040404d414141414741414141414141414141414143474141000047414141414141414141414141414147414141414141414141414141414141410000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
414141414141414141414a414141414741414144414141414141414141474141000047414141414141414141414141414147414141414141414141414141414141410000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
414141414141414141414a414141414741414141414141414141444141474144000047414141414141414141414141414147414141414141414141414141414141410000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
414141414141414141414a414141414645454545454545454545454545464141000046454545454545454545454545454546414141414141414141414141414141410000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
