using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace HRMS.Model.Objects;

[Keyless]
[Table("UserProfile")]
public partial class UserProfile
{
    [Column("UserID")]
    public int UserId { get; set; }

    [Column("ExperienceLevelID")]
    public int? ExperienceLevelId { get; set; }

    public double? TotalExperience { get; set; }

    [StringLength(300)]
    public string? Company { get; set; }

    [StringLength(100)]
    public string? Designation { get; set; }

    [ForeignKey("ExperienceLevelId")]
    public virtual ExperienceLevel? ExperienceLevel { get; set; }

    [ForeignKey("UserId")]
    public virtual User User { get; set; } = null!;
}
