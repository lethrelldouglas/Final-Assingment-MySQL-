USE douglasestate;

-- List all host
SELECT host_id, host_name, email
FROM hosts;

--Multi-table Join (bookings,tenants,units)
SELECT
    bookings.booking_id,
    tenants.name AS tenant_name,
    units.name AS unit_name,
    bookings.start_date,
    bookings.end_date
FROM bookings
JOIN tenants
    ON bookings.tenant_id = tenants.tenant_id
JOIN units
    ON bookings.unit_id = units.unit_id;

-- Total bookings / host
SELECT
    hosts.host_name,
    COUNT(bookings.booking_id) AS total_bookings
FROM hosts
JOIN properties
    ON hosts.host_id = properties.host_id
JOIN units
    ON properties.property_id = units.property_id
JOIN bookings
    ON units.unit_id = bookings.unit_id
GROUP BY hosts.host_id;

-- Total revenue / host 
SELECT
    hosts.host_name,
    SUM(payments.booking_total) AS total_revenue
FROM hosts
JOIN properties
    ON hosts.host_id = properties.host_id
JOIN units
    ON properties.property_id = units.property_id
JOIN bookings
    ON units.unit_id = bookings.unit_id
JOIN payments
    ON bookings.booking_id = payments.booking_id
GROUP BY hosts.host_id;

-- Tenants who have made bookings
SELECT name
FROM tenants
WHERE tenant_id IN (
    SELECT tenant_id
    FROM bookings
);

-- Finds all units that are currently active for bookings
SELECT unit_id, name, bedrooms, bathrooms
FROM units
WHERE active = 1;