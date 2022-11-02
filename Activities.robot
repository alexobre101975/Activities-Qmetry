*** Settings ***
Library   AppiumLibrary
Resource    Resources/Keywords.robot

Suite Setup   Open app
Suite Teardown    Close All Applications



*** Test Cases ***
Automation Window Activity Test Cases
  [Tags]    Automation     cases
   Open App

NGG-TC-58 Home - Activities
  [Tags]    Automation     case58
  # NGG-TC-58
  Home - Activities

NGG-TC-57 Enter to days and categories - Activities
  [Tags]    Automation     case57
   # NGG-TC-57
   Enter to days and categories - Activities


NGG-TC-22 Activity Details Screen - Activities
  [Tags]    Automation     case22
    # NGG-TC-22
    Activity Details Screen - Activities

NGG-TC-23 See Attendees - Activities
  [Tags]    Automation     case23
    # NGG-TC-23
    See Attendees - Activities

NGG-TC-26 See All Dates - Activities
  [Tags]    Automation     case26
   # NGG-TC-26
   See All Dates - Activities

NGG-TC-27 Jump to today - Activities
  [Tags]    Automation     case27
   # NGG-TC-27
   Jump to today - Activities

NGG-TC-31 Available seats - Activities
  [Tags]    Automation     case31
   # NGG-TC-31
   Available seats - Activities


NGG-TC-33 Register - Activities
  [Tags]    Automation     case33
   # NGG-TC-33
   Register - Activities

NGG-TC-32 Unregister - Activities
  [Tags]    Automation     case32
   # NGG-TC-32
   Unregister - Activities






