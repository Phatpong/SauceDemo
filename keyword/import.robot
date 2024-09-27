*** Settings ***
#IMPORT-GLOBAL
Library    SeleniumLibrary
Library    Collections
Library    String

#LOCATORS
Resource    ${CURDIR}/locators/button.robot
Resource    ${CURDIR}/locators/input.robot
Resource    ${CURDIR}/locators/reward.robot

#PAGES
Resource    ${CURDIR}/pages/login_page.robot
Resource    ${CURDIR}/pages/landing_page.robot
Resource    ${CURDIR}/pages/cart_page.robot
Resource    ${CURDIR}/pages/checkout_step1_page.robot
Resource    ${CURDIR}/pages/checkout_step2_page.robot
Resource    ${CURDIR}/pages/checkout_complete_page.robot

#COMMON
Resource    ${CURDIR}/common.robot

#RESOURCE
Variables    ${CURDIR}/../resources/config.yaml