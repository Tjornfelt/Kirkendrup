using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Kirkendrup.Models.HelperModels;

namespace Kirkendrup.Models
{
	public class BoardMembersModel
	{
		public string Header { get; set; }
		public IHtmlString BodyText { get; set; }
        public IEnumerable<BoardMember> BoardMembers { get; set; }
	}
}