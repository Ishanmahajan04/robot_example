*** Settings ***
Library           OperatingSystem
Library           ../../anaconda2/lib/python2.7/site-packages/Selenium2Library/

*** Test Cases ***
testSelect
    [Setup]    Log    ${CURDIR}
    Open Browser    https://www.w3schools.com/tags/tryit.asp?filename=tryhtml_iframe    gc
    Select Frame    name=google_osd_static_frame
    [Teardown]    Close Browser

testing_status
    Open Browser    http://www.google.com    gc
    [Teardown]    Log    ${TEST_STATUS}
