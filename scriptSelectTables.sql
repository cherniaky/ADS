CREATE VIEW Course_Duration AS
SELECT
    course_id,
    SUM(duration) as total_duration
FROM
    Lessons
GROUP BY
    course_id;

CREATE VIEW Course_Rating AS
SELECT
    course_id,
    AVG(rating) as average_rating,
    COUNT(review_id) as review_count
FROM
    Reviews
GROUP BY
    course_id;