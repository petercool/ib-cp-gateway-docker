# Interactive Brokers Gateway Docker Container

This repository contains a Dockerized version of the Interactive Brokers Client Portal Web API Gateway. It provides a containerized solution for running the IB Gateway, making it easier to deploy and manage in various environments.

## Features

- Dockerized IB Gateway
- Multi-architecture support (amd64/arm64)
- Automated builds via GitHub Actions
- Volume mounting for configuration
- Easy deployment with Docker Compose

## Prerequisites

- Docker
- Docker Compose
- Interactive Brokers account

## Quick Start

1. Clone this repository:
```bash
git clone https://github.com/petercool/ib-cp-gateway-docker.git
cd ib-cp-gateway-docker
```

2. Start the container:
```bash
docker compose up -d
```

The gateway will be available at `http://localhost:8000`

## Configuration

The gateway configuration is managed through `root/conf.yaml`. Mount this file as a volume to customize the settings:

```yaml
# Example configuration in docker-compose.yml
volumes:
  - ./ib_cp_gateway/root:/app/root
```

## Building Locally

To build the Docker image locally:

```bash
docker compose build
```

## Environment Variables

No environment variables are required for basic operation. All configuration is handled through the `conf.yaml` file.

## Security Considerations

- The gateway runs on port 8000 by default
- Consider implementing additional security measures when deploying to production
- Follow IB's security best practices for API usage

## Development

### OpenAPI Documentation

To format the OpenAPI documentation in a more readable way, you can use the following command:

```bash
yq eval -P ./docs/openapi.yml > ./docs/openapi.pretty.yml
```

This command creates a prettified version of the OpenAPI specification.

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Acknowledgments

- Interactive Brokers for providing the Client Portal Web API
- Docker for containerization support
- GitHub Actions for CI/CD capabilities
