# AMBE Server in docker

AMBE decoder/encoder server using md380-emulator.

Based on [md380tools](https://github.com/travisgoodspeed/md380tools) and  [DVSwitch repo](https://github.com/DVSwitch/DVSwitch-System-Builder)

## Setup
- Clone this repository `git clone https://github.com/rick51231/ambe-server-docker`
- Build image `cd ambe-docker-server && docker build -t ambe-server .`
- Run `docker run -p 127.0.0.0:2470:2470/udp -dit ambe-server`
- Use UDP port `2470` with Analog_Bridge or similar

Configuration example:
```ini
[GENERAL]
decoderFallBack = true
useEmulator = true
emulatorAddress = 127.0.0.1:2470
```
