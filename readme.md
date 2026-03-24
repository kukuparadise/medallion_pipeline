This is a small project that uses Python to read weather data from the Open-Meteo API and dumps it into DuckDB. It uses dbt to organize that data into medallion layers. I’ve included a Makefile so you can run the whole thing: ingestion, transformations, and data tests with a single command. It’s a simple, local-first example of how to build a reliable data pipeline without needing a cloud subscription.

Current pipeline is idempotent.

Working on additive logic in separate branch.
