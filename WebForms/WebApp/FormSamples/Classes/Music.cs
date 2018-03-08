using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApp.FormSamples.Classes
{
    public class Music
    {
        public long ISBN { get; set; }
        public string Title { get; set; }
        public string Artist { get; set; }
        public int Year { get; set; }
        public int NumberOfTracks { get; set; }
    }
}