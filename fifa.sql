set names utf8;
drop database if exists fifa;
create database fifa charset=utf8;
use fifa;
-- 用户模块
create table fUser(
    fid int primary key auto_increment,
    fname varchar(32) not null,
    fpwd varchar(32) not null,
    email varchar(32) not null
);
insert into fUser values(null,'Yoyeo','98137','1695782408@qq.com');

-- 头部部分
-- 首页海报图
create table indexImg(
    lid int primary key auto_increment,
    limg varchar(128) not null,
    mimg varchar(128) not null,
    simg varchar(128) not null
);
insert into indexImg values(null,'/lg/banner1.jpg','/md/banner-1-md.jpg','/sm/banner-1-sm.jpg');
insert into indexImg values(null,'/lg/banner2.jpg','/md/banner-2-md.jpg','/sm/banner-2-sm.jpg');
insert into indexImg values(null,'/lg/banner3.jpg','/md/banner-3-md.jpg','/sm/banner-3-sm.jpg');
insert into indexImg values(null,'/lg/banner4.jpg','/md/banner-4-md.jpg','/sm/banner-4-sm.jpg');
insert into indexImg values(null,'/lg/banner5.jpg','/md/banner-5-md.jpg','/sm/banner-5-sm.jpg');
insert into indexImg values(null,'/lg/banner1-three.png','/md/banner1-three-md.png','/sm/banner1-three-sm.png');

-- EA其他游戏大作
create table headerImg(
    hid int primary key auto_increment,
    himg varchar(128) not null
);
insert into headerImg values(null,'fifa-md.jpg');
insert into headerImg values(null,'madden-nfl-md.jpg');
insert into headerImg values(null,'nhl-md.jpg');
insert into headerImg values(null,'nba-live-md.jpg');
insert into headerImg values(null,'ufc-md.jpg');

-- 切换网页语言
create table headerLangue(
    lid int primary key auto_increment,
    limg varchar(128) not null,
    lname varchar(32) not null
);
insert into headerLangue values(null,'usa.jpg',"meiguo");
insert into headerLangue values(null,'uk.jpg',"uk");
insert into headerLangue values(null,'aus.jpg',"aus");
insert into headerLangue values(null,'deu.jpg',"deu");
insert into headerLangue values(null,'fra.jpg',"fra");
insert into headerLangue values(null,'esp.jpg',"esp");
insert into headerLangue values(null,'pol.jpg',"pol");
insert into headerLangue values(null,'poc.jpg',"poc");
insert into headerLangue values(null,'ita.jpg',"ita");
insert into headerLangue values(null,'ned.jpg',"ned");
insert into headerLangue values(null,'mex.jpg',"mex");
insert into headerLangue values(null,'cr.jpg',"cr");
insert into headerLangue values(null,'baz.jpg',"baz");
insert into headerLangue values(null,'jpn.jpg',"jpn");
insert into headerLangue values(null,'dan.jpg',"dan");
insert into headerLangue values(null,'nor.jpg',"nor");
insert into headerLangue values(null,'sve.jpg',"sve");
insert into headerLangue values(null,'stalb.jpg',"stalb");
insert into headerLangue values(null,'tur.jpg',"tur");
insert into headerLangue values(null,'cfa.jpg',"cfa");

-- 顶部导航栏 -> 关于FIFA19 -> 前100名评分球员(20)
create table Top20(
    tid int primary key auto_increment,
    timg varchar(64) not null,
    tclub varchar(16) not null,
    tname varchar(32) not null,-- 8(排名) luis suarez
    introduce varchar(256) not null
);
insert into Top20 values(null,'Aguero-lg.jpg','曼城','20 SERGIO AGÜERO','多年來，Aguero在曼城上演無數場驚人表現，在多次球會重要時刻中射入關鍵一球。不過即使擁有如此驕人成績，這名經驗豐富的阿根廷籍前鋒仍然維持巔峰實力，能夠盤球越過幾乎任何後衛（89盤球），並把握似乎不可能成功的機會（89射門）。');
insert into Top20 values(null,'Chiellini-lg.jpg','尤文图斯','19 GIORGIO CHIELLINI','Chiellini是一名擁有現代思維的傳統後衛，他在意大利球壇上一直以來都是一個堅定不搖的存在。他那不低不高的82體能讓他能正面對抗魁梧粗壯的前鋒，但令他在全球後衛當中首屈一指的是他的搶球能力及掌控自如的侵略性，這些能力在遊戲中以91防守評分反映出。');
insert into Top20 values(null,'Griezmann-lg.jpg','马德里竞技','18 ANTOINE GRIEZMANN','雖然這名法國飛人在職涯的大部份時間都擔任翼鋒，他是在轉踢中鋒位置後才到達新境界，獲得更多人的敬仰和名氣。Griezmann能夠優雅且有效地領銜鋒線，他利用88盤球和86速度突破防線，讓對方防守陣容不知所措，接着藉着強勁86射門評分重炮破網。');
insert into Top20 values(null,'Kane-lg.jpg','热刺','17 HARRY KANE','雖然Kane常被人描述為傳統中鋒，他那純粹的入球能力一點都不過時。Kane的90射門評分，證明他能夠透過魚躍頭槌和遠距離淩空抽射等技巧，把握任何射門機會。');
insert into Top20 values(null,'Kante-lg.jpg','切尔西',"16 N'GOLO KANTÉ",'儘管這名紮實的法國籍球員外表腼腆，他是每個球隊必需的沉默中場齒輪。從任何方面來看，Kanté都是一名全能中場，他不僅能夠搶球和盯防（87防守），也能夠壓制對手（84體能），並把球帶前來發動進攻（81盤球）。');
insert into Top20 values(null,'Oblak-lg.jpg','马德里竞技','15 JAN OBLAK','這名年輕的斯洛文尼亞籍守門員，年紀輕輕就已經名列前矛，並以沉着（92接球能力）、運動能力（86撲救），以及敏銳反應救球（89反應）而聞名。他也是西甲獎項的常客，所以非常肯定他在最高等級比賽中累積經驗後，技術會與日俱進。');
insert into Top20 values(null,'Courtois-lg.jpg','皇家马德里','14 THIBAUT COURTOIS','這名比利時國家隊代表剛剛轉會到皇家馬德里，並已準備好在回歸西甲的這個賽季讓人留下深刻的印象。Courtois擁有驚人的88反應和87撲救，不過他不僅僅是防守要員：他那牢牢接住射門並將球交給隊友迅速反攻的能力（91接球能力），是他一直以來為著名球會效力的原因。');
insert into Top20 values(null,'Godin-lg.jpg','马德里竞技','13 DIEGO GODIN','Godín無論在國際或是球會等級都擁有豐厚的經驗，雖然他不像一些現代中堅般顯眼奪目，但他基本功十分扎實，而且練得爐火純青。全靠可觀的84體能評分，這名烏拉圭籍球員能夠輕鬆地應付各種體型的前鋒。Godín的89防守覆蓋了他在漫長職涯中練到登峰造極的各種技術，從強烈攔截到迅速且精明地分析任何比賽局勢。');
insert into Top20 values(null,'Neuer-lg.jpg','拜仁慕尼黑','12 MANUEL NEUER','這名德國籍球員多才多藝，並以他那偶爾會展現出的積極且高風險、高回報的守門風格而聞名。他藉着91撲救和88反應等關鍵守門能力，坐享這類能力的評分榜首。他的能力分配讓他從其他著名的守門員中展露頭角；無論是利用91踢球評分擔任「清道夫守門員」，還是把球精準無比地抛給隊友，Neuer的存在感十分強烈，彷彿球隊多了一名場上球員。');
insert into Top20 values(null,'Lewandowski-lg.jpg','拜仁慕尼黑','11 ROBERT LEWANDOWSKI','Lewandowski一季又一季登上神射手榜首，他已牢固地確立了自己在這個德國頂級聯賽中的傳奇領鋒地位。他擁有89射門和82體能評分，表面上看似是個傳統的中鋒，不過他的85盤球展示出他作為前鋒的全面性技術，能夠越過後衛並勁射破網。');
insert into Top20 values(null,'kroos-lg.jpg','皇家马德里','10 TONI KROOS','Kroos是帶動皇家馬德里運作的引擎，他好比 是把數個最理想的中場球員同時集於一身。他靠 着89傳球能力，可以在球場上的任何地方作出精 準傳球，亦能以82盤球能力為自己和隊友製造空 位。雖然他通常都是墮後至中場位置，他同時也 兼備控球技巧和82射門，因此如果他能靠近禁區 ，就會為對手帶來同樣等級的威脅。');
insert into Top20 values(null,'degea-lg.jpg','曼联','9 DAVID DE GEA','世上評分最高的守門員，具有足球界最頂尖的反應；他的94反應和90撲救能力，意味着多厲害的射門都無法叫他吃驚。多年來位處高峰的經驗，令這名西班牙球員磨練出高達88的走位能力。全靠他的87踢球能力，他也非常擅長把球分配給隊友。');
insert into Top20 values(null,'suarez-lg.jpg','巴塞罗那','8 LUIS SUAREZ','Suarez作為巴塞隆拿系統中技藝精湛的中場前鋒，常常憑着難以捉摸的腳法（87盤球）和過人的力量（85體能）令對手吃足苦頭，令防守球員無法靠近。這名烏拉圭球員的入球能力同樣屬於最高水準（90射門），每當足球落在Suarez腳下，就連經驗最豐富的防守球員也不禁感到心寒。');
insert into Top20 values(null,'ramos-lg.jpg','皇家马德里','7 SERGIO RAMOS','Ramos是現在世上評分最高的防守球員，他早年曾經擔任右後衛。但要等到他轉型為中堅之後，這名西班牙球員才真正奠定了其作為頂尖足球員的地位。Ramos具備令人望而生畏的91防守能力，這一點可見於他那卓越的領導能力、完美的攔截技巧和空中優勢。');
insert into Top20 values(null,'hazard-lg.jpg','切尔西','6 EDEN HAZARD','Hazard是另一個面面俱備的球員。縱使他的名銜是翼鋒，他也能夠擔當致命的進攻球員，只要一有機會，他便會毫不留情地擊垮對手。這名比利時球員總是能夠在絕境中找到空位，利用迅速的91速度和優雅的94盤球能力，為自己和隊友打開任何局面。');
insert into Top20 values(null,'debruyne-lg.jpg','曼城','5 KEVIN DE BRUYNE','作為另一個立足於足球界巔峰的出色比利時球員，De Bruyne為曼城貢獻了不少，也是曼城衛冕之戰中的大功臣。他的92傳球對中場指揮來說是最不可多得的重要資產，De Bruyne同時兼備了87盤球，腳法極為難以捉摸，因此他總是能夠找到各種選擇。無論是直射自由球還是常規射門，De Bruyne這名菁英射手總是能活用86的射門能力交出傑出表現。');
insert into Top20 values(null,'modric-lg.jpg','皇家马德里','4 LUKA MODRIĆ','這名現任World Cup金球獎冠軍得主一直以來都非常受到賞識，而他最近的成就更是令他進一步成為超級巨星。這名克羅地亞中場指揮身處中場時，可說是無所不能，這全因他的90傳球和91盤球能力屬於足球界最高水準。很少球員能夠像Modric一樣，在轉瞬間憑着一發完美的傳球或長距離猛射扭轉比賽局勢。');
insert into Top20 values(null,'Neymar-lg.jpg','巴黎圣日耳曼','3 NEYMAR JR','這位森巴大師自從轉投巴黎聖日耳門後，進一步闖出更大名堂，每星期都在展現他的獨門巴西式才華。Neymar Jr.擅長擔任何攻擊角色，這都是全靠他在幾乎所有重要範疇中都具有極高評分，但真正令他成為世界頂尖左翼鋒的，還是全靠高達92的速度和95盤球。');
insert into Top20 values(null,'Messi-lg.jpg','巴塞罗那','2 LIONEL MESSI','這名阿根廷進攻球員多年來不斷刷新紀錄、拿下獎盃，無疑是足球史上最出色的球員之一。Messi兼備才華與技巧，因此他的靈活性非常高；96盤球證明了他的技術為何首屈一指，88傳球能力則是賦予了他擔當中場指揮的能力，令其他球員望塵莫及。最後還要加上高達91的射門能力，這也就不難理解，為甚麼Messi幾乎能刷新所有入球紀錄。集合這一切能力，便造就出貨真價實的足球界傳說。');
insert into Top20 values(null,'CristianoRonaldo-lg.jpg','尤文图斯','1 CRISTIANO RONALDO','這名《FIFA 19》封面球星的職涯充滿了獎項和獎盃，他於本季高調轉投祖雲達斯後，顯然打算繼續奪下更多的獎盃。這名葡萄牙前鋒兼世上最強球員，表現完全沒有半點遜色，他的評分證明了他的天賦何其驚人。Ronaldo進攻時掃蕩左右兩旁的防守球員，以90速度和90 盤球能力玩弄和蒙騙對手。但這名足球界技術最完善的前鋒之所以能夠傲視群雄，還是全靠高達93的射門能力，證明了他是一名天生的射手，射入的球每每比失手要多。');

-- 顶部导航栏 -> UT -> 年度最佳球队
create table TOTYFut(
    yid int primary key auto_increment,
    yimg varchar(64) not null,
    style varchar(16) not null,-- 中锋
    yname varchar(32) not null,
    yclub varchar(64) not null, -- 阿根廷/巴塞罗那
    introduce varchar(256) not null
);
-- inserit

-- UT -> 焦点瞩目球员冬季和夏季
create table WOTWFut(
    wid int primary key auto_increment,
    wimg varchar(64) not null,
    wname varchar(64) not null -- cesc fabregas -as monaco
);
-- inserit

create table SOTWFut(
    soid int primary key auto_increment,
    simg varchar(64) not null,
    sname varchar(64) not null -- cesc fabregas -as monaco
);
-- inserit

-- UT -> FUT超级球星 至尊传奇卡和初始传奇卡
create table SLEGENDFut(
    slid int primary key auto_increment,
    simg varchar(64) not null,
    sname varchar(64) not null,
    introduce varchar(256) not null
);
-- inserit

create table LEGENDFut(
    lid int primary key auto_increment,
    limg varchar(64) not null,
    lname varchar(64) not null,
    introduce varchar(256) not null
);
-- inserit

-- UT -> 本周最佳球队
create table TOTWFut(
    tid int primary key auto_increment,
    poster varchar(64) not null, -- 海报
    title varchar(32) not null,
    introduce varchar(32) not null,
    defaukt smallint not null -- 默认值,0->小图,1->唯一大图
);
-- inserit

-- 最新消息 -> FIFA新闻
create table FNews(
    fid int primary key auto_increment,
    fimg varchar(64) not null,
    fdate varchar(64) not null,
    title varchar(32) not null,
    introduce varchar(64) not null
);
-- inserit

-- 社群 -> 球场日记
create table FDiary(
    fid int primary key auto_increment,
    fimg varchar(64) not null,
    fdate varchar(64) not null,
    title varchar(32) not null,
    introduce varchar(64) not null
);
-- inserit

-- 社群 -> 贴士与技巧

-- 社群 -> 世界巡回赛