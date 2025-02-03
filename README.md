# docker-pi

## Docker Development Environment

### Quick Start

1. Build the container:
   ```sh
   docker-compose build
   ```

2. Run the container:
   ```sh
   docker-compose up
   ```

3. Execute commands in container:
   ```sh
   docker-compose exec app bash
   ```

### Configuration

- Edit `Dockerfile` to customize the build
- Modify `docker-compose.yml` for service configuration
- Update `.dockerignore` to exclude files from builds
