SELECT * FROM transactions;
select distinct currency from transactions;

select count(*) from transactions;
select sum(sales_amount) from transactions where market_code='Mark001';

select distinct product_code from transactions where market_code='Mark001';

select * from transactions where currency='USD';

select transactions.*,date.year from transactions inner join date
on transactions.order_date=date.date;

select sum(transactions.sales_amount),date.year from transactions inner join date
on transactions.order_date=date.date where date.year=2019;

select sum(transactions.sales_amount)from transactions inner join date
on transactions.order_date=date.date where date.year=2019 and date.month_name='march';

select sum(transactions.profit_margin)from transactions inner join date
on transactions.order_date=date.date where date.year=2019 and transactions.market_code='Mark004';

select sum(transactions.sales_amount)from transactions inner join date
on transactions.order_date=date.date where date.year=2019 and transactions.market_code='Mark004';

