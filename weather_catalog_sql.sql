CREATE SCHEMA IF NOT EXISTS weather_data.weather_schema; -- weather_data is the catalog name, weather_schema is the schema name

CREATE OR REPLACE VIEW weather_data.weather_schema.weather_csv_v AS
SELECT *
FROM read_files(
  '/Volumes/weather_data/weather_schema/dataset/',             -- weather_data is the catalog name, weather_schema is the schema name, dataset is the volume name. so either replace those with what youve named it on your end or use the same names.
  format => 'csv',
  header => true
);
