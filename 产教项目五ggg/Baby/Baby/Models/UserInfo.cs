//------------------------------------------------------------------------------
// <auto-generated>
//     此代码已从模板生成。
//
//     手动更改此文件可能导致应用程序出现意外的行为。
//     如果重新生成代码，将覆盖对此文件的手动更改。
// </auto-generated>
//------------------------------------------------------------------------------

namespace Baby.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class UserInfo
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public UserInfo()
        {
            this.BabyInfo = new HashSet<BabyInfo>();
            this.chat = new HashSet<chat>();
            this.Collection = new HashSet<Collection>();
            this.Commodityconcern = new HashSet<Commodityconcern>();
            this.Footprint = new HashSet<Footprint>();
            this.Problem = new HashSet<Problem>();
            this.ShoppingCart = new HashSet<ShoppingCart>();
            this.UserAddress = new HashSet<UserAddress>();
            this.UserFeedback = new HashSet<UserFeedback>();
            this.Order = new HashSet<Order>();
            this.Userintegral = new HashSet<Userintegral>();
        }
    
        public int ID { get; set; }
        public string UOpenid { get; set; }
        public string UNickname { get; set; }
        public string UPhone { get; set; }
        public string UPwd { get; set; }
        public string UHeadimg { get; set; }
        public Nullable<int> UAge { get; set; }
        public string USex { get; set; }
        public Nullable<System.DateTime> UBirthday { get; set; }
        public string Uarea { get; set; }
        public string USignature { get; set; }
        public string URealname { get; set; }
        public string Ulevel { get; set; }
        public string Uidentification { get; set; }
        public string UEmail { get; set; }
        public System.DateTime UCreatetime { get; set; }
        public bool UIsdelete { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<BabyInfo> BabyInfo { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<chat> chat { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Collection> Collection { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Commodityconcern> Commodityconcern { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Footprint> Footprint { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Problem> Problem { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ShoppingCart> ShoppingCart { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<UserAddress> UserAddress { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<UserFeedback> UserFeedback { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Order> Order { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Userintegral> Userintegral { get; set; }
    }
}
