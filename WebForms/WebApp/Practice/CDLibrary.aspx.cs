using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApp.FormSamples.Classes;

namespace WebApp.Practice
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        private static List<Music> MusicCollection = new List<Music>();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //Tell my GridView to get its data from the Registrations field.
               MusicGridView.DataSource = MusicCollection;
                // Tell my GridView to loop through the Data and populate the GridView.
                MusicGridView.DataBind();


            }
        }
    }
}