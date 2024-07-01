
# Docker Environment Setup

This repository contains Docker configurations and scripts to set up a development environment for the Data Processing project.

## Table of Contents
- [Docker Environment Setup](#docker-environment-setup)
  - [Table of Contents](#table-of-contents)
  - [Project Overview](#project-overview)
  - [Getting Started](#getting-started)
    - [Prerequisites](#prerequisites)
    - [Installation](#installation)
  - [Usage](#usage)
  - [Directory Structure](#directory-structure)
  - [Contributing](#contributing)
  - [License](#license)

## Project Overview
The Docker Environment Setup project provides Docker Compose configurations to quickly set up and run all necessary services for the Data Processing project, including PostgreSQL, Apache Airflow, and Minio.

## Getting Started
To get started with the Docker environment, follow these steps.

### Prerequisites
- Docker
- Docker Compose

### Installation
1. Clone the repository:
   ```bash
   git clone https://github.com/fatihgulsen/Docker-env.git
   cd Docker-env
   ```
2. Start the Docker containers:
   ```bash
   docker-compose up -d
   ```

## Usage
- Access the services:
  1. **PostgreSQL**
     - Container Port: `5432`
     - Host Port: `5401:5432`
     - Access: `localhost:5401`

  2. **Redis**
     - Container Port: `6379`
     - Host Port: `6379:6379`
     - Access: `localhost:6379`

  3. **MinIO**
     - Container Port: `9000`
     - Host Port: `19000:9000`
     - Console Port: `9001`
     - Host Port: `19001:9001`
     - Access: `http://localhost:19000` (API), `http://localhost:19001` (Console)

  4. **Airflow**
     - Web Server Port: `8080`
     - Host Port: `8080:8080`
     - Access: `http://localhost:8080`

  5. **Spark Master**
     - Web UI Port: `8080`
     - Host Port: `4040:8080`
     - Access: `http://localhost:4040`

  6. **Zookeeper**
     - Container Port: `2181`
     - Host Port: `2181:2181`
     - Access: `localhost:2181`

  7. **Druid Coordinator**
     - Container Port: `8081`
     - Host Port: `8081:8081`
     - Access: `http://localhost:8081`

  8. **Druid Broker**
     - Container Port: `8082`
     - Host Port: `8082:8082`
     - Access: `http://localhost:8082`

  9. **Druid Historical**
     - Container Port: `8083`
     - Host Port: `8083:8083`
     - Access: `http://localhost:8083`

  10. **Druid Middle Manager**
      - Container Ports: `8091`
      - Host Port: `8091:8091`
      - Additional Ports: `8100-8105`
      - Host Ports: `8100-8105:8100-8105`
      - Access: `http://localhost:8091`, `http://localhost:8100-8105`

  11. **Druid Router**
      - Container Port: `8888`
      - Host Port: `8888:8888`
      - Access: `http://localhost:8888`

  12. **Hadoop NameNode**
      - Container Port: `9870`
      - Host Port: `9870:9870`
      - HDFS Port: `9000`
      - Host Port: `9000:9000`
      - Access: `http://localhost:9870`, `hdfs://localhost:9000`

  13. **Hadoop DataNode**
      - Container Port: `9864`
      - Host Port: `9864:9864`
      - Access: `http://localhost:9864`

  14. **YARN ResourceManager**
      - Container Port: `8088`
      - Host Port: `8088:8088`
      - Access: `http://localhost:8088`

  15. **Hadoop HistoryServer**
      - Container Port: `8188`
      - Host Port: `8188:8188`
      - Access: `http://localhost:8188`

## Directory Structure
```
Docker-env/
│
├── airflow/                # Airflow configurations and DAGs
├── postgres/               # PostgreSQL configurations and initialization scripts
├── minio/                  # Minio configurations
│
├── docker-compose.yml      # Docker Compose file
└── .env                    # Environment variables
```

## Contributing
Contributions are welcome! Please read the [CONTRIBUTING](CONTRIBUTING.md) file for guidelines on how to contribute to this project.

## License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
