#!/bin/bash

# Initialize Poetry project and set up directories
poetry new --src my-app

# Navigate to the project directory
cd my-app

# Install required packages using Poetry
poetry add apache-airflow==2.3.0 \
        apache-airflow-providers-amazon==5.0.0 \
        apache-airflow[sftp,postgres,slack,statsd]==2.3.0 \
        apache-airflow-providers-postgres==5.3.0 \
        apache-airflow-providers-apache-spark==4.0.0 \
        apache-airflow-providers-cncf-kubernetes==6.1.0 \
        apache-airflow-providers-ssh==3.1.0 \
        apache-airflow-providers-slack==4.2.1 \
        apache-airflow-providers-sftp==2.5.0 \
        boto3==1.23.9 \
        mock==4.0.3 \
        moto==3.0.7 \
        pandas~=1.3.5 \
        paramiko==2.9.2 \
        pendulum==2.1.2 \
        psutil==5.6.6 \
        pyarrow==12.0.1 \
        pytest==7.0.1 \
        PyYAML==6.0.1 \
        requests~=2.28.2 \
        s3fs==0.4.1 \
        sqlalchemy==1.4 \
        testing.postgresql==1.3.0 \
        tzlocal==4.1 \
        urllib3==1.26.5 \


# Install all dependencies defined in pyproject.toml (including the added ones)
poetry install

# Install psycopg2 through pip as required version not supported in poetry
pip install psycopg2-binary==2.9.3