#!/bin/bash

sed -i '' 's/SOCKET_URL/'$TEST_ENV'/g' "./SDRling/Modules/Listening/ReceiverService.swift"
