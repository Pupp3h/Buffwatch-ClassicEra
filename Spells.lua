-- Local vars and funcs
local addonName, BUFFWATCHADDON = ...;

local LRankText = nil;
local NoLocale = false;

function BUFFWATCHADDON.GetSpellRank(spellId)

    if NoLocale or spellId > 32768 then return nil; end

    local byteval = string.byte(BUFFWATCHADDON.SpellRanks, spellId);

    if byteval > 48 then
        return byteval - 48;
    else
        return nil;
    end

end

function BUFFWATCHADDON.GetSpellRankText(spellId)

    local rank = BUFFWATCHADDON.GetSpellRank(spellId);

    if rank then
        return LRankText..rank;
    else
        return nil;
    end

end

-- Simple localization for rank text until we do something for the whole addon
function BUFFWATCHADDON.SetLocalization()

    local locale = GetLocale();

    if locale == "enUS" then LRankText = "Rank ";
    elseif locale == "enGB" then LRankText = "Rank ";
    elseif locale == "deDE" then LRankText = "Rang ";
    elseif locale == "esES" then LRankText = "Rango ";
    elseif locale == "esMX" then LRankText = "Rango ";
    elseif locale == "frFR" then LRankText = "Rang ";
    elseif locale == "ptBR" then LRankText = "Grau ";
    elseif locale == "ruRU" then LRankText = "Уровень ";
    else
        NoLocale = true;
    end

end
BUFFWATCHADDON.SetLocalization();

BUFFWATCHADDON.SpellRanks = table.concat({
    ".........1......1...................................1.............1....1.....1..........1.........111...........1..1.1.1.1......",
    "....1..1..1...2.3......................1...1................................2......................2.................1..........",
    "...........................23......................................12.....12......1........1.....................1..............",
    "..................1....1............1...............................1...........1.1........111..2.221111.21.123111...3.2.1.....2",
    "..1.1.227.....1.2.21111112211.1...33.1......2132216.332.212.312.1.......11111.22.2.123.313.111.111122112.123.3.31311....1.1...2.",
    ".13...3..15112224.1.3233....................111.1....122..21.111312.31..21....1.22.1211.11.31223...1.....1........1..1.......1..",
    "31.1.1.1.21212.1.1.111112.221.....................111...............33...2.211.1.13214..22.6.2.122...4.2.1....15.6...2...5...2..",
    "...3.3..33.1.3..444..1.1.1.4.2.1.22...41..51..5544...1.5...1..62.4.3..1..33.1..11.311.444..223344..22.2...2554411111122.1..2211.",
    "244.3.351.1.1.1..55.1...3...1....22..2211....3....33..1..1...224422..33..1..1...35122....1..1..1.....1...1...........1...123411.",
    "2.....21..1234.1....221.....234.1...1.2211.1.3.3.......2..3.21..2.3...2.2..2............1.1231231231341231234123111.......232312",
    "1212..12..111..124145.123123...123.1.123...2323...1.1.....12..12.........45645....444.123....123....2321.4....1.12....1....2.45.",
    ".....123...1231.1..1233231121.1....11..11....123..123.11..1....12341234.11.......1....1...1..........1..1..1...........1......1.",
    ".......12...1..1..........21..11..11.......123................1.....1234.45............................1........................",
    "......23..123....................1...1...........111..................2121...1....12345123452345123451234.1234512..12..1234.1234",
    "..................1..........123..12321.....1............1..1..1212............1231351..................12............1.45......",
    "......................1.....1................1...........1......1.................11.1.1.2..11.2................................",
    "3112312231211...113422....1..............4545..111................1111112.112..........123.1123.................................",
    "................................................................................................................................",
    "................................................................................................................................",
    "....................................23.........................................12345....................1.......................",
    "........................1...2341234..........2134512345....12.............1.1.....1.....1.11.........................1....2345..",
    "...1.....1....2345............................................................5.4..45............2....4.4...1.52...2.......1....",
    ".12...12...1......1.2.....12......1........3.34.5..1..1...1..1..........41.......1.........1.1.1.1.1..34....................4411",
    "111112..............1.......115671112311........................871.................22...1....123411.211.............34623123123",
    "123...2341231112412323123.1..........12...........................1414.....................................................1....",
    ".........121.31212................................................34............................................................",
    ".........................11........1...........................................11..........1212.........234.....................",
    "..........6....666....................................................................................11........................",
    ".............61......1....................66................................3434.84.5....11......2.1.4.1.112412212342341234..1..",
    "2..1......51.1.45..1111.1.2.1..61.44.225.........................................................1..........................1...",
    "................................................................................................................................",
    "....................................................................................................................1...........",
    "..........123.4124323456782345678.........................................12345678123456781234567812345678.12345.67812345678.123",
    "4567812345678.........12345678123456781234567812345678........2212121212121212312312312.3..............1231231231456782345678123",
    "456781234567811234567823456781123456782345678112211221122112211231123232.112323.112.32311234567823456781123456782345678112345678",
    "23456781123456782345678.............234.234...23456785678..234567811112345678234567823456782345678123456782345678234567823456782",
    "34567823456782345678..2345678234567812345678123456781234567812345678.1123.456.782345678.1123456.7823456781.123456782345678......",
    "..............2323...23112323............1122....22112211221122.........12323..................112345678234567811234567823456781",
    "1234567823456781123456782345678121211221122.......112323112323..................................................................",
    "..................................9:;<...9:;<...9:.....9:.....9:;<=>?9;<=>?:9:;<=>?9:;<=>?.9:;<=>?9:;<=>?....1.................1",
    "1111111111.......11...123123..................1...1..411234523451234521345341.2.3.34......11.11111..11.1.....212243.1.1.222....1",
    "....1...............11.1111....1..1.123.2345.234511.....111131.........111111............1.9:;<=>?.9:;<=>?9:;<=>?.11234234......",
    "............21.2.1.1........1.....................@9:;<=>..............9:;<=>1239:;<=>12312339:;<=>?12321231.1..9:;<=>.123.....1",
    "2311123.?..9:;<=>?.1231231..9:;<=>?123..1239:;<=>?1239:;<=>?23...1.122.........11232323..1231222............12323........12.2234",
    "56789:;<=>?2..312123456789:;<=>?.....111..1111...345678345678..1......1.1...1.....123....1.23121111....1.1.11123456789:;<=>?12.1",
    "11121231456789:;<=>?.11..1234567845645612345678....123412339:49:34123412311.23234349:9:1123234341.......1123234349::9341123.234.",
    "..9:...1.234..9:..1..234...11134..123412334..1123...12341234...12345671234567...112323456.71123234567...........1234....123412..",
    ".........123..12.12341..626.............1.36.6345656.23412345623456.2...6789:112231112345678:2239..11...1.....444433...1....2211",
    ".2....1.2.3456....11234.52345..232.2....2.2..2233...........33...123223333221232322.1.11...................................1....",
    ".......1234.15....2345............1...1.12345....2345..1.12345....23451...1..2341......1.1234.....23..2.3.234.2312...234234.2342",
    "34......1............1...........1........12345.1....2345....................................1............1.....1111............",
    "..............4..234234112.2.11...3.1.2.3.11122.......................................................12..1.334.4333..1...1.....",
    "..1.............11....................................11...........1...1....11111..................3...234234..22122222..6666422",
    "112.121.22...2222....1123123....................................................................................................",
    ".......21.....1............11.......1.......1..1...0.0..22.......4232.32323....21.2.2.2.1............................234........",
    "............................................................3...1..1...................222......1........................1..1...",
    ".........1...................5555.67896789.6.................1234512435123451234512345.............123..1..............1.1...1.1",
    "1..231.................21444.111111..........1....................1..1..2112323..233.1.111.......1.....22331221.................",
    "................................................................................................................................",
    "........................................................................................66...44441444....23231.111..............",
    "...............................................11..................................1..................................2345.23123",
    "23412123............1..2345...................................123231232.1234112.2....................................56....11...",
    "..1....................1.............1.........................1...1771223322...123123.111223323111.222..112342341123231122.1...",
    "2....1111.111........1....11123123...2345623456123123123111221..1122155....1......1..111.232323232323............1..111111111112",
    "2....2.....3434...1...............1.111111222........4.222221.4....1.11111..........1..........23231.......................2323.",
    "...........................1111............................33.....2222......1..567567567567454545544534.3433......1.234234123423",
    "42323.2223232323...........................222323232323232323..11111............................................................",
    "................1..1.3.................1....6656561.3323423433232322..112323.....................1.1.11111..22233.3222222..12...",
    ".......1........5.523.23.......1...................................................4.....................3.4.....4.22.2323......",
    "..111....................................1............................777755.77..44..2.211.2345672345671123452345...23423422....",
    "...........44.........33...111.33.1111122...1111..........................1.....................1...............................",
    "...........................................1...................................................................1................",
    "....1111.........1......................2.......................................................................................",
    "........................................................................................4..................11..................2",
    "34234...6..122...332323..................................................................................2323..........44.......",
    "...............................11...............................................................................................",
    "....1..11..11...554436644445588.......................................1.....................22222333454589:89:89:89:343445556567",
    "8978934343434.....5656.676767679:9:33556655.33.44.455688333............................................................1........",
    "................................33.................................2....34......................................................",
    ".........................567567565689:;89:;45534534534..343445454489:89:456456456456667756565675676767565634344455...44.........",
    "................................67.4.33..........2467246723452345..44334564562.2.2233337878....4545...6........................1",
    "......................787889894145456456456567567.....5656565667675656564443444545.....333.4545454564563434232323..3.3.3..2.3423",
    "4..............2.34.....3.33.3.3.....23.23.23.....................................234234234234..23111232323.4.2223332323.....232",
    "3222............................................................................................................................",
    "............................................1........................................78..................................3453453",
    "434...33344678678789:789:...222323567567......789789787856565656789789563333233344234...........................................",
    "................56.........................................1111......1.2..1.1........11....1..1....1....1.1...12...1............",
    "..............1........1....1....1....1....1....1...11......454522....1.11..1........1.........1....1....1....1....1..1......1..",
    "..4564564564566786784545565678783378784434545454545453........1.2.....456456456456......343434134....123451.....................",
    ".....3333...........123..........1..........................................432.................................................",
    "..................1.........45656345345..235678..785675673356563434........45454545343434.......................................",
    "..........7897895567675656443434232323456456567567565634345656456456442223232323....3453452323...................676745454545565",
    "64564563434.................................................1...................................................................",
    "................................................................................................................................",
    "................................................................................................................................",
    ".11.1........4444.4..................1..................................................................................11.11111",
    "11...11.1111111...21..111...111111.11.1.12.......23453......232.2.1.2345.................2...................345................",
    "..............................................23..2.3...2.2........1232323...1.23..2345.2............23..34567..................",
    "................1.......2.3..2345..............2.....2.345.222...................................................23...2323.2...2",
    "...2345...............122..123451.23..2345........12345......................2345.......23452...............2.345..23.45....1123",
    "..22..3..232345..2..1..2342342345123452345...34522.2314523.451234533...23..23451.....2..........................................",
    "...............31....2.234.152234521.123452345.......2345.............2345........34.56782345.23453...234...234...2.2345........",
    "............................................................................................................1...................",
    ".................................1111234234234234...............................................................................",
    "...............................................................................................................1................",
    ".........................................1.......11...................................1....1.........567567.23456782345678......",
    "................................................................................................................................",
    "........111.1..11.1................11.......1111.......2.1.................................234532.1.1.123452345....111..........",
    ".......2..1.......345..23.452345......2.232....2..2....................1...........1............................................",
    ".....1.12345.23452345.111.231.1.........................................................................1....23452...2323451..12",
    "312.........123.............1...12345.1........1...2..3451234511...22......11122312312312.123123....1....1...2..345.....2345....",
    "............................................1......234567823234232234.232345678234...232.23452345..2323..23232345623423....23456",
    "78232342322342323456783423223452.3.2323456....................................................23.4..........23..................",
    ".......................................................111112345..1.............................................................",
    "................................................................................................................................",
    "......................1...1111.1..............223232.2.23..234523452345..........................233............................",
    "........................................1..11....1..1..1...11.1111.234567234567.................................................",
    "...............................2345223..2232...23452345....4..........3....45....123............................................",
    "..1123231.23..............................34567.......................................................9:9:......................",
    "....1...................1111823456711112111...............................23452234.521.3..2345234523452345..........2....3452.3.",
    ".23............................1..............1......................23..3...1.........2.3.2.34.5.67............................",
    "..............................................1...............................234............................1..................",
    "............3456....3456.....1...............................................................................................1..",
    "................................................................................................................................",
    "................................................................................................................................",
    "..................................1..1111.1..........................................1..................2345234523452345........",
    ".2.............................2345.........1..1111111.1..1..11..1.2.3......23452234523452345234523452.345223..3...........11111",
    "111.11...1....2345..23452345..2..23.2.2..234523452345.56756767....................4.5656..56...45.4545..444.....................",
    "..444....4...................................................................12345....................1.2..312................1.",
    "123......................12345.2.....1.....................1.....12345....................1.............1.......................",
    "................................................1.......66....................45..1..........12345.................112....3.4511",
    "45.1..111111.............................2345123451212345.1234561231..23....123..1......112345..........633567............315451",
    "2.34512345..1234512..123..2345..1234512345.12123..123451.2...11.2....1.2...1.23......1...............12...1234..................",
    ".........................12.3451.2345.1.234512345123451122.....................1.123..12345..1234512............................",
    ".1....................................3.........................................1...........1.234...1123456782345678............",
    "..............................2345.345...12.3...6...1.............23..1..22...33.231........3456.............234...34...23...3..",
    "..................123.......................................................12345...............................................",
    "........6.......................................................................................................................",
    "......................................................................11.............234234...........1........1.123451234512345",
    "1..2....34512345.123451.................2345.............23456234.56.1.11...........1.......................................1223",
    "456223122345....22......2.3.4....123451..1......................................................................................",
    "........................2.......1.......1....121....1.................12345..121212345121................23456.223......2....123",
    "4512312...1.5.......................1....121............................................1.....12345..1..........................",
    ".....1234..........................................................2........1...........21................................123...",
    "..........................12.123.................................................................12.345........1..234512345.....",
    "...............................................9.:....................................22........2323............................",
    "...1212312345.12123.12....................1...........2345.12345.12312.....1..121234512..............................8668.......",
    "....12345.1.231...................................234562..3456234.............................................234234234.2323....",
    "...................................1...11.......................................................................................",
    "..............................................................................123.....12.......1...........23..1................",
    "...........................1...23452.31456712...2.345612345.23.45623452.345234562345612.213452122335445671.23456234561.234561234",
    "56123456.123456712345123456712345........12.3..12...1234512345................1....2345123451234512.345..1...2234563456......123",
    "45..12.12345.....111111..11.1.23451.23...123....1112345.....................................123123451212...........12.2..11...12",
    "345..1.2.....123451.234512.3..11234512345.....................21.2.23423.1.41234................................................",
    "..................2233442341111......11..................................................................................2345623",
    "456......2.3452345...........12..1.1...........1..1111232323...232323.............................2345623456....................",
    ".654321.123...............123............................................11123451......234512345..........................12...1",
    "234512345.....123..212345.....1..2....3451234512345123..11.......2..1111.1...12.1.2435.11112122231212345....123541.2345........1",
    "2.......1122123...112...12311123123451234511.2.........23456782345678......3456.3456...3456722345123.45..34523123..4234234234232",
    "32323.123.............1.345612345612345612341234561234..................1234123412..234567823456..23451234123.....1123..1.......",
    "...11.123......3345121212..................................1..................4545......5.5.....................................",
    "231..2323...23........1..........................2.345........................................45.7......................22.....1",
    ".12..3.23.4545...................554545452345.................1............................................................1....",
    "2345.67.............11111.....2....2345623..2312342.2345.34513232323456..3.2323234512343451232.3322345451.......................",
    ".................................................................................1.......1111.......................1...........",
    "..........................................1....1..............1..1..............................................................",
    "................................................................................................111111..........................",
    "................................................................................................................................",
    "..............................................234.2.34...1.2...12.................1111.11111111111111111111111111...............",
    "................................................................................................................................",
    "......................................................................3.................1212....................................",
    ".....................................................................1..........11....................1.........................",
    "..............................1111..............................................................................................",
    "................................................................................................................................",
    "................................................................................................................................",
    ".................................................................................1..............................................",
    ".......................................1111.....................................................................................",
    ".................................................................................1...........................1...........1...232",
    "3...............1..1......................234234.........1...................................................12323..............",
    "................................................................................................................1..1.1..........",
    "..........................................................11..1.....2323................................112323...........112323.",
    ".........................................1.......................................................1..............................",
    "...................................................................................................1.........................5..",
    "..............................1..23....................1234.....................................................................",
    "..............:86..............12345.............1..............................................................................",
    "..............3:................................................................................................................",
    ".......................................4.4..............................1..........234...234.....................1234234........",
    "..........56..........88...............................1.................................................44.....................",
    "..................................................................12323.........................................................",
    ".............................................63........4.........................21123....3.........12345.......................",
    ".................................................................45..................1.....68:.1......11..............2121134123",
    "4112323.......34...2.3.41.1234..2..34..1.1.1111.2..342342342342342341112342342342...123456789...1.11234567823456782.345678......",
    "23423422.3434.......4.4...312.321...................9:9:9:.:...11........................................1.1......3.............",
    "...............................................7................................................................................",
    "...........11................................................5....11.....................1....................2345..............",
    ".......12345.23452345..........................2345623456..........................................................11...........",
    "....................................................1...........................................................................",
    ".....................................................................9.67679.597;7;9.5.;.<:.8.7..5:5............................",
    "8854555:5967:.3355...................................6793:5597;7;.955;<8:87.....................................................",
    "..........................................................................................................................1.....",
    "...............................................................................................................38...............",
    "......765432.1........4..............................1..........................1....1.6............5......2....................",
    ".................................1...1....1..33.....1.2121122212...................;.......1..1....12976679:53597;7;95.5;<8:875:",
    "5..2........1..................223..312........................................11...1....................1...1..................",
    "................................................................234....2342323..........55.......................1..............",
    "..........................................................................................................................71234.",
    "56......1.......................................................................................................................",
    "............................................................................12..................................................",
    "...........................111.............................................................................................1....",
    "................................................................................................................................",
    "................................................................................................................................",
    "................................................................................................................................",
    "................................................................................................................................",
    "................................................................................................................................",
    "................................................................................................................................",
    "........................................................3654...3....................89:724....2.26..3.56.2.....63...............",
    "................................11116..................................................2................3.......................",
    "............12.....1..456.456.....1.1.2323..456....2..........124.4.1........................23.2323.......................12345",
    "................................................................................................................................",
    "................................................................................................................................",
    "...........................................................................................................................1....",
    "...........................................2..........6.................................123456..................................",
    "................................................................................................................................",
    "...............................................2345............654477...........................................................",
    "..........1.....................................................................................................................",
    "..............................................................................................................4.................",
    "...................................................................12312....1...................................................",
    ".....1.23........123..23.1.2.345...................................................1..2345................1...1.........2323....",
    "..1.2.312........3..21.....................66...................................................................................",
    ".............................................................................................................................123",
    "1..2345.....................12.................................................4......................................1.........",
    "...................23.................:.........................................................................................",
    "................................................................................................................................",
    "................................................................................................................................",
    "................................................................................................................................",
    "...............................................................................1....1...........................................",
    "................................................................................................................................",
    "................................................................................................................................",
    "................................................................................................................................",
    ".........................................................................................32.....................................",
    "..............................................................................1231123452345123.1.2345...........................",
    "............123123123451.......1...........1212......12345............12........................................................",
    ".......................................995.5....................................................................................",
    "................................................................................................................................",
    "......................1.........................................................................................................",
    "................................................................................................................................",
    "................................................................................................................................",
    "................................................................................................................................",
    "................................................................................................................................",
    "................................................................................................................................",
    "................................................................................................................................",
    "................................................................................................................................",
    "................................................................................................................................",
    "................................................................................................................................",
    "................................................................................................................................",
    "................................................................................................................................",
});