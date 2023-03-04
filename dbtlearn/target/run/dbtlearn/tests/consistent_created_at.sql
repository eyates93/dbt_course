select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      SELECT * FROM airbnb.dev.dim_listings_cleansed listings_cleansed
INNER JOIN airbnb.dev.fct_reviews reviews
USING (listing_id)
WHERE listings_cleansed.created_at >= reviews.review_date
      
    ) dbt_internal_test