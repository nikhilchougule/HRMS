using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace HRMS.Model.Objects;

[Table("Notification")]
public partial class Notification
{
    [Key]
    [Column("ID")]
    public int Id { get; set; }

    [Column("NotificationTypeID")]
    public int NotificationTypeId { get; set; }

    [Column("UserID")]
    public int UserId { get; set; }

    [Column(TypeName = "datetime")]
    public DateTime? CreatedDate { get; set; }

    public bool? IsActive { get; set; }

    [Column("URL")]
    [StringLength(200)]
    public string? Url { get; set; }

    [InverseProperty("NotificationType")]
    public virtual ICollection<Notification> InverseNotificationType { get; set; } = new List<Notification>();

    [ForeignKey("NotificationTypeId")]
    [InverseProperty("InverseNotificationType")]
    public virtual Notification NotificationType { get; set; } = null!;

    [ForeignKey("UserId")]
    [InverseProperty("Notifications")]
    public virtual User User { get; set; } = null!;
}
