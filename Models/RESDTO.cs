using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace responsive.Models
{
    public class RESDTO
    {
        //public int id { get; set; }
        //public string name { get; set; }
        //public int age { get; set; }


        public int RESId { get; set; }
        public String OwnerName { get; set; }
        public String PetName { get; set; }
        public String Breed { get; set; }
        //public String Gender { get; set; }
        public String Email { get; set; }
        public int Phone { get; set; }
        public string username { get; set; }
        public string password { get; set; }

        public string EnterSendersNumber { get; set; }
        public string EnterMessage { get; set; }

        public string pickUsername { get; set; }
        public string EnterPassword { get; set; }
        public string ReEnterPassWord { get; set; }

        public string ViewSMS { get; set; }






    }
}