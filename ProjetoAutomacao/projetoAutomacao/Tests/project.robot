*Settings*
Documentation           This is a test positive

Library                 SeleniumLibrary


*Variables*

${url}                      https://www.amazon.com.br/ap/signin?openid.pape.max_auth_age=900&openid.return_to=https%3A%2F%2Fwww.amazon.com.br%2Fgp%2Fyourstore%2Fhome%3Fpath%3D%252Fgp%252Fyourstore%252Fhome%26signIn%3D1%26useRedirectOnSuccess%3D1%26action%3Dsign-out%26ref_%3Dnav_AccountFlyout_signout&openid.assoc_handle=brflex&openid.mode=checkid_setup&openid.ns=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0
${Browser}                  chrome              

*Test Cases*
login positive
    [Documentation]                   As a user I want to login to the site

    open Browser                        ${url}      ${Browser}  
    Sleep  2   
    Get text                            css= #authportal-main-section > div:nth-child(2) > div > div.a-section > form > div > div > div > h1
    input text                          xpath=/html/body/div[1]/div[1]/div[2]/div/div[2]/div/div[1]/form/div/div/div/div[1]/input[1]          automacaoteste524@gmail.com
    capture Element Screenshot          css=body       fazerLogin.png
    Click Element                       css=#continue          Left
    Sleep   2
    input text                          xpath=/html/body/div[1]/div[1]/div[2]/div/div[2]/div/div/div/form/div/div[1]/input                  Teste@123
    Click Element                       css=#signInSubmit       Left
    Sleep   2
    capture Element Screenshot           css=body         loginEfetuado.png
    Close Browser                       
    

login negative
    [Documentation]                   As a user I want to fail login to the site

    open Browser                        ${url}      ${Browser}  
    Sleep  2   
    Get text                            css= #authportal-main-section > div:nth-child(2) > div > div.a-section > form > div > div > div > h1
    input text                          xpath=/html/body/div[1]/div[1]/div[2]/div/div[2]/div/div[1]/form/div/div/div/div[1]/input[1]          automacaoteste524@gmail.com
    capture Element Screenshot          css=#a-page > div.a-section.a-padding-medium.auth-workflow      fazerLogin2.png
    Click Element                       css=#continue          Left
    Sleep   2
    input text                          xpath=/html/body/div[1]/div[1]/div[2]/div/div[2]/div/div/div/form/div/div[1]/input                  Teste@12
    Click Element                       css=#signInSubmit       Left
    Sleep   2
    Get text                            css=#auth-error-message-box > div
    capture Element Screenshot          css=body          senhaIncorreta.png
    Close Browser                       

*Keywords*






