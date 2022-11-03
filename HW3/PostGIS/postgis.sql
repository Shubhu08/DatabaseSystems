CREATE EXTENSION postgis;

CREATE TABLE usc_spatial_data (name varchar, coordinates geometry, type varchar);

INSERT INTO usc_spatial_data (name, coordinates, type) VALUES
('Helen Topping', 'POINT(-118.28819 34.01929)', 'Library'),
('Gerontology', 'POINT(-118.29017 34.02011)', 'Library'),
('Science Engg', 'POINT(-118.28893 34.01991)', 'Library'),
('Leavey', 'POINT(-118.28309 34.02167)', 'Library'),
('Intl and PA', 'POINT(-118.28364 34.02129)', 'Library'),
('Doheny', 'POINT(-118.28410 34.02032)', 'Library'),
('Pardee Lawn', 'POINT(-118.28300 34.01967)', 'Waterbody'),
('Franklin Family', 'POINT(-118.28374 34.01919)', 'Waterbody'),
('USC Fountain', 'POINT(-118.28502 34.02021)', 'Waterbody'),
('ATO Frat', 'POINT(-118.28462 34.02065)', 'Waterbody'),
('Generations', 'POINT(-118.28317 34.02223)', 'Waterbody'),
('Uytengsu', 'POINT(-118.28803 34.02400)', 'Waterbody'),
('Home', 'POINT(-118.29416 34.02232)', 'Home');

SELECT ST_AsText(ST_ConvexHull(ST_Collect(coordinates))) AS convex_hull from usc_spatial_data;


SELECT name FROM usc_spatial_data ORDER BY coordinates <-> (SELECT ST_AsEWKT(coordinates, 1)::geometry
FROM usc_spatial_data
WHERE name = 'Home') LIMIT 1;
