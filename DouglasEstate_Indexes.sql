USE douglasestate;

--Index's that improves performance
CREATE INDEX idx_properties_host_id ON properties(host_id);
CREATE INDEX idx_units_property_id ON units(property_id);
CREATE INDEX idx_bookings_unit_id ON bookings(unit_id);
CREATE INDEX idx_bookings_tenant_id ON bookings(tenant_id);
CREATE INDEX idx_payments_booking_id ON payments(booking_id);
CREATE INDEX idx_payments_booking_total ON payments(booking_total);
