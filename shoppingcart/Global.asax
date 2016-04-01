<%@ Application Language="C#" %>

<script runat="server">

    void Application_Start(object sender, EventArgs e) 
    {
        // Code that runs on application startup

    }
    
    void Application_End(object sender, EventArgs e) 
    {
        //  Code that runs on application shutdown

    }
        
    void Application_Error(object sender, EventArgs e) 
    { 
        // Code that runs when an unhandled error occurs

    }

    void Session_Start(object sender, EventArgs e) 
    {
        // Code that runs when a new session is started

    }

    void Session_End(object sender, EventArgs e) 
    {
        // Code that runs when a session ends. 
        // Note: The Session_End event is raised only when the sessionstate mode
        // is set to InProc in the Web.config file. If session mode is set to StateServer 
        // or SQLServer, the event is not raised.

    }
    void Profile_OnMigrateAnonymous(object sender, ProfileMigrateEventArgs e)
    {
        // get the profile for the anonymous user
        ProfileCommon anonProfile = Profile.GetProfile(e.AnonymousID);

        // if they have a shopping cart, then migrate that to the authenticated user
        if (anonProfile.Cart != null)
        {
            if (Profile.Cart == null)
                Profile.Cart = new shop.ShoppingCart();

            Profile.Cart.Items.AddRange(anonProfile.Cart.Items);

            anonProfile.Cart = null;
        }

        ProfileManager.DeleteProfile(e.AnonymousID);
        AnonymousIdentificationModule.ClearAnonymousIdentifier();
    }
</script>
