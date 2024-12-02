using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;

namespace HRMS.Model.Objects;

public partial class HRMSDBContext : DbContext
{
    public HRMSDBContext()
    {
    }

    public HRMSDBContext(DbContextOptions<HRMSDBContext> options)
        : base(options)
    {
    }

    public virtual DbSet<ExperienceLevel> ExperienceLevels { get; set; }

    public virtual DbSet<Notification> Notifications { get; set; }

    public virtual DbSet<NotificationType> NotificationTypes { get; set; }

    public virtual DbSet<Option> Options { get; set; }

    public virtual DbSet<Question> Questions { get; set; }

    public virtual DbSet<QuestionOption> QuestionOptions { get; set; }

    public virtual DbSet<QuestionType> QuestionTypes { get; set; }

    public virtual DbSet<Role> Roles { get; set; }

    public virtual DbSet<Skill> Skills { get; set; }

    public virtual DbSet<Test> Tests { get; set; }

    public virtual DbSet<TestCategory> TestCategories { get; set; }

    public virtual DbSet<TestDetail> TestDetails { get; set; }

    public virtual DbSet<TestDetailQuestionOption> TestDetailQuestionOptions { get; set; }

    public virtual DbSet<TestResult> TestResults { get; set; }

    public virtual DbSet<User> Users { get; set; }

    public virtual DbSet<UserProfile> UserProfiles { get; set; }

    public virtual DbSet<UserRole> UserRoles { get; set; }

    public virtual DbSet<UserSkill> UserSkills { get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https://go.microsoft.com/fwlink/?linkid=2131148. For more guidance on storing connection strings, see https://go.microsoft.com/fwlink/?LinkId=723263.
        => optionsBuilder.UseSqlServer("Data Source=LENOVO-NIK\\SQLEXPRESS2022;Initial Catalog=HRMS;Trusted_Connection=True;TrustServerCertificate=True;");

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<ExperienceLevel>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK__Experien__3214EC271D130A93");
        });

        modelBuilder.Entity<Notification>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK__Notifica__3214EC275D8B89E5");

            entity.HasOne(d => d.NotificationType).WithMany(p => p.InverseNotificationType)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_Notifiction_NotificationType");

            entity.HasOne(d => d.User).WithMany(p => p.Notifications)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_Notifiction_User");
        });

        modelBuilder.Entity<NotificationType>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK__Notifica__3214EC27BC12BF61");
        });

        modelBuilder.Entity<Option>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK__Option__3214EC27AD36AD1F");

            entity.HasOne(d => d.Question).WithMany(p => p.Options)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_Option_Question");
        });

        modelBuilder.Entity<Question>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK__Question__3214EC274A4B6830");

            entity.Property(e => e.CreatedDate).HasDefaultValueSql("(getdate())");

            entity.HasOne(d => d.ExperienceLevel).WithMany(p => p.Questions).HasConstraintName("FK_Question_ExperienceLevel");

            entity.HasOne(d => d.QuestionType).WithMany(p => p.Questions).HasConstraintName("FK_Question_QuestionType");

            entity.HasOne(d => d.TestCategory).WithMany(p => p.Questions)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_Question_TestCategory");
        });

        modelBuilder.Entity<QuestionOption>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK__Question__3214EC27049A1A38");

            entity.HasOne(d => d.Option).WithMany(p => p.QuestionOptions)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_QuestionOption_Option");

            entity.HasOne(d => d.Question).WithMany(p => p.QuestionOptions)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_QuestionOption_Question");
        });

        modelBuilder.Entity<QuestionType>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK__Question__3214EC27A3F0D120");
        });

        modelBuilder.Entity<Role>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK__Role__3214EC27933C4572");
        });

        modelBuilder.Entity<Skill>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK__Skill__3214EC279CF48668");
        });

        modelBuilder.Entity<Test>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK__Test__3214EC2746B89D80");

            entity.Property(e => e.CreatedDate).HasDefaultValueSql("(getdate())");

            entity.HasOne(d => d.CreatedBy).WithMany(p => p.TestCreatedBies)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_Test_CreatedBy_User");

            entity.HasOne(d => d.User).WithMany(p => p.TestUsers)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_Test_User");
        });

        modelBuilder.Entity<TestCategory>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK__TestCate__3214EC27FADD1598");
        });

        modelBuilder.Entity<TestDetail>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK__TestDeta__3214EC2773F83814");

            entity.Property(e => e.CreatedDate).HasDefaultValueSql("(getdate())");
            entity.Property(e => e.Score).HasDefaultValue(0.0);
            entity.Property(e => e.TestResultId).HasDefaultValue(1);

            entity.HasOne(d => d.TestCategory).WithMany(p => p.TestDetails)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_TestDetail_TestCategory");

            entity.HasOne(d => d.Test).WithMany(p => p.TestDetails)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_TestDetail_Test");

            entity.HasOne(d => d.TestResult).WithMany(p => p.TestDetails)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_TestDetail_TestResult");
        });

        modelBuilder.Entity<TestDetailQuestionOption>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK__TestDeta__3214EC27F02625EB");

            entity.Property(e => e.OptionId).HasDefaultValue(0);

            entity.HasOne(d => d.Option).WithMany(p => p.TestDetailQuestionOptions).HasConstraintName("FK_TestDetailQuestionOption_Option");

            entity.HasOne(d => d.Question).WithMany(p => p.TestDetailQuestionOptions)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_TestDetailQuestionOption_Question");

            entity.HasOne(d => d.TestDetail).WithMany(p => p.TestDetailQuestionOptions)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_TestDetailQuestionOption_TestDetail");
        });

        modelBuilder.Entity<TestResult>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK__TestResu__3214EC273458CCE9");
        });

        modelBuilder.Entity<User>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK__User__3214EC275CDAD028");

            entity.Property(e => e.CreatedDate).HasDefaultValueSql("(getdate())");
            entity.Property(e => e.IsActive).HasDefaultValue(false);
            entity.Property(e => e.IsApproved).HasDefaultValue(false);
        });

        modelBuilder.Entity<UserProfile>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK__UserProf__3214EC276E5441A5");

            entity.HasOne(d => d.ExperienceLevel).WithMany(p => p.UserProfiles).HasConstraintName("FK_UserProfile_ExperienceLevel");

            entity.HasOne(d => d.User).WithMany(p => p.UserProfiles)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_UserProfile_User");
        });

        modelBuilder.Entity<UserRole>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK__UserRole__3214EC2713C379DA");

            entity.HasOne(d => d.Role).WithMany(p => p.UserRoles)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_UserRole_Role");

            entity.HasOne(d => d.User).WithMany(p => p.UserRoles)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_UserRole_User");
        });

        modelBuilder.Entity<UserSkill>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK__UserSkil__3214EC27FCD92BE5");

            entity.HasOne(d => d.Skill).WithMany(p => p.UserSkills)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_UserSkill_Skill");

            entity.HasOne(d => d.User).WithMany(p => p.UserSkills)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_UserSkill_User");
        });

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}
