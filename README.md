**Get MFA Details for All the users in Office 365 / Azure AD**
******************************************************************

Current in Azure AD / Office 365 we do not have the option to directly download the MFA registration details for all the users. This PowerShell script will help in fetching the MFA details of all the users present in Azure AD/Office 365.

In the Output file we will see the details in Following format:
*************************************************************************************
Test
![image](https://user-images.githubusercontent.com/97377955/148676113-25ee85fc-816d-4c87-b5f8-2a84d9e8d30b.png)


<!-- wp:paragraph -->
<p>Testing this Page</p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":27,"sizeSlug":"large","linkDestination":"none"} -->
<figure class="wp-block-image size-large"><img src="https://anshul959509958.files.wordpress.com/2022/01/mac.png?w=455" alt="" class="wp-image-27"/></figure>
<!-- /wp:image -->

<!-- wp:code -->
<pre class="wp-block-code"><code>Connect-MsolService</code></pre>
<!-- /wp:code -->