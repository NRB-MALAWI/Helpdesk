using Final_Helpdesk_v1.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Final_Helpdesk_v1.Admin
{
    public partial class ManageQueries : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                Get_Data();
                Get_Technicians();
            }
        }
        public void Get_Data()
        {
            try
            {
                using (HelpdeskEntities _helpdesk = new HelpdeskEntities())
                {
                    GridView1.DataSource = (from q in _helpdesk.Queries
                                            join l in _helpdesk.Locations
                                            on q.Location_id equals l.Location_id
                                            join lt in _helpdesk.Location_Type
                                            on l.Location_Type_id equals lt.Location_Type_id
                                            where q.Status == "OPEN"

                                            select new
                                            {
                                                q.Query_id,
                                                lt.Location_Type_Name,
                                                l.location_name,
                                                q.Query_Description,
                                                q.Created_by,
                                                q.Date_Created,
                                                q.Status
                                            }
                           ).ToList();
                    GridView1.DataBind();
                }
            }
            catch
            {
                //Response.Write()
            }
        }
        void Get_Technicians()
        {
            try
            {
                using (HelpdeskEntities _helpdesk = new HelpdeskEntities())
                {
                    techniciansDropdown.DataSource = (from d in _helpdesk.Users
                                                    where d.Role_id == 2
                                                    select new { d.User_id, d.Username }).ToList().OrderBy(d => d.Username);
                    techniciansDropdown.DataBind();
                    techniciansDropdown.Items.Insert(0, new ListItem("Choose Technician"));
                    techniciansDropdown.SelectedIndex = 0;
                }
            }
            catch
            {
                throw new Exception("");
            }
        }
    }
}