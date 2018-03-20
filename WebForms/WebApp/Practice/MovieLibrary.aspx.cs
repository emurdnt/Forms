using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApp.FormSamples.Classes;

namespace WebApp.Practice
{
    public partial class MovieLibrary : System.Web.UI.Page
    {
        private List<Movies> Netflix = new List<Movies>();
        protected void Page_Load(object sender, EventArgs e)
        {
            MovieGridView.DataSource = Netflix;
            MovieGridView.DataBind();
        }

        protected void Add_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                MessageLabel.Text = "Movie added.";

                Movies NewMovie = new Movies();
                NewMovie.Title = MovieTitle.Text;
                NewMovie.Year = int.Parse(Year.Text);
                NewMovie.Media = Media.SelectedValue;
                NewMovie.Rating = Rating.SelectedValue;
                NewMovie.ISBN = long.Parse(Barcode.Text);

                Netflix.Add(NewMovie);

                MovieGridView.DataSource = Netflix;
                MovieGridView.DataBind();


            }
        }
    }
}