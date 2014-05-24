using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Kirkendrup.Models.HelperModels;

namespace Kirkendrup.Models
{
    public class GlobalModel
    {
        public IEnumerable<NavigationItem> MainMenu { get; set; }
    }
}