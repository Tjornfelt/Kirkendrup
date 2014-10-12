using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Umbraco.Web.Mvc;
using Kirkendrup.Models;
using Kirkendrup.Mappers;
using Kirkendrup.Models.HelperModels;
using Umbraco.Web;
using System.Web.Security;

namespace Kirkendrup.Controllers
{
    public class MemberLoginSurfaceController : Umbraco.Web.Mvc.SurfaceController
    {
        /*
        [HttpGet]
        [ActionName("MemberLogin")]
        public ActionResult MemberLoginGet()
        {
            return PartialView("MemberLogin", new MemberLoginModel());
        }*/

        // The MemberLogout Action signs out the user and redirects to the site home page:

        [HttpPost]
        public ActionResult MemberLogout()
        {
            Session.Clear();
            FormsAuthentication.SignOut();
            return RedirectToCurrentUmbracoPage();
        }

        // The MemberLoginPost Action checks the entered credentials using the standard Asp Net membership provider and redirects the user to the same page. Either as logged in, or with a message set in the TempData dictionary:

        [HttpPost]
        [ActionName("MemberLogin")]
        public ActionResult MemberLoginPost(string username, string password)
        {
            if (Membership.ValidateUser(username, password))
            {
                FormsAuthentication.SetAuthCookie(username, true);
                return RedirectToCurrentUmbracoPage();

            }
            else
            {
                TempData["Status"] = "Invalid username or password";
                return RedirectToCurrentUmbracoPage();
            }
        }
    }
}
