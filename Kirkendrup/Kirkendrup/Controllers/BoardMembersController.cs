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
    public class BoardMembersController : MasterController
    {
        //
        // GET: /FrontPage/

        public ActionResult BoardMembers(RenderModel renderModel)
        {
            var model = new BoardMembersModel() {
                Header = CurrentPage.GetPropertyValue<string>("header"),
                BodyText = CurrentPage.GetPropertyValue<IHtmlString>("bodyText"),
                BoardMembers = GetBoardMembers()
                
            };

            return View(model);
        }

        private IEnumerable<BoardMember> GetBoardMembers()
        {
            var members = CurrentPage.Children.Where(x => x.IsDocumentType("BoardMember"));

            List<BoardMember> lstMembers = new List<BoardMember>();

            foreach (var member in members)
            {
                var image = member.GetPropertyValue<string>("image");
                IPublishedContent imgObj = null;
                if (image != null)
                {
                    imgObj = Umbraco.TypedMedia(image);
                }

                BoardMember m = new BoardMember() {
                    photo = imgObj != null ? ImageMapper.Map<Image>(imgObj) : null,
                    Name = member.GetPropertyValue<string>("name"),
                    Title = member.GetPropertyValue<string>("memberTitle"),
                    ExtraInfo = member.GetPropertyValue<string>("extraInfo"),
                    Email = member.GetPropertyValue<string>("email")
                };
                lstMembers.Add(m);
            }

            if (lstMembers.Any())
            {
                return lstMembers;
            }
            return null;
        }
    }
}
