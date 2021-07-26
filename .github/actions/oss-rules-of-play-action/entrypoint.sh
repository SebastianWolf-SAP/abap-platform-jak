#!/bin/bash

RATING=$1
REPORT_BRANCH=$2
REPORT_FILE=$3
BADGE_FILE=$4
FOSSTARS_VERSION=$5
TOKEN=$6
DATA_PROVIDER_CONFIG_URLS=$7

if [ "$RATING" = "" ]; then
    echo "Oops! No rating provided!"
    exit 1
fi

if [ "$REPORT_BRANCH" = "" ]; then
    echo "Oops! No branch provided!"
    exit 1
fi

if [ "$FOSSTARS_VERSION" = "" ]; then
    echo "Oops! No Fosstars version provided!"
    exit 1
fi

if [ "$REPORT_FILE" = "" ]; then
    REPORT_FILE="fosstars_report.md"
fi

if [ "$BADGE_FILE" = "" ]; then
    BADGE_FILE="fosstars_badge.svg"
fi

#PROJECT_SCM_URL=$GITHUB_SERVER_URL/$GITHUB_REPOSITORY
PROJECT_SCM_URL=https://github.com/SAP/ui5-showcases
RAW_RATING_FILE="fosstars_rating.json"

# Switch to the branch where the report should be stored
git fetch origin $REPORT_BRANCH || git branch $REPORT_BRANCH
git checkout $REPORT_BRANCH
if [ $? -ne 0 ]; then
    echo "Could not switch to branch '$REPORT_BRANCH'"
    echo "Did you forget to run 'actions/checkout' step in your workflow?"
    exit 1
fi

# Build Fosstars
git clone https://github.com/SAP/fosstars-rating-core && \
    cd fosstars-rating-core && \
    git checkout $FOSSTARS_VERSION && \
    mvn package -ntp -DskipTests -Dcheckstyle.skip -Dmaven.javadoc.skip && \
if [ $? -ne 0 ]; then
    echo "Oops! Could not build Fosstars!"
    exit 1
fi
cd ..

if [ "$RATING" == "oss-rules-of-play" ] && [ "$DATA_PROVIDER_CONFIGS" == "" ]; then
    DATA_PROVIDER_CONFIG_BASE_URL="https://raw.githubusercontent.com/SebastianWolf-SAP/fosstars-rating-core-action/main/rop-sap-defaults/"
    DATA_PROVIDER_CONFIG_URLS[0]="${DATA_PROVIDER_CONFIG_BASE_URL}LicenseInfo.config.yml"
    DATA_PROVIDER_CONFIG_URLS[1]="${DATA_PROVIDER_CONFIG_BASE_URL}ContributingGuidelineInfo.config.yml"
    DATA_PROVIDER_CONFIG_URLS[2]="${DATA_PROVIDER_CONFIG_BASE_URL}ReadmeInfo.config.yml"
    for config_url in "${DATA_PROVIDER_CONFIG_URLS[@]}"
    do
        config_basename=$(basename $config_url)
        wget -O $config_basename $config_url
        if [ "$DATA_PROVIDER_CONFIGS" != "" ]; then
            DATA_PROVIDER_CONFIGS="${DATA_PROVIDER_CONFIGS},"
        fi
        DATA_PROVIDER_CONFIGS="${DATA_PROVIDER_CONFIGS}${config_basename}"
    done
fi

# Generate a report
java -jar fosstars-rating-core/target/fosstars-github-rating-calc.jar \
          --url $PROJECT_SCM_URL \
          --token $TOKEN \
          --rating $RATING \
          --verbose \
          --report-file $REPORT_FILE \
          --report-type markdown \
          --raw-rating-file $RAW_RATING_FILE \
          --data-provider-configs $DATA_PROVIDER_CONFIGS

git add $REPORT_FILE $RAW_RATING_FILE

# Update the current badge
label=$(cat $RAW_RATING_FILE | jq -r .label[1] | tr '[:upper:]' '[:lower:]' | sed 's/ //g')

if [ "$RATING" == "security" ]; then
    prefix="security"
    case $label in
        good|moderate|bad|unclear)
        suffix=$label
        ;;
        *)
        suffix="unknown"
        ;;
    esac
fi

if [ "$RATING" == "oss-rules-of-play" ]; then
    prefix="rop"
    case $label in
        "passed"|"passed_with_warnings"|"failed"|"unclear")
        suffix=$label
        ;;
        *)
        suffix="unknown"
        ;;
    esac
fi

wget -O $BADGE_FILE https://raw.githubusercontent.com/SebastianWolf-SAP/fosstars-rating-core-action/main/images/$prefix-fosstars-$suffix.svg
git add $BADGE_FILE

# Commit the report and the badge
git config --global user.name "Fosstars"
git config --global user.email "fosstars@users.noreply.github.com"

git commit -m "Update Fosstars report" $REPORT_FILE $BADGE_FILE $RAW_RATING_FILE
if [ $? -ne 0 ]; then
    echo "Could not commit anything"
    exit 0
fi

git remote set-url origin https://x-access-token:$TOKEN@github.com/$GITHUB_REPOSITORY
git push origin $REPORT_BRANCH
