#!/bin/bash
set -e
IFS='|'


AUTHCONFIG="{\
\"facebookAppIdUserPool\":\"jcnskcs\",\
\"facebookAppSecretUserPool\":\"jncnknwkwc\",\
\"facebookAppIdUserPool\":\"cjdknw\",\
}"

CATEGORIES="{\
\"auth\":$AUTHCONFIG\
}"
REACTCONFIG="{\
\"SourceDir\":\"src\",\
\"DistributionDir\":\"build\",\
\"BuildCommand\":\"npm run-script build\",\
\"StartCommand\":\"npm run-script start\"\
}"
AWSCLOUDFORMATIONCONFIG="{\
\"configLevel\":\"project\",\
\"useProfile\":true,\
\"profileName\":\"default\",\
}"
AMPLIFY="{\
\"projectName\":\"consoletestfix\",\
\"envName\":\"myenvname\",\
\"defaultEditor\":\"code\"\
}"
FRONTEND="{\
\"frontend\":\"javascript\",\
\"framework\":\"react\",\
\"config\":$REACTCONFIG\
}"
PROVIDERS="{\
\"awscloudformation\":$AWSCLOUDFORMATIONCONFIG\
}"

amplify-dev init \
--amplify $AMPLIFY \
--frontend $FRONTEND \
--providers $PROVIDERS \
--categories $CATEGORIES
--yes