insert into SHOP.SHOPPING.TRANSACTIONS_STAGING
(customer_id,
product_id,
price,
date_of_purchase)
select
    transaction:customer_id,
    b.value:product_id,
    b.value:price,
    transaction:date_of_purchase
  from
    SHOP.SHOPPING.TRANSACTIONS_SOURCE
  , table(flatten(input => transaction:basket)) b
;