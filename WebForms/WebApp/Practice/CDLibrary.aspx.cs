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

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                MessageLabel.Text = "CD added to the playlist.";
                // pull information from the form, and create a Registration object

                Music newMusic = new Music();
                newMusic.ISBN = long.Parse( Barcode.Text);
                newMusic.Artist = Artist.Text;
                newMusic.Title = CDTitle.Text;
                newMusic.Year = int.Parse(Year.Text);
                newMusic.NumberOfTracks = int.Parse(NumberOfTracks.Text);
                

                // Add the student to the list'
                Playlist.Add(newMusic);

                // Show the data in the GridView
                MusicGridView.DataSource = Playlist;
                MusicGridView.DataBind();

            }
        }
    }
}