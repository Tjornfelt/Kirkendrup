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
    public class PrivateAreaController : MasterController
    {
        //
        // GET: /FrontPage/

        public ActionResult PrivateArea(RenderModel renderModel)
        {
            var model = new PrivateAreaModel();
            
            if(User.Identity.IsAuthenticated)
            {
                model.Header = CurrentPage.GetPropertyValue<string>("privateHeader");
                model.BodyText = CurrentPage.GetPropertyValue<IHtmlString>("privateBodyText");
                model.IsAuthorized = true;
            }
            else
            {
                model.Header = CurrentPage.GetPropertyValue<string>("publicHeader");
                model.BodyText = CurrentPage.GetPropertyValue<IHtmlString>("publicBodyText");
                model.IsAuthorized = false;
            }

            return View(model);
        }
    }
}
