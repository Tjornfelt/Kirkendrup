﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Kirkendrup.Models.HelperModels;

namespace Kirkendrup.Models
{
	public class FrontPageModel
	{
		public string Header { get; set; }
		public IHtmlString BodyText { get; set; }
        public Image Image { get; set; }
        public IEnumerable<NewsItem> FeaturedNews { get; set; }
	}
}