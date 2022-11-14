SELECT ROUND(AVG(total_payment)) AS RataRata_Transaksi
FROM bill
WHERE MONTH(bill_date);
