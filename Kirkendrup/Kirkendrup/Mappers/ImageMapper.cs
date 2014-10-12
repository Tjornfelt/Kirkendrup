using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Kirkendrup.Models.HelperModels;
using Umbraco.Web;
using Umbraco.Core.Models;

namespace Kirkendrup.Mappers
{
    public static class ImageMapper
    {
        /// <summary>
        /// 
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="content"></param>
        /// <returns></returns>
        public static T Map<T>(IPublishedContent content) where T: Image
        {
            if (content != null)
            {
                Image img = new Image() {
                    Name = content.Name,
                    Url = content.Url
                };
                return (T)img;
            }
            return null;
        }

        /*
        /// <summary>
        /// Returns a single NavigationItem mapped from the node provided.
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="content"></param>
        /// <returns></returns>
        public static T MapSingle<T>(IPublishedContent content) where T : NavigationItem
        {
            if (content != null)
            {
                NavigationItem navItem = new NavigationItem{
                    Name = content.Name,
                    Url = content.Url
                };
                return (T)navItem;
            }
            return null;
        }
         */
    }
}