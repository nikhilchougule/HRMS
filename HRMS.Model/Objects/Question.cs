using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace HRMS.Model.Objects;

[Table("Question")]
public partial class Question
{
    [Key]
    [Column("ID")]
    public int Id { get; set; }

    public string Name { get; set; } = null!;

    [Column("TestCategoryID")]
    public int TestCategoryId { get; set; }

    [Column("QuestionTypeID")]
    public int? QuestionTypeId { get; set; }

    [Column("ExperienceLevelID")]
    public int? ExperienceLevelId { get; set; }

    public bool? IsActive { get; set; }

    [Column(TypeName = "datetime")]
    public DateTime? CreatedDate { get; set; }

    [Column(TypeName = "datetime")]
    public DateTime? UpdatedDate { get; set; }

    [ForeignKey("ExperienceLevelId")]
    [InverseProperty("Questions")]
    public virtual ExperienceLevel? ExperienceLevel { get; set; }

    [InverseProperty("Question")]
    public virtual ICollection<Option> Options { get; set; } = new List<Option>();

    [ForeignKey("QuestionTypeId")]
    [InverseProperty("Questions")]
    public virtual QuestionType? QuestionType { get; set; }

    [ForeignKey("TestCategoryId")]
    [InverseProperty("Questions")]
    public virtual TestCategory TestCategory { get; set; } = null!;

    [InverseProperty("Question")]
    public virtual ICollection<TestDetail> TestDetails { get; set; } = new List<TestDetail>();
}
