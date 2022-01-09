##### Get MFA Details for All the users in Office 365 / Azure AD
##### This script will fetch the MFA details for all the users in Office 365 or Azure AD in details about the MFA Status, Method used, Phone and E-Mail with following attributes
##### UserName	UserPrincipalName	UserType	MFAStatus	Method	MFAEmail	PhoneNumber	AlternativePhoneNumber	AuthenticationPhoneNumber


# Connection String 

## Connect to MSOLService
## Login with Global Admin or User admin credentials

Import-Module MSOnline
Connect-MsolService

#Variable declaration to store the Output
#############################

$Result = @() 

#Get the list of all the users and store in a variable
##############################

$users = Get-MsolUser -all

#Get MFA status and MFA Method Type for each user object
###############################

$users | ForEach-Object {
    $user = $_
    $mfaStatus = $_.StrongAuthenticationRequirements.State 
    $methodTypes = $_.StrongAuthenticationMethods 
 
 #### Validate the MFA status and MFA Method
 ##############################
    if ($mfaStatus -ne $null -or $methodTypes -ne $null) {
        if ($mfaStatus -eq $null) { 
            $mfaStatus = 'Enabled (Conditional Access)'
        }
        $authMethods = $methodTypes.MethodType
        $defaultAuthMethod = ($methodTypes | Where { $_.IsDefault -eq "True" }).MethodType 
        $verifyEmail = $user.StrongAuthenticationUserDetails.Email 
        $phoneNumber = $user.StrongAuthenticationUserDetails.PhoneNumber
        $alternativePhoneNumber = $user.StrongAuthenticationUserDetails.AlternativePhoneNumber
        $authenticationnumber = $null
    }

   
    Else {
        $mfaStatus = "Disabled"
        $defaultAuthMethod = $null
        $verifyEmail = $null
        $phoneNumber = $null
        $alternativePhoneNumber = $null
        $authenticationnumber = $user.StrongAuthenticationUserDetails.PhoneNumber
    }
    
    ## Add the OUtput to the define variable and store the user Property
    #############################

    $Result += New-Object PSObject -property @{ 
        UserName                  = $user.DisplayName
        UserPrincipalName         = $user.UserPrincipalName
        UserType                  = $user.UserType
        Method                    = ($user.strongauthenticationmethods | ? { $_.isdefault -eq $true } ).methodtype
        MFAStatus                 = $mfaStatus
        AuthenticationMethods     = $authMethods
        DefaultAuthMethod         = $defaultAuthMethod
        MFAEmail                  = $verifyEmail
        PhoneNumber               = $phoneNumber
        AlternativePhoneNumber    = $alternativePhoneNumber
        AuthenticationPhoneNumber = $authenticationnumber
    }
}

##Export the Output to a CSV File
### the CSV file will be stored in the current folder with the name MFA_Report_MM-dd-yyyy_hh-mm-ss.csv

$Result | select UserName, UserPrincipalName, UserType, MFAStatus, Method, MFAEmail, PhoneNumber, AlternativePhoneNumber, AuthenticationPhoneNumber | Export-Csv -Path ".\MFA_Report_$((Get-Date).ToString('MM-dd-yyyy_hh-mm-ss')).csv"



##################End of Script#########################
