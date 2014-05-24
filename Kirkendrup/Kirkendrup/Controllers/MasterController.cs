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

namespace Kirkendrup.Controllers
{
    public class MasterController : RenderMvcController
    {
        //
        // GET: /Master/

        protected override ViewResult View(string viewName, string masterName, object model)
        {

			//Move all "Global content" into the viewbag - it shouldnt be accessible in the model
			
            var frontPage = CurrentPage.AncestorOrSelf(1);

			var global = new GlobalModel();
            global.MainMenu = NavigationItemMapper.Map<NavigationItem>(frontPage);
            ViewBag.Global = global;
            /*
            global.isFrontpage = CurrentPage.Id == rootNode.Id;
			global.GoogleAnalytics = GoogleAnalyticsMapper.Map<GoogleAnalyticsModel>(CurrentPage, Umbraco);
			global.Breadcrumb = NavigationItemMapper.Map(new List<NavigationItemModel>(), CurrentPage.AncestorsOrSelf(),
				CurrentPage, Umbraco);
			global.TopMenu = NavigationItemMapper.Map(new List<NavigationItemModel>(), CurrentPage.AncestorsOrSelf(1),
				CurrentPage, Umbraco);
			global.InShopContext = ShopHelper.InShopContext(CurrentPage);
			global.Seo = SeoMapper.Map<SeoModel>(CurrentPage, global.InShopContext, Umbraco);
			SetLanguageDropdown(global, rootNode);
			global.SocialMetaData = GetSocialMetaData(global, CurrentPage, rootNode);
			ViewBag.Global = global;
			*/

			return base.View(viewName, masterName, model);
        }
    }
}
