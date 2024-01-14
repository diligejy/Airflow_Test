# Dockerfile
FROM apache/airflow:latest
MAINTAINER jinyoung.song <sjy049@gmail.com>

COPY . /opt/airflow

# no cache dir : <https://stackoverflow.com/questions/45594707/what-is-pips-no-cache-dir-good-for>
RUN pip install --no-cache-dir --upgrade pip \\
  && pip install --no-cache-dir -r test_requirements.txt

WORKDIR /opt/airflow