
echo "**************************************"
echo "Generating ObjectiveHAL documentation."
echo "Open the Xcode Organizer to access."
echo "**************************************"

if [ ! -f /usr/local/bin/appledoc ]
then
    echo "Missing /usr/local/bin/appledoc tool."
    echo "Run 'brew install appledoc' to install and then rebuild."
    exit -1
fi

#appledoc Xcode script
# Start constants
company="ObjectiveHAL";
companyID="org.ObjectiveHAL";
companyURL="http://objectivehal.org";
target="iphoneos";
#target="macosx";
outputPath="~/help";
# End constants
/usr/local/bin/appledoc \
--project-name "${PROJECT_NAME}" \
--project-company "${company}" \
--company-id "${companyID}" \
--docset-atom-filename "${company}.atom" \
--docset-feed-url "${companyURL}/${company}/%DOCSETATOMFILENAME" \
--docset-package-url "${companyURL}/${company}/%DOCSETPACKAGEFILENAME" \
--docset-fallback-url "${companyURL}/${company}" \
--output "${outputPath}" \
--publish-docset \
--docset-platform-family "${target}" \
--logformat xcode \
--keep-intermediate-files \
--no-repeat-first-par \
--no-warn-invalid-crossref \
--exit-threshold 2 \
--index-desc "${PROJECT_DIR}/README.md" \
"${PROJECT_DIR}/ObjectiveHAL"