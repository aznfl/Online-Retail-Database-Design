INSERT INTO buying
(buying_id, product_id, quantity, total)
VALUES
('buy11', 'pro06', 1, 500000),
('buy12', 'pro10', 1, 60000),
('buy13', 'pro05', 1, 300000);;

INSERT INTO bill
(bill_id, bill_date, total_payment)
VALUES 
('bil11', '2022-11-11', '860000');

INSERT INTO detail_bill
(id, bill_id, customer_id, buying_id)
VALUES
(11, 'bil11', 'cus08', 'buy11'),
(12, 'bil11', 'cus08', 'buy12'),
(13, 'bil11', 'cus08', 'buy13');

SELECT detail_bill.bill_id, bill.bill_date, detail_bill.customer_id, SUM(buying.quantity) AS total_barang, SUM(buying.total) AS total_payment 
FROM detail_bill, buying, bill
WHERE detail_bill.buying_id = buying.buying_id AND detail_bill.bill_id = bill.bill_id
GROUP BY bill_id;
