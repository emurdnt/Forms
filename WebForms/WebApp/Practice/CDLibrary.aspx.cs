using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApp.FormSamples.Classes;

namespace WebApp.Practice
{
    public partial class CDLibrary : System.Web.UI.Page
    {
        private static List<Music> Playlist =
       new List<Music>();

        protected void Page_Load(object sender, EventArgs e)
        {
            MusicGridView.DataSource = Playlist;
            MusicGridView.DataBind();
        }
    }
}