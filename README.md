# Webdock

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

A Docker-powered web server environment using Nginx, designed for easy deployment and development of web applications.

## Features

- Nginx web server configuration
- Docker containerization
- Volume mounting for live development
- Automatic container restart
- Port 9999 exposed for web access

## Prerequisites

- Docker
- Docker Compose

## Quick Start

1. Clone the repository:
```bash
git clone https://github.com/yourusername/webdock.git
cd webdock
```

2. Start the container:
```bash
docker-compose up -d
```

3. Your web content will be served from the `www` directory at `http://localhost:9999`

## Project Structure

```
webdock/
├── www/               # Web content directory
├── Dockerfile        # Docker image configuration
├── docker-compose.yml # Docker Compose configuration
├── nginx.conf        # Nginx server configuration
└── README.md         # This file
```

## Configuration

### Docker Compose
The service is configured to:
- Build from the local Dockerfile
- Map port 9999 to container port 80
- Mount the ./www directory to /usr/share/nginx/html
- Automatically restart unless stopped manually

### Development

Place your web files in the `www` directory. Changes will be reflected immediately due to volume mounting.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## Support

For support, please open an issue in the GitHub issue tracker.


