# Spring Boot demo of Resilience4j


This demo shows how to use the fault tolerance library [Resilience4j](https://github.com/resilience4j/resilience4j) in a Spring Boot 2 application.

See [User Guide](https://resilience4j.readme.io/docs/getting-started-3) for more details.

The [BackendAService](https://github.com/resilience4j/resilience4j-spring-boot2-demo/blob/master/src/main/java/io/github/robwin/service/BackendAService.java) shows how to use the Resilience4j Annotations.


The [BackendBController](https://github.com/resilience4j/resilience4j-spring-boot2-demo/blob/master/src/main/java/io/github/robwin/controller/BackendBController.java) shows how to use the functional style and the Spring Reactor operators.


## Getting Started

Just run the Application.java in your IDE.  
Application is running on http://localhost:9080.

## Monitoring with Prometheus and Grafana

### Requirements
[Docker](https://docs.docker.com/install/) and [Docker Compose](https://docs.docker.com/compose/install/) installed.
 
### Step 1
Use docker-compose to start Grafana and Prometheus servers.
- In the root folder
```sh
docker-compose -f docker-compose.yml up
```
### Step 2
Check the Prometheus server.
- Open http://localhost:9090
- Access status -> Targets, both endpoints must be "UP"

### Step 3
Configure the Grafana.
- Open http://localhost:3000
- Login as admin/admin
- **Datasource and Dashboard**
    - Uses Grafana provisioning on docker/grafana/provisioning/datasources and docker/grafana/provisioning/dashboards  
- **Customizing dashboard**
    - modify grafana-dashboard.json at docker/grafana/dashboards

## License

Copyright 2019 Robert Winkler

Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the License. You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.