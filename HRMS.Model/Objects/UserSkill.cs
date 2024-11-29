using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace HRMS.Model.Objects;

[Keyless]
[Table("UserSkill")]
public partial class UserSkill
{
    [Column("UserID")]
    public int UserId { get; set; }

    [Column("SkillID")]
    public int SkillId { get; set; }

    [ForeignKey("SkillId")]
    public virtual Skill Skill { get; set; } = null!;

    [ForeignKey("UserId")]
    public virtual User User { get; set; } = null!;
}
