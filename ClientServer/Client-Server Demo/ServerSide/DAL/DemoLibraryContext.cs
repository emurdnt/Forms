using DataEntities;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ServerSide.DAL
{
    internal class DemoLibraryContext: DbContext
    {
        public DemoLibraryContext() : base ("DeFaultConnection")
        {

        }

        public DBNull<CodeDemo> CodeDemos { get; set; }
    }
}
