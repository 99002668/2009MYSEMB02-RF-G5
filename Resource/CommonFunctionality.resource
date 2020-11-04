*** Settings ***
Documentation    this file will take care of configuratipon details 
...    such as browser screenshot folder 
   
Library    BuiltIn    
Library    OperatingSystem    
Library    SeleniumLibrary   

*** Variables ***
${DRIVER LOCATER}    ${EXECDIR}${/}driver 
${URL LOCATER}    https://www.naukri.com/
${BROWSER NAME}    chrome


*** Keywords ***
Start Test
    Append To Environment Variable    Path    ${DRIVER LOCATER}   
    Open Browser    url=${URL LOCATER}   browser=${BROWSER NAME}
    Maximize Browser Window
    Set Browser Implicit Wait    10s
    
End Test
    Close Browser
  

    