using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Kirkendrup.Models.HelperModels;

namespace Kirkendrup.Models
{
	public class PrivateAreaModel
	{
		public string Header { get; set; }
		public IHtmlString BodyText { get; set; }
        public bool IsAuthorized { get; set; }
	}
}