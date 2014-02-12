#!/bin/bash
exec serf agent -tag role=lb -event-handler="member-join=/serf-member-join.sh" -event-handler="member-leave,member-failed=/serf-member-leave.sh"
