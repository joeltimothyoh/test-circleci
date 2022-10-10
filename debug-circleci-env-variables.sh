#!/bin/sh

BODY=$( echo '{}' | jq '
{
    "build_num": "$CIRCLE_BUILD_NUM",
    "username": "$CIRCLE_PROJECT_USERNAME",
    "reponame": "$CIRCLE_PROJECT_REPONAME",
    "branch": "$CIRCLE_BRANCH",
    "build_parameters": {
        "var1": "$var1",
        "var2": "$var2",
        "var3": "$var3",
        "var4": "$var4"
    }
}
' )
echo "BODY: $BODY"

BODY=$( cat <<EOF
{
    "build_num": "$CIRCLE_BUILD_NUM",
    "username": "$CIRCLE_PROJECT_USERNAME",
    "reponame": "$CIRCLE_PROJECT_REPONAME",
    "branch": "$CIRCLE_BRANCH",
    "build_parameters": {
        "var1": "$var1",
        "var2": "$var2",
        "var3": "$var3",
        "var4": "$var4"
    }
}
EOF
)
echo "BODY: $BODY"
