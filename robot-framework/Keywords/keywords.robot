*** Settings ***
Documentation   keywords
Library         Selenium2Library
variables       ../Variables/variables.py

*** Keywords ***

点击百度
    Open Browser    url=${URL}  browser=chrome
    Maximize Browser Window
    Log to console  点击百度

点击hao123
    Click Element   css=${djh123}
    Log to console  点击hao123

输入搜索信息
    Input Text  css=${ssxx}  ${xx}

点击提交
    Click Element   css=${tj}