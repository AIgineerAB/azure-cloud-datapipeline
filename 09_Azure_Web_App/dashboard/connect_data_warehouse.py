from pathlib import Path
import duckdb

FILES_SHARE_PATH = Path("/mnt/data/job_ads.duckdb")

def query_job_listings(query='SELECT * FROM marts.mart_technical_jobs'):
    with duckdb.connect(FILES_SHARE_PATH, read_only=True) as conn:
        return conn.query(f"{query}").df()


