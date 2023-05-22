/*
 @Description: 
 @Author(s): Stephen CUI
 @LastEditor(s): Stephen CUI
 @CreatedTime: 2023-05-22 17:35:57
 */

SELECT
    C.first_name,
    C.last_name
FROM customer AS C
WHERE C.last_name LIKE 'L%'
UNION
SELECT
    A.first_name,
    A.last_name
FROM actor AS A
WHERE A.last_name LIKE 'L%'
ORDER BY LAST_NAME;