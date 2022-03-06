using System.ComponentModel.DataAnnotations;

namespace Bosphorus.Entity
{
    public class Services
    {
        [Key]
        public int ServiceID { get; set; }
        [MaxLength(100)]
        public string ServiceTitle { get; set; }
        [MaxLength(200)]
        public string ServiceDescription { get; set; }
    }
}
