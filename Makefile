setup:
	pip install dbt-duckdb pandas requests

extract:
	python scripts/extract_api.py

run:
	cd dbt_project && dbt build --profiles-dir ..

all: setup extract run

docs:
	cd dbt_project && dbt docs generate --profiles-dir .. && dbt docs serve --profiles-dir ..