using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;


namespace ASPFinal_aowens6.Models
{
    public class FrenchDbContext : DbContext
    {
        public DbSet<User> Users { get; set; }
    }
}