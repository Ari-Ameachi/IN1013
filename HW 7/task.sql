-- 1

CREATE VIEW samsBills AS
SELECT 
    s.first_name, 
    s.surname, 
    b.bill_date, 
    b.cust_name, 
    b.bill_total
FROM restBill b
JOIN restStaff s ON b.waiter_no = s.staff_no
WHERE s.first_name = 'Sam' AND s.surname = 'Pitt';

-- 2

SELECT first_name, surname, bill_date, cust_name, bill_total
FROM samsBills
WHERE bill_total > 400;

-- 3

CREATE VIEW roomTotals AS
SELECT 
    rt.room_name, 
    SUM(b.bill_total) AS total_sum
FROM restBill b
JOIN restRest_table rt ON b.table_no = rt.table_no
GROUP BY rt.room_name;

-- 4

CREATE VIEW teamTotals AS
SELECT 
    CONCAT(hs.first_name, ' ', hs.surname) AS headwaiter_name, 
    SUM(b.bill_total) AS total_sum
FROM restBill b
JOIN restStaff ws ON b.waiter_no = ws.staff_no
JOIN restStaff hs ON ws.headwaiter = hs.staff_no
GROUP BY hs.first_name, hs.surname;