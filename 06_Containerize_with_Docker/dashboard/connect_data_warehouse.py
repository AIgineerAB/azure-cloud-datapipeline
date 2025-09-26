from pathlib import Path
import duckdb
import os 

DB_PATH = os.getenv("DUCKDB_PATH")
 
def query_job_listings(query='SELECT * FROM marts.mart_technical_jobs'):
    with duckdb.connect(DB_PATH, read_only=True) as conn:
        return conn.query(f"{query}").df()


