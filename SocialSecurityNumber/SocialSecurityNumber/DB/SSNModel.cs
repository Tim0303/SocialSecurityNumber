namespace SocialSecurityNumber.DB
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class SSNModel : DbContext
    {
        public SSNModel()
            : base("name=SSNModel")
        {
        }

        public virtual DbSet<AreaCode> AreaCode { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
        }
    }
}
