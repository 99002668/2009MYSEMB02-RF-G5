*** Settings ***
Library    BuiltIn    
Library    OperatingSystem    
Library    SeleniumLibrary
   
  

Resource     Resource/CommonFunctionality.resource
Test Setup    Start Test
Test Teardown    End Test
Library    DataDriver    file=D:\\Selenium\\RobotWorkplace\\MiniProject2\\TestData\\testdata.xlsx    sheet_name=UploadTest    

Test Template    TC1_UploadedSuccessfully    

*** Keywords ***
TC1_UploadedSuccessfully
    [Arguments]    ${filelocation}    ${expectedvalue}
    
    Sleep    5s        
    Choose File    id=file_upload     ${filelocation}
    Sleep    5s    
    Page Should Contain    ${expectedvalue}
    
    

*** Test Cases ***
balaji
    


    
# TC2_FileFormatNotSupported
 
    # Choose File    id=file_upload     D:\\Selenium\\RobotWorkplace\\MiniProject2\\TestData\\jpegnotsupported.png
    # ${errorformatnotsuppoerted}    Get Text    //*[text()="Sorry! The file format is not supported"]
    # Page Should Contain Element    //*[text()="Sorry! The file format is not supported"]    
    # Log To Console    ${errorformatnotsuppoerted}

    
 # TC3_FileSizeNotSupported

    # Choose File    id=file_upload     D:\\Selenium\\RobotWorkplace\\MiniProject2\\TestData\\testingmorethan2mb.pdf
    # ${errorsizenotsupported}    Get Text    //*[text()="Sorry! The file size cannot be more than 2 MB"]
    # Page Should Contain Element    //*[text()="Sorry! The file size cannot be more than 2 MB"]    
    # Log To Console    ${errorsizenotsupported}
   