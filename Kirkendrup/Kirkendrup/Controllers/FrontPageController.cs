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
using Umbraco.Core.Models;

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
                BodyText = CurrentPage.GetPropertyValue<IHtmlString>("bodyText"),
                Image = GetImage(),
                FeaturedNews = NewsItemMapper.Map<NewsItem>(CurrentPage.Children.FirstOrDefault(x => x.IsDocumentType("NewsPage")))
            
            };

            return View(model);
        }

        private Image GetImage()
        {
            string imageId = CurrentPage.GetPropertyValue<string>("image");

            if(!string.IsNullOrWhiteSpace(imageId))
            {
                IPublishedContent image = Umbraco.TypedMedia(imageId);

                if(image != null)
                {
                    return ImageMapper.Map<Image>(image);
                }
            }
            return null;            
        }
    }
}
