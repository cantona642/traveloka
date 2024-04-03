*** Settings ***
Library    SeleniumLibrary
Library    String

*** Variables ***
${BROWSER}  Edge
${URL}      https://www.traveloka.com/en-id
${SSDIRECTORY}  ss/landingPage
${CAR}  //*[@id="__next"]/div[4]/div[2]/div[1]/div[2]/div/div[1]/div/div/div[6]/div
${WITHOUT_DRIVER}   //*[@id="__next"]/div[4]/div[2]/div[1]/div[2]/div/div[3]/div/div/div/div/div[1]/div/div[1]/div/div/div[1]/svg
${LOCATION}     //*[@id="__next"]/div[4]/div[2]/div[1]/div[2]/div/div[3]/div/div/div/div/div[2]/div/div[1]/div/div[1]/div[1]/div[1]/input
${SELECT_LOCT}  //*[@id="__next"]/div[4]/div[2]/div[1]/div[2]/div/div[3]/div/div/div/div/div[2]/div/div[1]/div/div[1]/div[2]/div/div[2]/div/div[1]/div[2]


*** Test Cases ***
Test Start
    Open Edge Browser
    Car

*** Keywords ***
Open Edge Browser
    Open Browser    ${URl}  ${BROWSER}
    Maximize Browser Window

Car
    Click Element    xpath=${CAR}
#    Click Element    xpath=${WITHOUT_DRIVER}
    Wait Until Element Is Visible    xpath=${LOCATION}  5s
    Click Element    xpath=${LOCATION}
    Input Text    xpath=${LOCATION}    jakarta
    Click Element    xpath=${SELECT_LOCT}
