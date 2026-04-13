CREATE DATABASE IF NOT EXISTS douglasestate;
USE douglasestate;

CREATE TABLE hosts (
    host_id INT PRIMARY KEY,
    host_name VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(20)
);

CREATE TABLE properties (
    property_id INT PRIMARY KEY,
    host_id INT,
    name VARCHAR(100),
    address VARCHAR(200),
    city VARCHAR(100),
    country VARCHAR(100),
    FOREIGN KEY (host_id) REFERENCES hosts(host_id)
);

CREATE TABLE units (
    unit_id INT PRIMARY KEY,
    property_id INT,
    name VARCHAR(100),
    Description VARCHAR(255),
    bedrooms INT,
    bathrooms INT,
    active BOOLEAN,
    FOREIGN KEY (property_id) REFERENCES properties(property_id)
);

CREATE TABLE tenants (
    tenant_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(20),
    verified BOOLEAN
);

CREATE TABLE bookings (
    booking_id INT PRIMARY KEY,
    unit_id INT,
    tenant_id INT,
    start_date DATE,
    end_date DATE,
    FOREIGN KEY (unit_id) REFERENCES units(unit_id),
    FOREIGN KEY (tenant_id) REFERENCES tenants(tenant_id)
);

CREATE TABLE payments (
    payment_id INT PRIMARY KEY,
    booking_id INT,
    booking_total DECIMAL(10,2),
    payment_method VARCHAR(50),
    payment_date DATETIME,
    FOREIGN KEY (booking_id) REFERENCES bookings(booking_id)
);