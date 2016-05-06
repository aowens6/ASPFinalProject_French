using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace ASPFinal_aowens6.Models
{
    public class User
    {
        //user description info
        [Key]
        public int id { get; set; }
        private string firstName;
        private string lastName;
        private string email;
        private string username;
      
        //progress information
        
        public int score = 0;
        public int level = 1;

        //default constructor
        public User()
        {
            
        }

        public string FirstName
        {
            get
            { 
                return firstName;
            }
            set 
            { 
                firstName = value; 
            }
        }

        public string LastName
        {
            get 
            { 
                return lastName; 
            }
            set 
            { 
                lastName = value; 
            }
        }

        public string Email
        {
            get 
            { 
                return email; 
            }
            set 
            { 
                email = value; 
            }
        }

        public string Username
        {
            get 
            { 
                return username; 
            }
            set 
            {
                username = value; 
            }
        }
    }
}