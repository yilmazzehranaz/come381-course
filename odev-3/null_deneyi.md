# NULL Deneyi

## Deney 1

SELECT COUNT(*), COUNT(phone) FROM customer;

Tahminim: İki sayma işleminin farklı sonuç vereceğini düşünüyorum.

Beklenen sonuç: 8 ve 5.

Yorum: COUNT(*) bütün müşterileri sayarken COUNT(phone) sadece telefon bilgisi bulunan müşterileri sayar.

## Deney 2

SELECT AVG(age), SUM(age) / COUNT(*) FROM customer;

Tahminim: Yaşı belirtilmeyen müşteriler nedeniyle sonuçların farklı çıkacağını düşünüyorum.

Beklenen sonuç: 20.8333 ve 15.

Yorum: AVG(age) boş yaş bilgilerini hesaba katmaz. COUNT(*) ise bütün müşterileri saydığı için sonuçlar farklı çıkar.
