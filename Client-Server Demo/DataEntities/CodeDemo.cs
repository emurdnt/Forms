using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace DataEntities
{
    //Since this is the <T> in dbSet<t> of our demolibraryContext,
    //the properties of this class effectively act as the "colums of 
    //the database table.
    [Table("CodeDemos")]//<---- This is called an "Attribute" used to decorate classes
    public class CodeDemo
    {
        public int CodeDemoID { get; set; } //EF assumed this is the primary key  and assumed that this is an identity. Because it had
        //the same name as the class and it had ID at the end.
        [Required]//the following property will be mapped as a not null column
        [StringLength(25)] // the property's database column will be a varchar(25)
        public string Name { get; set; }
        [StringLength(300)]
        public string Description { get; set; }
    }
}
