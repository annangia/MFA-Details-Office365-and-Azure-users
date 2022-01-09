#**Get MFA Details for All the users in Office 365 / Azure AD**


Current in Azure AD / Office 365 we do not have the option to directly download the MFA registration details for all the users. This PowerShell script will help in fetching the MFA details of all the users present in Azure AD/Office 365.

In the Output file we will see the details in Following format:
*************************************************************************************
UserName	UserPrincipalName	UserType	MFAStatus	Method	MFAEmail	PhoneNumber	AlternativePhoneNumber	AuthenticationPhoneNumber
User1	user1@domain.onmicrosoft.com	Member	Enabled (Conditional Access)	PhoneAppNotification		+xx 70000000		
User2	user2@domain.onmicrosoft.com	Member	Enabled (Conditional Access)	OneWaySMS		+xx 71111111		
User6	user6@domain.onmicrosoft.com	Member	Disabled					
User7	user7@domain.onmicrosoft.com	Member	Disabled					
User8	user8@domain.onmicrosoft.com	Member	Enabled (Conditional Access)	PhoneAppNotification		+xx 72222222		
User9	user9@domain.onmicrosoft.com	Member	Enabled (Conditional Access)	PhoneAppOTP				
User10	user10@domain.onmicrosoft.com	Member	Disabled					
User12	user12@domain.onmicrosoft.com	Member	Enabled	PhoneAppNotification		+xx 22222222		
![image](https://user-images.githubusercontent.com/97377955/148676113-25ee85fc-816d-4c87-b5f8-2a84d9e8d30b.png)

