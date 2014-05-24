using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Kirkendrup.Models;
using Umbraco.Web.Models;
using Umbraco.Web;

namespace Kirkendrup.Controllers
{
    public class FrontPageController : MasterController
    {
        //
        // GET: /FrontPage/

        public ActionResult FrontPage(RenderModel renderModel)
        {
            var model = new FrontPageModel() {
                Header = CurrentPage.GetPropertyValue<string>("header"),
                BodyText = CurrentPage.GetPropertyValue<IHtmlString>("bodyText")
            
            };

            return View(model);
        }
    }
}
