# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [0.7.1] - 2021-04-28

### Added

- `AC_CHARGE_SOC_LIMIT` register constant

## [0.7.0] - 2020-05-08

### Added

- support for requesting input registers on demand
- support for sending heartbeats

## [0.6.0] - 2020-04-10

### Added

- support `v_pv_*` keys in `ReadInput1`
- support `bat_count` key in `ReadInput3`

## [0.5.0] - 2020-04-09

### Added

- support 3 PV strings in `ReadInput1` and `ReadInput2`
- support 3 phase power in `ReadInput1`
- support `t_bat` key in `ReadInput2#to_h` (suspect this is Lead Acid only as mine is 0)
- support `uptime` key in `ReadInput2#to_h`

### Fixed

- parsing of temperatures above 255C in ReadInput2


## [0.4.0] - 2020-04-07

### Added

- parsing of ReadHold packets with multiple registers/values
- beginnings of a test suite!


## [0.3.0] - 2020-04-02

### Fixed

- decoding energy accumulation figures in ReadInput1 packets


## [0.2.0] - 2020-01-26

### Fixed

- bitshifting logic when reading packets


## [0.1.2] - 2020-01-15

### Changed

- move Utils module into LXP namespace
- add Packet#tcp_function
- add Heartbeat packet support


## [0.1.0] - 2020-01-05

### Added

- Initial release
