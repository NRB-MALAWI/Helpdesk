//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Final_Helpdesk_v1.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class User
    {
        public int User_id { get; set; }
        public string First_name { get; set; }
        public string Surname { get; set; }
        public Nullable<long> District_id { get; set; }
        public Nullable<int> Telephone { get; set; }
        public string Username { get; set; }
        public string Email { get; set; }
        public Nullable<int> Role_id { get; set; }
        public Nullable<System.DateTime> Date_Created { get; set; }
        public byte[] Password { get; set; }
        public string Created_by { get; set; }
    }
}
