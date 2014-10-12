using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Kirkendrup.Models.HelperModels;
using Umbraco.Web;
using Umbraco.Core.Models;

namespace Kirkendrup.Mappers
{
    public static class NewsItemMapper
    {
        /// <summary>
        ///    Generates a list of news items from the node provided.
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="currentPage"></param>
        /// <returns></returns>
        public static IEnumerable<T> Map<T>(IPublishedContent currentPage) where T: NewsItem
        {
            if (currentPage != null)
            {
                var newsItems = currentPage.Children.Where(x => x.IsDocumentType("NewsItem"));

                if (newsItems != null && newsItems.Any())
                {
                    List<T> newsItemsList = new List<T>();

                    foreach (var item in newsItems)
                    {
                        NewsItem newsItem = new NewsItem()
                        {
                            Header = item.GetPropertyValue<string>("header"),
                            BodyText = item.GetPropertyValue<IHtmlString>("bodyText"),
                            Date = item.GetPropertyValue<DateTime>("date")
                        };
                        newsItemsList.Add((T)newsItem);
                    }

                    if (newsItemsList.Any())
                    {
                        return newsItemsList;
                    }
                }
            }
            return null;
        }
    }
}