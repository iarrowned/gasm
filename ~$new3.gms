Sets
    locations ������ /
        klep,
        kasim,
        shil
    /
    products ����� �� ��������� /
        milk,
        kefir,
        smetana
    /
    proizvodstvo ������������ ������ /
        milk
    /
    overprice ���� ����� �������� /
        overprice
    /

;
Parameters
PriceParamProds(products) ��������� ��������� 1� �������� �� 1�� /
        milk 45
        kefir 45
        smetana 50
    /
PriceParamMilk(proizvodstvo) ��������� ��������� 1� ��������� ����� �� 1�� /
        milk 60
    /
ProizvodstvoParam(locations) ������������ ��������� ����� � ������� /
        klep 5.5
        kasim 11.2
        shil 11.3
    /
;


Table SprosTable(products, locations) ������� ������ �� ��������� � �������
            klep    kasim   shil
milk       4.5     10.0    7.8
kefir      1.0     2.3     1.9
smetana    0.4     0.6     0.5;


* �� �������� ������ ����������
Table ProizvodstvoTable(proizvodstvo, locations) ������������ ��������� ����� � �������
            klep    kasim   shil
milk        5.5     11.3    11.3;

Table DistanceTable(locations, locations) ���������� ����� ��������
            klep    kasim   shil
klep        0       80
kasim       80      0       70
shil                70      0;



Table OverPriceTable(overprice, locations) ���� �� ����� ����� ��������
            klep    kasim   shil
overprice   15      12      12