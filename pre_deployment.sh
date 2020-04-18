#!/bin/bash

sed -i '' 's/WS_KEY/'$WS_KEY'/g' "./SDRling/Modules/Listening/ReceiverService.swift"
sed -i '' 's/ORIGIN_KEY/'$ORIGIN_KEY'/g' "./SDRling/Modules/Listening/ReceiverService.swift"
