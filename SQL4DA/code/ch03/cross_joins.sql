-- Active: 1691026870033@@127.0.0.1@5432@sql4da
-- every possible combination

SELECT P1.product_id,
       p1.model,
       P2.product_id,
       p2.model
FROM products AS P1
CROSS JOIN products AS P2;