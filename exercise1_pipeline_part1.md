# Exercise 1 - Pipeline - Part 1

> [!NOTE]
> These exercises covers lectures 05-06, and prerequisite knowledge of dagster and docker in previous courses.

## 1. Replacing an automation component in dagster pipeline
In lecture 05_Pipeline_DuckDB, we use dagster sensor for starting the dbt job. Now,
- replace the sensor with a schedule and run the dagster server
- explain what is the difference between using a sensor and a schedule for starting the dbt job. 
- which one is a better choice for this job? 
- can we replace the schedule for the dlt job with a sensor?

Read more about automation components in dagster pipeline: <br>
🔍 [Dagster automation](https://docs.dagster.io/guides/automate) <br>

## 2. Containerization
This is a theory question for you to deepen your understanding of containerization. Explain intuitively:
- the difference between:
  - running python scripts locally with virtual environment activated
  - running containerized python scripts locally 
- the difference between virtual environment and uv virtual environment
- the difference between containerization and Docker

## 3. Glossary
Fill in this table either by copying this into your own markdown file or copy it into a spreadsheet if you feel that is easier to work with.

| terminology             | explanation |
| ----------------------- | ----------- |
| orchestrator            |             |
| scheduler               |             |
| software defined assets |             |
| declarative programming |             |
| docker file             |             |
| docker compose file     |             |
| to spin up              |             |
| container               |             |
| image                   |             |
| host system             |             |


