
  create or replace  view airbnb.dev.src_reviews
  
   as (
    WITH raw_reviews AS (
	SELECT * FROM AIRBNB.RAW.RAW_REVIEWS
)
SELECT
	comments as review_text,
    date as review_date,
    listing_id,
    reviewer_name,
    sentiment as review_sentiment
FROM
    raw_reviews
  );
