#!/bin/bash
exec serf agent -tag role=lb -event-handler=/serf-event-handler.sh
