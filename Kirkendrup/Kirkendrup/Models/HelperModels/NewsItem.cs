using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Kirkendrup.Models.HelperModels
{
    public class NewsItem
    {
        public DateTime Date { get; set; }
        public string Header { get; set; }
        public IHtmlString BodyText { get; set; }
    }
}