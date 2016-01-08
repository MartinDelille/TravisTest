#!/bin/sh

set -e

# Environment check
echo -e "\033[33;1mNote: COVERITY_SCAN_PROJECT_NAME and COVERITY_SCAN_TOKEN are available on Project Settings page on scan.coverity.com\033[0m"
[ -z "$COVERITY_SCAN_PROJECT_NAME" ] && echo "ERROR: COVERITY_SCAN_PROJECT_NAME must be set" && exit 1
[ -z "$COVERITY_SCAN_NOTIFICATION_EMAIL" ] && echo "ERROR: COVERITY_SCAN_NOTIFICATION_EMAIL must be set" && exit 1
[ -z "$COVERITY_SCAN_BRANCH_PATTERN" ] && echo "ERROR: COVERITY_SCAN_BRANCH_PATTERN must be set" && exit 1
[ -z "$COVERITY_SCAN_BUILD_COMMAND" ] && echo "ERROR: COVERITY_SCAN_BUILD_COMMAND must be set" && exit 1
[ -z "$COVERITY_SCAN_TOKEN" ] && echo "ERROR: COVERITY_SCAN_TOKEN must be set" && exit 1

echo "COVERITY_SCAN_PROJECT_NAME: $COVERITY_SCAN_PROJECT_NAME"
echo "COVERITY_SCAN_NOTIFICATION_EMAIL: $COVERITY_SCAN_NOTIFICATION_EMAIL"
echo "COVERITY_SCAN_BRANCH_PATTERN: $COVERITY_SCAN_BRANCH_PATTERN"
echo "COVERITY_SCAN_BUILD_COMMAND: $COVERITY_SCAN_BUILD_COMMAND"
echo "COVERITY_SCAN_TOKEN: $COVERITY_SCAN_TOKEN"
echo "COVERITY_SCAN_BUILD_COMMAND_PREPEND: $COVERITY_SCAN_BUILD_COMMAND_PREPEND"
echo "JOB: $JOB"

