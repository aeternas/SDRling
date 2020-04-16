#!/bin/bash

sed -i '' 's/WS_KEY/'$WS_KEY'/g' "./SDRling/Modules/Listening/ReceiverService.swift"
