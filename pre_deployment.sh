#!/bin/bash

sed -i '' 's/SOCKET_URL/'$TEST_ENV'/g' "./SDRling/Modules/Listening/ReceiverService.swift"
sed -i '' 's/WS_KEY/'$WS_KEY'/g' "./SDRling/Modules/Listening/ReceiverService.swift"
