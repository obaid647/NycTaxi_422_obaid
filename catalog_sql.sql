CREATE SCHEMA IF NOT EXISTS nyc_taxi.idk; -- nyc_taxi is the catalog name, idk is the schema name

CREATE OR REPLACE VIEW nyc_taxi.idk.yellow_trips_csv_v AS
SELECT *
FROM read_files(
  '/Volumes/nyc_taxi/idk/dataset/',             -- nyc_taxi is the catalog name, idk is the schema name, dataset is the volume name. so either replace those with what youve named it on your end or use the same names.
  format => 'csv',
  header => true
);
