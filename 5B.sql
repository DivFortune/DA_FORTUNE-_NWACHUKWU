SELECT SUM(i.total) - SUM(i.salestax) AS profitability
FROM INVOICE i;
