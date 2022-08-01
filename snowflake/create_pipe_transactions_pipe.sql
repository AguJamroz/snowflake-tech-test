create pipe shop.shopping.transactions_pipe 
auto_ingest=true as
    COPY INTO SHOP.SHOPPING.TRANSACTIONS_SOURCE
    FROM @SHOP.SHOPPING.S3_CUSTOMER_SHOPPING_PATTERNS_STAGE/transactions
    PATTERN = '.*/transactions.json'
    FILE_FORMAT = (FORMAT_NAME = 'SHOP.SHOPPING.JSON_FORMAT')
;