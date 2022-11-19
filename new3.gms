Sets
    locations районы /
        klep,
        kasim,
        shil
    /
    products спрос на продукцию /
        milk,
        kefir,
        smetana
    /
    proizvodstvo производство молока /
        milk
    /
;
Parameters
PriceParamProds(products) Стоимость перевозки 1т подукции на 1км /
        milk 45
        kefir 45
        smetana 50
    /
PriceParamMilk(proizvodstvo) Стоимость перевозки 1т молочного сырья на 1км /
        milk 60
    /
ProizvodstvoParam(locations) Производство молочного сырья в районах /
        klep 5.5
        kasim 11.2
        shil 11.3
    /
OverPriceParam(locations) /
        klep 15
        kasim 12
        shil 12
    /
LimitParam(proizvodstvo) /
        milk 1400
    /
;


Table SprosTable(products, locations) Таблица спроса на продукцию в районах
            klep    kasim   shil
milk       4.5     10.0    7.8
kefir      1.0     2.3     1.9
smetana    0.4     0.6     0.5;


* Мб оставить только параметром
Table ProizvodstvoTable(proizvodstvo, locations) Производство молочного сырья в районах
            klep    kasim   shil
milk        5.5     11.3    11.3;

Table DistanceTable(locations, locations) Расстояния между районами
            klep    kasim   shil
klep        0       80
kasim       80      0       70
shil                70      0;

Table LimitsTable(proizvodstvo, products)
            milk    kefir   smetana
milk        1.01    1.01    9.45;


positive variables x(products);
equations
restrictionsMilk(proizvodstvo) restricitons;
                                                            
restrictionsMilk(proizvodstvo).. sum(products, LimitsTable(proizvodstvo, products) * x(products)) =l= LimitParam(proizvodstvo);
