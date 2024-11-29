using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace HRMS.Model.Objects;

[Table("Test")]
public partial class Test
{
    [Key]
    [Column("ID")]
    public int Id { get; set; }

    [StringLength(300)]
    public string? Name { get; set; }

    [Column("UserID")]
    public int UserId { get; set; }

    [Column(TypeName = "datetime")]
    public DateTime? StartTime { get; set; }

    [Column(TypeName = "datetime")]
    public DateTime? EndTime { get; set; }

    [Column("CreatedByID")]
    public int CreatedById { get; set; }

    [Column(TypeName = "datetime")]
    public DateTime? CreatedDate { get; set; }

    [Column(TypeName = "datetime")]
    public DateTime? UpdatedDate { get; set; }

    [ForeignKey("CreatedById")]
    [InverseProperty("TestCreatedBies")]
    public virtual User CreatedBy { get; set; } = null!;

    [InverseProperty("Test")]
    public virtual ICollection<TestDetail> TestDetails { get; set; } = new List<TestDetail>();

    [ForeignKey("UserId")]
    [InverseProperty("TestUsers")]
    public virtual User User { get; set; } = null!;
}
