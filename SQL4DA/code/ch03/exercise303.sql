-- Active: 1691026870033@@127.0.0.1@5432@sql4da

SELECT c.customer_id,
       CASE
           WHEN c.state in ('MA',
                            'NH',
                            'VT',
                            'ME',
                            'CT',
                            'RI') THEN 'New England'
           WHEN c.state in ('GA',
                            'FL',
                            'MS',
                            'AL',
                            'LA',
                            'KY',
                            'VA',
                            'NC',
                            'SC',
                            'TN',
                            'VI',
                            'WV',
                            'AR') THEN 'Southeast'
           ELSE 'Other'
       END AS region
FROM customers AS c
ORDER BY 1;