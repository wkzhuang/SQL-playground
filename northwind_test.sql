-- Load the files into sql

-- Name, city state and shipping fee
-- 

SELECT ship_name, ship_city, ship_state_province, shipping_fee
FROM Orders
ORDER BY shipping_fee DESC;


-- PART 2
SELECT ship_state_province, sum(shipping_fee)
FROM orders
GROUP by ship_state_province
ORDER by sum(shipping_fee) DESC;

--- Part 3

