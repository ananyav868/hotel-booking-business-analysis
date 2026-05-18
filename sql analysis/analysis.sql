-- 1.2 Patterns across channels,room types and star ratings
-- Booking Distribution by Channel
SELECT
    booking_channel,
    COUNT(*) AS total_bookings,
    ROUND(AVG(booking_value),2) AS avg_booking_value
FROM hotel_bookings_final
GROUP BY booking_channel
ORDER BY total_bookings DESC;
-- Booking Distribution by Room Type
SELECT
    room_type,
    COUNT(*) AS total_bookings,
    ROUND(AVG(booking_value),2) AS avg_booking_value
FROM hotel_bookings_final
GROUP BY room_type
ORDER BY avg_booking_value DESC;
-- Booking Distribution by Star Rating
SELECT
    star_rating,
    COUNT(*) AS total_bookings,
    ROUND(AVG(booking_value),2) AS avg_booking_value
FROM hotel_bookings_final
GROUP BY star_rating
ORDER BY star_rating DESC;

-- 1.3 Analyzing cancellation behavior
-- 1. Cancellation Rate by Booking Channel
SELECT
    booking_channel,
    COUNT(*) AS total_bookings,
    SUM(CASE
            WHEN booking_status = 'Cancelled' THEN 1
            ELSE 0
        END) AS cancelled_bookings,
    ROUND(
        SUM(CASE
                WHEN booking_status = 'Cancelled' THEN 1
                ELSE 0
            END) * 100.0 / COUNT(*),
        2
    ) AS cancellation_rate
FROM hotel_bookings_final
GROUP BY booking_channel
ORDER BY cancellation_rate DESC;
-- 2. Cancellation Rate by Lead Time

SET SQL_SAFE_UPDATES = 0;
ALTER TABLE hotel_bookings_final
ADD COLUMN lead_time INT;
UPDATE hotel_bookings_final
SET lead_time = DATEDIFF(check_in_date, booking_date)
WHERE booking_date IS NOT NULL
AND check_in_date IS NOT NULL
AND booking_date != ''
AND check_in_date != '';
SELECT
    CASE
        WHEN lead_time <= 7 THEN '0-7 Days'
        WHEN lead_time <= 30 THEN '8-30 Days'
        WHEN lead_time <= 90 THEN '31-90 Days'
        ELSE '90+ Days'
    END AS lead_time_group,

    COUNT(*) AS total_bookings,

    SUM(CASE
            WHEN booking_status = 'Cancelled' THEN 1
            ELSE 0
        END) AS cancelled_bookings,

    ROUND(
        SUM(CASE
                WHEN booking_status = 'Cancelled' THEN 1
                ELSE 0
            END) * 100.0 / COUNT(*),
        2
    ) AS cancellation_rate

FROM hotel_bookings_final
GROUP BY lead_time_group
ORDER BY cancellation_rate DESC;
-- 3. Cancellation Rate by Star Rating
SELECT
    star_rating,
    COUNT(*) AS total_bookings,

    SUM(CASE
            WHEN booking_status = 'Cancelled' THEN 1
            ELSE 0
        END) AS cancelled_bookings,

    ROUND(
        SUM(CASE
                WHEN booking_status = 'Cancelled' THEN 1
                ELSE 0
            END) * 100.0 / COUNT(*),
        2
    ) AS cancellation_rate

FROM hotel_bookings_final
GROUP BY star_rating
ORDER BY star_rating;


