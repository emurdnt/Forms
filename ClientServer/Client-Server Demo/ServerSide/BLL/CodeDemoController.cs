using DataEntities;
using ServerSide.DAL;
using System.Collections.Generic;
using System.Linq;


namespace ServerSide.BLL
{
    public class CodeDemoController
    {
        public List<CodeDemo> ListAllDemos()
        {
            using (var context = new DemoLibraryContext())
            {
                return context.CodeDemos.ToList();
            }
        }
    }
}
