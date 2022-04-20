*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${web_url}  http://127.0.0.1:5000

*** Test Cases ***
Admin Login test
    [Documentation]  Admin login page
    [Tags]  admin
    open browser    ${web_url}  chrome
    maximize browser window
    input text  name:adminname  admin
    sleep  1s
    input text  name:password   12345
    sleep  1s
    click button    xpath=//html/body/div/div/div/form/table/tbody/tr[3]/td[2]/button
    sleep  3s

Admin View Theatre test
    [Documentation]  Admin view theatre
    [Tags]  admin
    click link  xpath=//html/body/nav/a[3]
    sleep  3s

Admin Search Theatre test
    [Documentation]  Admin search theatre
    [Tags]  admin
    click link  xpath=//html/body/nav/a[2]
    sleep  3s
    input text  name:theatrename    Cosmo
    sleep  1s
    click button  xpath=//html/body/div[1]/div/div/form/table/tbody/tr[2]/td[2]/button
    sleep  3s

Admin View Revenue test
    [Documentation]  Admin revenue
    [Tags]  admin
    click link  xpath=//html/body/nav/a[6]
    sleep  1s
    input text  name:theatrename    Cosmo
    sleep  1s
    click button  xpath=//html/body/div[1]/div/div/form/table/tbody/tr[2]/td[2]/button
    sleep  3s

Admin Logout test
    [Documentation]  Admin logout
    [Tags]  admin
    click link  xpath=//html/body/nav/a[7]
    sleep  2s

Owner Login test
    [Documentation]  Owner login
    [Tags]  theatre_owner
    click link  xpath=//html/body/div/div/div/form/table/tbody/tr[4]/td[2]/p/a
    sleep  2s
    input text  name:email  abirami@gmail.com
    sleep  1s
    input text  name:password   0
    sleep  1s
    click button  xpath=//html/body/div/form/button
    sleep  2s

Owner View Movie test
    [Documentation]  Owner view movie
    [Tags]  theatre_owner
    click link  xpath=//html/body/nav/a[2]
    sleep  1s
    input text  name:theatrename    Abirami
    sleep  1s
    click button  xpath=//html/body/div[1]/div/div/form/table/tbody/tr[2]/td[2]/button
    sleep  2s

Owner Delete Movie test
    [Documentation]  Owner delete movie
    [Tags]  theatre_owner
    click link  xpath=//html/body/nav/a[3]
    input text  name:moviename  beast
    sleep  1s
    click button  xpath=//html/body/div/div/div/form/table/tbody/tr[2]/td[2]/button
    sleep  2s

Owner Add Movie test
    [Documentation]  Owner add movie
    [Tags]  theatre_owner
    click link  xpath=//html/body/nav/a[1]
    sleep  1s
    input text  name:theatrename  Abirami
    sleep  1s
    input text  name:moviename  beast
    sleep  1s
    input text  name:language   Tamil
    sleep  1s
    input text  name:releasedate  04/13/2022
    sleep  1s
    input text  name:seatingcapacity    150
    sleep  1s
    input text  name:show1  10:00AM
    sleep  1s
    input text  name:show2  02:00PM
    sleep  1s
    input text  name:show3  06:00PM
    sleep  1s
    input text  name:show4  10:00PM
    sleep  1s
    input text  name:price  200
    sleep  1s
    click button  xpath=//html/body/div/div/div/form/table/tbody/tr[11]/td[2]/button
    sleep  2s

Owner Logout test
    [Documentation]  Owner logout
    [Tags]  theatre_owner
    click link  xpath=//html/body/nav/a[5]
    sleep  2s

User Login test
    [Documentation]  User login
    [Tags]  user
    click link  xpath=//html/body/div/form/p[2]/a
    sleep  2s
    input text  name:email  pradeepak571@gmail.com
    sleep  1s
    input text  name:password   12345
    sleep  1s
    click button  xpath=//html/body/div/div/div[2]/form/table/tbody/tr[3]/td[2]/button
    sleep  3s

User Booking Ticket test
    [Documentation]  User booking ticket
    [Tags]  user
    click link  xpath=//html/body/nav/a[2]
    sleep  2s
    input text  name:moviename  beast
    sleep  1s
    click button  xpath=//html/body/nav/form/button
    sleep  2s
    click link  xpath=//html/body/div/div/div/table/tbody/tr/td[5]/a
    sleep  3s
    input text  name:ticketcount    2
    sleep  1s
    input text  name:showdate   04/20/2022
    sleep  1s
    input text  name:email  pradeepak571@gmail.com
    sleep  1s
    click button  xpath=//html/body/div[2]/div/div/form/table/tbody/tr[8]/td[2]/button
    sleep  2s

User Tickets Booked test
    [Documentation]  User tickets booked
    [Tags]  user
    click link  xpath=//html/body/nav/a[3]
    sleep  1s
    input text  name:email  pradeepak571@gmail.com
    sleep  1s
    click button  xpath=//html/body/div[1]/div/div/form/table/tbody/tr[2]/td[2]/button
    sleep  2s

User Cancel Ticket test
    [Documentation]  User cancel ticket
    [Tags]  user
    click link  xpath=//html/body/div[2]/div/div/table/tbody/tr[1]/td[7]/a
    sleep  1s

User Edit Profile test
    [Documentation]  User edit profile
    [Tags]  user
    click link  xpath=//html/body/nav/a[4]
    sleep  1s
    input text  name:email  pradeepak571@gmail.com
    sleep  1s
    click button  xpath=//html/body/div/div/div/form[1]/table/tbody/tr[2]/td[2]/center/button
    sleep  2s
    input text  name:name   A Pradeep
    sleep  1s
    click button  xpath=//html/body/div/div/div/form[2]/table/tbody/tr[6]/td[2]/button
    sleep  2s

User Logout test
    [Documentation]  User Logout
    [Tags]  user
    click link  xpath=//html/body/nav/a[5]
    sleep  3s
    close browser



*** Keywords ***
