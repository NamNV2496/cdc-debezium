# CDC: Comprehensive Guide- PostgreSQL To S3(MinIO) Using NiFi

## Introduction

This project delves into leveraging CDC for PostgreSQL databases using Debezium, orchestrating data processing through NiFi, and subsequently storing the processed data in MinIO, a high-performance S3-compatible storage solution.

### Project Overview
For this project, we used Debezium to capture real-time data from a PostgreSQL database that mimicked the basic needs of e-commerce marketing.
Debezium automatically wrote changes to Kafka topics, enabling data integration while maintaining data accuracy and performance.
MinIO stored processed data as an S3-compatible object storage solution. This architecture makes data accessible in real-time for analysis and stores advanced storage and analysis capabilities by adding tools like Iceberg or Delta Lake. This architecture enabled systems to respond quickly and take advantage of downloading data.

 ![alt text](https://cdn-images-1.medium.com/max/1800/1*NSDcDGtvwGhsNldubrn3iw.png)

## Prerequisites
- Docker-Docker Compose
- Debezium
- Kafka
- KafkaUI
- NiFi(1.27)
- MINIO

## Setup

```sh
git clone https://github.com/burakugurr/cdc-postgresql_to_minio.git
cd cdc-postgresql_to_minio/Docker
docker compose up
```

## Apache Nifi Template

- Download CDC_latest.cml file. 
- Import template from nifi ui.




![alt text](<Screenshot 2025-01-19 at 22.43.56.png>)

![alt text](<Screenshot 2025-01-19 at 22.44.37.png>)

![alt text](<Screenshot 2025-01-19 at 22.46.28.png>)

![alt text](<Screenshot 2025-01-19 at 22.47.30.png>)

![alt text](image.png)

![alt text](image-1.png)

![alt text](image-2.png)

message in kafka topic

![alt text](image-3.png)






