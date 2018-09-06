*** Settings ***        
Documentation   Testcase1
Library         Selenium2Library
Library         BuiltIn

*** Variables ***
${URL}          https://www.baidu.com/
# ${title}        
${timeout}      3s

*** Test Case ***
Testcase1:                             #这块儿的名称到底是干嘛用的，我写上以后就会报没找到关键字
    [Documentation]  Test
    [Tags]  DEBUG
    [Setup]
        打开百度页面                    #这个robot是每一步自动截图么？
        sleep   ${timeout}
        点击hao123
        # 跳转到最新界面
        # 输入搜索内容
        # 点击百度一下
        # 跳转到最新界面
        # 验证跳转是否成功
        # 滑动到某元素处
        # 截图
    [Teardown]
        关闭浏览器

*** Keywords ***
打开百度页面
    Open Browser    url=${URL}  browser=chrome
    # Open Browser  url=${URL}  browser=chrome
    Maximize Browser Window
    Log to console  打开百度页面

点击hao123
    # Click Element   xpath=//*[@id="u1"]/a[2]         #xpath为什么不行？
    Click Element   css=#u1 > a:nth-child(2)
    Log to console  点击hao123

关闭浏览器
    Close Browser
