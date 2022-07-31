create or replace view shop.shopping.customer_shopping_patterns_view
as
(
select
    c.customer_id, 
    c.loyalty_score, 
    p.product_id, 
    p.product_category, 
    count(t.product_id) over (partition by t.customer_id) as purchase_count
from SHOP.SHOPPING.TRANSACTIONS_STAGING t
    left join SHOP.SHOPPING.CUSTOMERS c
        on c.customer_id = t.customer_id
    left join SHOP.SHOPPING.PRODUCTS p
        on p.product_id = t.product_id
);