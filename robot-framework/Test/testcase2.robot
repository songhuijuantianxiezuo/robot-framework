*** Settings ***
Documentation       Testing MercuryTours Website
Library             Selenium2Library
Library             BuiltIn
# Library             Test.Locators.Locators.Locator     #这个是什么作用？
Resource            ../Keywords/keywords.robot
variables           ../Variables/variables.py

*** Test Cases ***
Testcase1:
    [Documentation]     testcase1
    [Tags]  testcase1
    [Setup]
        点击百度
        sleep   ${timeout}
        点击hao123
        输入搜索信息
        sleep   ${timeout}
        点击提交
        sleep   ${timeout}
    [Teardown]
        Close Browser

Testcase2:
    [Documentation]     testcase2
    [Tags]  testcase2
    [Setup]
        点击百度
        sleep   ${timeout}
        点击hao123
        输入搜索信息
        sleep   ${timeout}
        点击提交
        sleep   ${timeout}
    [Teardown]
        Close Browser

Testcase3:
    [Documentation]     testcase3
    [Tags]  Testcase3
    [Setup]
        点击百度
        sleep   ${timeout}
        点击hao123
        输入搜索信息
        sleep   ${timeout}
        点击提交
        sleep   ${timeout}
    [Teardown]
        Close Browser