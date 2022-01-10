Get MFA Details for All the users in Office 365 / Azure AD

<!-- wp:paragraph -->
<p>By default, both Microsoft 365 and Office 365 support MFA for user accounts using:</p>
<!-- /wp:paragraph -->

<!-- wp:list -->
<ul><li>A text message sent to a phone that requires the user to type a verification code.</li><li>A phone call.</li><li>The Microsoft Authenticator smart phone app.</li></ul>
<!-- /wp:list -->

<!-- wp:paragraph -->
<p> There are multiple ways in which you can enable MFA for Microsoft 365 and Office 365:</p>
<!-- /wp:paragraph -->

<!-- wp:list -->
<ul><li>With security defaults</li><li>With Conditional Access policies</li><li>For each individual user account</li></ul>
<!-- /wp:list -->

<!-- wp:paragraph -->
<p>Current in Azure AD / Office 365 we do not have the option to directly download the MFA registration details for all the users. This PowerShell script will help in fetching the MFA details of all the users present in Azure AD/Office 365.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>In the Output file we will see the details in Following format:</p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":32,"width":829,"height":117,"sizeSlug":"large","linkDestination":"none"} -->
<figure class="wp-block-image size-large is-resized"><img src="https://anshul959509958.files.wordpress.com/2022/01/148676113-25ee85fc-816d-4c87-b5f8-2a84d9e8d30b.png?w=1024" alt="" class="wp-image-32" width="829" height="117"/></figure>
<!-- /wp:image -->