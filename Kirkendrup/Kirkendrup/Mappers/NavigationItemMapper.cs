using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Kirkendrup.Models.HelperModels;
using Umbraco.Web;
using Umbraco.Core.Models;

namespace Kirkendrup.Mappers
{
    public static class NavigationItemMapper
    {
        /// <summary>
        /// Returns a collection of NavigationItems starting from the node provided.
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="content"></param>
        /// <returns></returns>
        public static IEnumerable<T> Map<T>(IPublishedContent content) where T: NavigationItem
        {
            List<T> navigationItems = new List<T>();
            if (content != null)
            {
                foreach (var child in content.Children)
                {
                    NavigationItem navItem = new NavigationItem() {
                        Name = child.Name,
                        Url = child.Url,
                        Children = Map<NavigationItem>(child)
                    };
                    navigationItems.Add((T)navItem);
                }
            }

            if (navigationItems.Any())
            {
                return navigationItems;
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