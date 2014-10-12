using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Kirkendrup.Models.HelperModels;

namespace Kirkendrup.Models
{
	public class NewsPageModel
	{
        public IEnumerable<NewsItem> NewsItems { get; set; }
	}
}