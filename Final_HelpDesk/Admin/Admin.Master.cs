using System;
using Final_HelpDesk.Models;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Final_HelpDesk.Admin
{
    public partial class Admin : System.Web.UI.MasterPage
    {
        MessageCount _count = new MessageCount();
        protected void Page_Load(object sender, EventArgs e)
        {
            MSGCount.Text = _count.GetAllMessagesCount();
        }
    }
}