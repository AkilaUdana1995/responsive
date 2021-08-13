using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace responsive.Models
{
    public class DocDTO
    {
        public int ID { get; set; }
        public String NameOfDoc { get; set; }
        public String NameOfClinic { get; set; }
        public String LocatedMainCity { get; set; }
        public String ClinicFullAddress { get; set; }
        public String TpNumber { get; set; }
        public String EmailAddress { get; set; }
        public String AvailableTime { get; set; }
        public String ReadyToHaveSpecialAppoint { get; set; }
        public String ClinicOwnerEmail { get; set; }
        public String MyLocation { get; set; }
    }
}