Sets
locations_all районы /klep, kasim, shil, ryazan/
locations(locations_all) /klep, kasim, shil/
ryazan(locations_all) /ryazan/
products спрос на продукцию /milk, kefir, smetana/
price цена /price/
production /rawMilk/
line /dailyHour1, dailyHour2/
;

Parameters

CP(products) цена перевозки продукции руб на км /milk 45, kefir 45, smetana 50/
ProductionPrice(locations) производство молочного сырья ц /klep 5500, kasim 11200, shil 11300/
CPI(production) цена перевозки сырья руб на км /rawMilk 60/

DealPrice(locations) цена по договору руб за ц /klep 1100, kasim 1100, shil 1100/
OverPrice(locations) цена сверх договора руб за ц /klep 1500, kasim 1200, shil 1200/

ProductsPrice(products) цены реализации продуктов руб за ц /milk 2400, kefir 2700, smetana 13800/
LineLimits(line) ограничения времени работы линий ч /dailyHour1 21, dailyHour2 17/
SupplyValues(products) затраты молока на продукцию ц на ц /milk 1.1, kefir 1.1, smetana 9.45/

;

* баланс сырья в каждом районе
* баланс молочной продукции в каждом районе
* баланс продукции каждого вида в каждом районе
* использование рабочего времени



Table ProductionsTable(line, products) Производительность линий ц
            milk    kefir   smetana
dailyHour1  500     600     0
dailyHour2  0       0       30;

Table LineLimitss(line, locations) Ограничение на работу линий в сутки часов
            klep    kasim   shil
dailyHour1  21      21      21
dailyHour2  17      17      34;

Table SprosTable(products, locations) Таблица спроса на продукцию в районах ц
            klep    kasim   shil
milk        4500    10000   7800
kefir       1000    2300    1900
smetana     400     600     500;

Table DistanceTable(locations_all, locations) Расстояния между районами км
            klep    kasim   shil
klep        0       80      Inf
kasim       80      0       70
shil        Inf     70      0
ryazan      100     Inf     Inf;



variables f;

*equations

*revenue()

*model Fmax /all/;

*options lp = Cplex;

*solve Fmax using lp maximising f;




