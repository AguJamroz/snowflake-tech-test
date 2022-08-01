create or replace view shop.shopping.customer_shopping_patterns_view
as
(
select
    t.customer_id, 
    c.loyalty_score, 
    t.product_id, 
    p.product_category, 
    count(t.product_id) over (partition by t.customer_id) as purchase_count
from SHOP.SHOPPING.TRANSACTIONS_FACT t
    left join SHOP.SHOPPING.CUSTOMERS_DIM c
        on c.customer_id = t.customer_id
    left join SHOP.SHOPPING.PRODUCTS_DIM p
        on p.product_id = t.product_id
);