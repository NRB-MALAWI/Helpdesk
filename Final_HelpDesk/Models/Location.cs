//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Final_HelpDesk.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Location
    {
        public int Location_id { get; set; }
        public string location_name { get; set; }
        public string Created_by { get; set; }
        public Nullable<System.DateTime> Date_Created { get; set; }
        public Nullable<int> Location_Type_id { get; set; }
        public Nullable<long> District_id { get; set; }
    
        public virtual Location_Type Location_Type { get; set; }
    }
}
