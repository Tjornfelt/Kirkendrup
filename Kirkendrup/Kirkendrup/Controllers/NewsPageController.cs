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
    public class NewsPageController : MasterController
    {
        //
        // GET: /FrontPage/

        public ActionResult NewsPage(RenderModel renderModel)
        {
            var model = new NewsPageModel() {
                NewsItems = NewsItemMapper.Map<NewsItem>(CurrentPage)
            
            };

            return View(model);
        }
    }
}
