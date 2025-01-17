# Ollama Wake-on-LAN Proxy

`ollama-wol-proxy` is a Caddy-based reverse proxy with Wake-on-LAN (WoL) support for an Ollama inference server. It
automatically wakes up the server when a request is made, ensuring seamless access while saving power by allowing the
server to sleep when idle.

## Features

- **Wake-on-LAN Integration**: Automatically sends a WoL magic packet to wake the server if it's offline.
- **Reverse Proxy**: Forwards requests to the Ollama server once it's online.
- **Customizable**: Easily configure MAC and IP addresses using environment variables.
- **Dockerized**: Ready-to-use Docker image with Caddy and WoL plugin.

## Prerequisites

- Docker and Docker Compose installed.
- A server with Wake-on-LAN enabled.

## Setup

1. Clone this repository:

   ```bash
   git clone https://github.com/your-username/ollama-wol-proxy.git
   cd ollama-wol-proxy
   ```

2. Create a `.env` file in the project root with the following content:

   ```env
   WOL_MAC=3C:7C:3F:D6:00:CB
   SERVER_IP=10.0.0.155
   ```

3. Build and run the Docker container:
   ```bash
   docker-compose up -d
   ```

## Configuration

- **`WOL_MAC`**: The MAC address of your server.
- **`SERVER_IP`**: The IP address of your Ollama server.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
