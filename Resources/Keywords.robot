*** Variables ***

${url}         http://127.0.0.1:4723/wd/hub
${PlatFormName}      Android
#We'll need to find the Android version that the eHub is using.
${PlatFormVersion}   7.1.2
#This can be replaced with the device name if using a remote device via adroid studio
${DeviceName}        192.168.1.133:5555
${Activity_NAME}      com.sentrics.engage360..presentation.MainActivity
${PACKAGE_NAME}       com.sentrics.engage360

*** Keywords ***
Open App
    Open Application   ${url}
  ...   platformName=${PlatFormName}
  ...   platformVersion=${PlatFormVersion}
  ...   deviceName=${DeviceName}
  ...   automationName=UiAutomator2
  ...   newCommandTimeout=2500
  ...   noReset=True
  ...   activateName=${Activity_NAME}
  ...   packageName=${PACKAGE_NAME}

# NGG-TC-58
Home - Activities
    Press Keycode       20
    Press Keycode       20
    Press Keycode       22
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvAppName
    Press Keycode       23
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvDate

    # Back
    Press Keycode       4
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvAppName
    Press Keycode       4
    Wait Until Element Is Visible       Id=com.sentrics.engage360:id/tvGroupName
    Press Keycode       21
    Wait Until Element Is Visible       Id=com.sentrics.engage360:id/tvGroupName
    Press Keycode       19
    Press Keycode       19




# NGG-TC-57
Enter to days and categories - Activities
# Home - Activities
    Press Keycode       20
    Press Keycode       20
    Press Keycode       22
    Press Keycode       23

    Wait Until Element Is Visible       id=com.sentrics.engage360:id/rvActivities
# Date
# Day 1
    Press Keycode           19
    Press Keycode           23
# Date
# day 2
    Press Keycode       22
    Press Keycode       23
# day 3
    Press Keycode       22
    Press Keycode       23
# day 4
    Press Keycode       22
    Press Keycode       23
# day 5
    Press Keycode       22
    Press Keycode       23
# day 6
    Press Keycode       22
    Press Keycode       23

# Categories
# See All
    Press Keycode       22
    Press Keycode       23
# Art Event
    Press Keycode       22
    Press Keycode       23
# Health & Fitness
    Press Keycode       22
    Press Keycode       23
# Special Event
    Press Keycode       22
    Press Keycode       23
# Spirituality
    Press Keycode       22
    Press Keycode       23
# Uncategorized
    Press Keycode       22
    Press Keycode       23
# Back
    Press Keycode       4

    Press Keycode       4
    Wait Until Element Is Visible       Id=com.sentrics.engage360:id/tvGroupName
    Press Keycode       21
    Wait Until Element Is Visible       Id=com.sentrics.engage360:id/tvGroupName
    Press Keycode       19
    Press Keycode       19













# NGG-TC-22
Activity Details Screen - Activities
    Press Keycode       23
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvDate

 # Back
    Press Keycode       4
# Back
    Press Keycode       4
    Press Keycode       4
    Wait Until Element Is Visible       Id=com.sentrics.engage360:id/tvGroupName
    Press Keycode       21
    Wait Until Element Is Visible       Id=com.sentrics.engage360:id/tvGroupName
    Press Keycode       19
    Press Keycode       19









# NGG-TC-23
See Attendees - Activities
# Home - Activities
    Press Keycode       20
    Press Keycode       20
    Press Keycode       22
    Press Keycode       23


# Select an activity of the list and enter to the details
    Wait Until Element Is Visible      id=com.sentrics.engage360:id/tvDate
    Press Keycode       19
    Press Keycode       19
    Press Keycode       19
    press Keycode       23
    Press Keycode       20
    Press Keycode       20
    Press Keycode       23
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/tvTitle
    Press Keycode       23

# Press the "See Attendees" button
#    Wait Until Element Is Visible            id=com.sentrics.engage360:id/btnSeeAttendees
    Press Keycode       23
# Press any Arrow button
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/btnOkAttendees
    Press Keycode       19
# Press "OK" button
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/btnOkAttendees
    Press Keycode       19
    Press Keycode       23

# Click Unregister
    Wait Until Element Is Visible                 id=com.sentrics.engage360:id/tvTitle
    Press Keycode       21
    Press Keycode       23

# Press the "See Attendees" button
    Wait Until Element Is Visible                 id=com.sentrics.engage360:id/tvTitle
    Press Keycode       22
    Press Keycode       23
# Back
    Press Keycode       4
    Wait Until Element Is Visible                 id=com.sentrics.engage360:id/tvTitle
    Press Keycode       4
    Press Keycode       4
    Press Keycode       4
    Press Keycode       4
    Wait Until Element Is Visible       Id=com.sentrics.engage360:id/tvGroupName
    Press Keycode       21
    Wait Until Element Is Visible       Id=com.sentrics.engage360:id/tvGroupName
    Press Keycode       19
    Press Keycode       19






# NGG-TC-26
See All Dates - Activities
# Home - Activities
    Press Keycode       20
    Press Keycode       20
    Press Keycode       22
    Press Keycode       23

# Press the "See All Dates" button
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvDate
    Press Keycode       19
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvDayOfTheWeekName
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/ivNext
    Press Keycode       19
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/btnSeeAllDates
    Press Keycode       22
    Press Keycode       23

# Back
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvDate
    Press Keycode       4
    Press Keycode       4
    Wait Until Element Is Visible       Id=com.sentrics.engage360:id/tvGroupName
    Press Keycode       21
    Wait Until Element Is Visible       Id=com.sentrics.engage360:id/tvGroupName
    Press Keycode       19
    Press Keycode       19







# NGG-TC-27
Jump to today - Activities
# Home - Activities
    Press Keycode       20
    Press Keycode       20
    Press Keycode       22
    Press Keycode       23
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/rvActivities
## Date
    Press Keycode       19
    Press Keycode       22
    Press Keycode       22
    Press Keycode       22

# Move the focus and select days other than the current day
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/ivNext
    Press Keycode       23

# Press the "Jump to today" button
    Press Keycode       19
    Press Keycode       21
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvBackToToday
    Press Keycode       23


# Back
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvDate
    Press Keycode       4
    Press Keycode       4
    Wait Until Element Is Visible       Id=com.sentrics.engage360:id/tvGroupName
    Press Keycode       21
    Wait Until Element Is Visible       Id=com.sentrics.engage360:id/tvGroupName
    Press Keycode       19
    Press Keycode       19






# NGG-TC-31
Available seats - Activities
# Home - Activities
    Press Keycode       20
    Press Keycode       20
    Press Keycode       22
    Press Keycode       23

# Select an activity of the list and enter to the details

    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvDate
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/btnSeeAllDates
    Press Keycode           19
    Press Keycode           19
    Press Keycode           23

# See the number of seats available for this activity
    Wait Until Element Is Visible           id=com.sentrics.engage360:id/ivBackgroundImage
    Press Keycode       20
    Press Keycode       20

# The number of available seats
    Press Keycode       23

# Press the "Register" button
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvSeats
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/btnRegister
    Press Keycode       23

# Press the "UnRegister" button
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvSeats
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/btnUnregister
    Press Keycode       21
    Press Keycode       23
# Back
    Press Keycode      4
# Back
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvBackToToday
    Press Keycode       4
# Back
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvBackToToday
    Press Keycode       4
    Wait Until Element Is Visible       Id=com.sentrics.engage360:id/tvGroupName
    Press Keycode       21
    Wait Until Element Is Visible       Id=com.sentrics.engage360:id/tvGroupName
    Press Keycode       19
    Press Keycode       19




# NGG-TC-33
Register - Activities
# Home - Activities
    Press Keycode       20
    Press Keycode       20
    Press Keycode       22
    Press Keycode       23


    Wait Until Element Is Visible       id=com.sentrics.engage360:id/rvActivities
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvDate
    Press Keycode           19
    Press Keycode           22
    Press Keycode           22
    Press Keycode           22
    Press Keycode           23


# enter activity
    Press Keycode           20
    Press Keycode           23


# Enter Boton Register
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/btnRegister
    Press Keycode           23

# Back
    Press Keycode       4
    Press Keycode       4
    Press Keycode       4
    Press Keycode       4

    Wait Until Element Is Visible       Id=com.sentrics.engage360:id/tvGroupName
    Press Keycode       21
    Wait Until Element Is Visible       Id=com.sentrics.engage360:id/tvGroupName
    Press Keycode       19
    Press Keycode       19





## NGG-TC-32
Unregister - Activities

# Home - Activities
    Press Keycode       20
    Press Keycode       20
    Press Keycode       22
    Press Keycode       23


    Wait Until Element Is Visible       id=com.sentrics.engage360:id/rvActivities
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvDate
    Press Keycode           19
    Press Keycode           22
    Press Keycode           22
    Press Keycode           22
    Press Keycode           23


# enter activity
    Press Keycode           20
    Press Keycode           23


# Enter Boton Unregister
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvTitle
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/btnUnregister
    Press Keycode           23

# Back
    Press Keycode       4
    Press Keycode       4
    Press Keycode       4
    Press Keycode       4

    Wait Until Element Is Visible       Id=com.sentrics.engage360:id/tvGroupName
    Press Keycode       21
    Wait Until Element Is Visible       Id=com.sentrics.engage360:id/tvGroupName
    Press Keycode       19
    Press Keycode       19





# NGG-TC-30
Banner Notification - Activities
# Enter to Activities tile
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvAppName
    Press Keycode       23

    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvDate
    Press Keycode       23

# Press the "Register" button
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvTitle
    Wait Until Element Is Visible       id=com.sentrics.engage360:id/btnRegister
    Press Keycode       23


## Back

    Press Keycode      4

# Back
    Press Keycode       4
# Back

    Press Keycode      4
# Back

    Press Keycode      4



















## NGG-TC-30
#Banner Notification - Activities
## Home - Activities
#    Press Keycode       20
#    Press Keycode       20
#    Press Keycode       22
#    Press Keycode       23
#
#    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvDate
#    Press Keycode       23
#
## Press the "Register" button
#    Wait Until Element Is Visible       id=com.sentrics.engage360:id/tvTitle
#    Wait Until Element Is Visible       id=com.sentrics.engage360:id/btnRegister
#    Press Keycode       23
#
#
### Back
#
#    Press Keycode      4
#
## Back
#    Press Keycode       4
## Back
#
#    Press Keycode      4
## Back
#
#    Press Keycode      4
