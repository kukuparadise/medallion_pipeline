import requests
import pandas as pd
from pathlib import Path

def fetch_weather():
    # 30 days of historical weather for Berlin
    url = "https://archive-api.open-meteo.com/v1/archive?latitude=52.52&longitude=13.41&start_date=2024-01-01&end_date=2024-01-31&daily=temperature_2m_max&timezone=GMT"
    response = requests.get(url)
    data = response.json()
    
    # handle the nested JSON
    df = pd.DataFrame(data['daily'])
    
    # sink to bronze
    output_path = Path("data/raw/weather_raw.parquet")
    output_path.parent.mkdir(parents=True, exist_ok=True)
    df.to_parquet(output_path)
    print(f"Data landed at {output_path}")

if __name__ == "__main__":
    fetch_weather()