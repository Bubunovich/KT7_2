//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace MasterPol.Data
{
    using System;
    using System.Collections.Generic;
    
    public partial class Products_import
    {
        public int id { get; set; }
        public Nullable<int> Products_type { get; set; }
        public Nullable<int> Products_name { get; set; }
        public Nullable<int> Articl { get; set; }
        public string MinCost { get; set; }
    
        public virtual Products_import_name Products_import_name { get; set; }
        public virtual Products_import_type Products_import_type { get; set; }
    }
}
