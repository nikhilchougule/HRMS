﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace HRMS.Model.Objects;

[Table("NotificationType")]
public partial class NotificationType
{
    [Key]
    [Column("ID")]
    public int Id { get; set; }

    [StringLength(300)]
    public string Name { get; set; } = null!;
}
