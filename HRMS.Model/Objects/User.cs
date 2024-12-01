using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace HRMS.Model.Objects;

[Table("User")]
[Index("Email", Name = "UQ__User__A9D1053489088A4E", IsUnique = true)]
public partial class User
{
    [Key]
    [Column("ID")]
    public int Id { get; set; }

    [StringLength(300)]
    public string Name { get; set; } = null!;

    [StringLength(300)]
    public string Email { get; set; } = null!;

    [StringLength(30)]
    public string MobileNumber { get; set; } = null!;

    public byte[] PasswordHash { get; set; } = null!;

    public byte[] PasswordSalt { get; set; } = null!;

    [Column(TypeName = "datetime")]
    public DateTime? CreatedDate { get; set; }

    [Column(TypeName = "datetime")]
    public DateTime? UpdatedDate { get; set; }

    public bool? IsApproved { get; set; }

    public bool? IsActive { get; set; }

    [InverseProperty("User")]
    public virtual ICollection<Notification> Notifications { get; set; } = new List<Notification>();

    [InverseProperty("CreatedBy")]
    public virtual ICollection<Test> TestCreatedBies { get; set; } = new List<Test>();

    [InverseProperty("User")]
    public virtual ICollection<Test> TestUsers { get; set; } = new List<Test>();
}
