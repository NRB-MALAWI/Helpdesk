using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Final_HelpDesk.Models;

namespace Final_HelpDesk.Admin
{
    public partial class AddNewQuery : System.Web.UI.Page
    {
        //string ConnString = ConfigurationManager.ConnectionStrings["NRBHelpDesk"].ToString();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                Get_Location();
            }
        }
        void Get_Location()
        {
            using (HelpdeskEntities _helpdesk = new HelpdeskEntities())
            {
                locationtypeselects.DataSource = (from lt in _helpdesk.Location_Type
                                                   select new { lt.Location_Type_id, lt.Location_Type_Name }).ToList().OrderBy(lt => lt.Location_Type_Name);

                

                //LocationNameDropdown.DataBind();
                locationtypeselects.DataBind();

                locationtypeselects.Items.Insert(0, new ListItem("Choose Location Type"));
                //LocationNameDropdown.Items.Insert(0, new ListItem("Choose Location Name"));
                locationtypeselects.SelectedIndex = 0;
                //LocationNameDropdown.SelectedIndex = 0;

                //_helpdesk.Districts.Where(d => d.Name == DistrictDropdown.Text).SingleOrDefault();
            }
        }

        protected void locationtypeselects_SelectedIndexChanged(object sender, EventArgs e)
        {
            int type = int.Parse(locationtypeselects.Text);
            int dis = int.Parse(UserLogin.District);
            using (HelpdeskEntities _helpdesk = new HelpdeskEntities())
            {
                Locationnameseletcs.DataSource = (from l in _helpdesk.Locations.Where(d => d.Location_Type_id == type && d.District_id == dis)
                                                   select new { l.Location_id, l.location_name }).ToList().OrderBy(l => l.location_name);

                Locationnameseletcs.DataBind();
                Locationnameseletcs.Items.Insert(0, new ListItem("Choose Location Name"));
                Locationnameseletcs.SelectedIndex = 0;
            }
        }
    }
}