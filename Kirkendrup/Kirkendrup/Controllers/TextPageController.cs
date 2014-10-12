using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Kirkendrup.Models;
using Umbraco.Web.Models;
using Umbraco.Web;
using Kirkendrup.Models.HelperModels;
using Kirkendrup.Mappers;

namespace Kirkendrup.Controllers
{
    public class TextPageController : MasterController
    {
        //
        // GET: /FrontPage/

        public ActionResult TextPage(RenderModel renderModel)
        {
            var model = new TextPageModel() {
                Header = CurrentPage.GetPropertyValue<string>("header"),
                BodyText = CurrentPage.GetPropertyValue<IHtmlString>("bodyText")            
            };

            return View(model);
        }
    }
}
