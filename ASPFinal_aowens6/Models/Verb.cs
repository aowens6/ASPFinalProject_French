using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace ASPFinal_aowens6.Models
{
    public class Verb
    {
        [Key]
        public int id { get; set; }
        public string infinitive { get; set; }
        public string je { get; set; }
        public string tu { get; set; }
        public string ilElleOn { get; set; }
        public string nous { get; set; }
        public string vous { get; set; }
        public string ilsElles { get; set; }

        public Verb()
        {

        }

    }
}