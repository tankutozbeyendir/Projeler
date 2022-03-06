
using Microsoft.AspNetCore.Http;
using System.ComponentModel.DataAnnotations;

namespace Bosphorus.Entity
{
    public class Contact
    {
        [Key]
        public int ContactID { get; set; }
        [MaxLength(150)]
        [Required]
        public string FullName { get; set; }
        [Required]
        [MaxLength(150)]
        public string Email { get; set; }
        [Required]
        [MaxLength(50)]
        public string Subject { get; set; }
        [Required]
        [MaxLength(500)]
        public string Message { get; set; }

    }
}
