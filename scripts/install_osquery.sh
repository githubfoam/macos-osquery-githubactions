#!/bin/bash

brew update 
brew install osquery

osqueryi --json 'select cpu_type, cpu_brand, hardware_vendor, hardware_model from system_info;' > system_info.json
cat system_info.json