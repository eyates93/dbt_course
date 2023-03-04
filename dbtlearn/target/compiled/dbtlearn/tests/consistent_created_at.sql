SELECT * FROM airbnb.dev.dim_listings_cleansed listings_cleansed
INNER JOIN airbnb.dev.fct_reviews reviews
USING (listing_id)
WHERE listings_cleansed.created_at >= reviews.review_date