using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Kirkendrup.Models.HelperModels
{
    public class BoardMember
    {
        public Image photo { get; set; }
        public string Title { get; set; }
        public string Name { get; set; }
        public string ExtraInfo { get; set; }
        public string Email { get; set; }
    }
}