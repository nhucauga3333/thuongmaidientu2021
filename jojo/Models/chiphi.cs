//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace jojo.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class chiphi
    {
        public int id { get; set; }
        public int idloaichiphi { get; set; }
        public System.DateTime ngay { get; set; }
        public int chiphi1 { get; set; }
        public string active { get; set; }
    
        public virtual loaichiphi loaichiphi { get; set; }
    }
}
