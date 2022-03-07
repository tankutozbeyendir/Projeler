using System.ComponentModel.DataAnnotations;

namespace Bosphorus.Entity
{
    public class Team
    {
        [Key]
        public int TeamID { get; set; }
        [Required]
        [MaxLength(100)]
        public string TeamDepartmant { get; set; }
        [Required]
        [MaxLength(100)]
        public string TeamFullName { get; set; }
        [Required]
        [MaxLength(100)]
        public string TeamPassword { get; set; }

        public string TeamImage { get; set; }
        public virtual News news { get; set; }
    }
}
