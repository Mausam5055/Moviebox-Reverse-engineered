.class public final Landroidx/work/impl/model/r1$b;
.super Landroidx/room/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/model/r1;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/room/e;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lz3/e;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroidx/work/impl/model/j0;

    invoke-virtual {p0, p1, p2}, Landroidx/work/impl/model/r1$b;->d(Lz3/e;Landroidx/work/impl/model/j0;)V

    return-void
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    const-string v0, "UPDATE OR ABORT `WorkSpec` SET `id` = ?,`state` = ?,`worker_class_name` = ?,`input_merger_class_name` = ?,`input` = ?,`output` = ?,`initial_delay` = ?,`interval_duration` = ?,`flex_duration` = ?,`run_attempt_count` = ?,`backoff_policy` = ?,`backoff_delay_duration` = ?,`last_enqueue_time` = ?,`minimum_retention_duration` = ?,`schedule_requested_at` = ?,`run_in_foreground` = ?,`out_of_quota_policy` = ?,`period_count` = ?,`generation` = ?,`next_schedule_time_override` = ?,`next_schedule_time_override_generation` = ?,`stop_reason` = ?,`trace_tag` = ?,`backoff_on_system_interruptions` = ?,`required_network_type` = ?,`required_network_request` = ?,`requires_charging` = ?,`requires_device_idle` = ?,`requires_battery_not_low` = ?,`requires_storage_not_low` = ?,`trigger_content_update_delay` = ?,`trigger_max_content_delay` = ?,`content_uri_triggers` = ? WHERE `id` = ?"

    return-object v0
.end method

.method protected d(Lz3/e;Landroidx/work/impl/model/j0;)V
    .locals 5

    const-string v0, "statement"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p2, Landroidx/work/impl/model/j0;->a:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-interface {p1, v1, v0}, Lz3/e;->j(ILjava/lang/String;)V

    iget-object v0, p2, Landroidx/work/impl/model/j0;->b:Landroidx/work/WorkInfo$State;

    invoke-static {v0}, Landroidx/work/impl/model/a2;->k(Landroidx/work/WorkInfo$State;)I

    move-result v0

    const/4 v1, 0x2

    int-to-long v2, v0

    invoke-interface {p1, v1, v2, v3}, Lz3/e;->c(IJ)V

    const/4 v0, 0x3

    iget-object v1, p2, Landroidx/work/impl/model/j0;->c:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lz3/e;->j(ILjava/lang/String;)V

    const/4 v0, 0x4

    iget-object v1, p2, Landroidx/work/impl/model/j0;->d:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lz3/e;->j(ILjava/lang/String;)V

    sget-object v0, Landroidx/work/f;->b:Landroidx/work/f$b;

    iget-object v1, p2, Landroidx/work/impl/model/j0;->e:Landroidx/work/f;

    invoke-virtual {v0, v1}, Landroidx/work/f$b;->e(Landroidx/work/f;)[B

    move-result-object v1

    const/4 v2, 0x5

    invoke-interface {p1, v2, v1}, Lz3/e;->e(I[B)V

    iget-object v1, p2, Landroidx/work/impl/model/j0;->f:Landroidx/work/f;

    invoke-virtual {v0, v1}, Landroidx/work/f$b;->e(Landroidx/work/f;)[B

    move-result-object v0

    const/4 v1, 0x6

    invoke-interface {p1, v1, v0}, Lz3/e;->e(I[B)V

    const/4 v0, 0x7

    iget-wide v1, p2, Landroidx/work/impl/model/j0;->g:J

    invoke-interface {p1, v0, v1, v2}, Lz3/e;->c(IJ)V

    const/16 v0, 0x8

    iget-wide v1, p2, Landroidx/work/impl/model/j0;->h:J

    invoke-interface {p1, v0, v1, v2}, Lz3/e;->c(IJ)V

    const/16 v0, 0x9

    iget-wide v1, p2, Landroidx/work/impl/model/j0;->i:J

    invoke-interface {p1, v0, v1, v2}, Lz3/e;->c(IJ)V

    iget v0, p2, Landroidx/work/impl/model/j0;->k:I

    int-to-long v0, v0

    const/16 v2, 0xa

    invoke-interface {p1, v2, v0, v1}, Lz3/e;->c(IJ)V

    iget-object v0, p2, Landroidx/work/impl/model/j0;->l:Landroidx/work/BackoffPolicy;

    invoke-static {v0}, Landroidx/work/impl/model/a2;->a(Landroidx/work/BackoffPolicy;)I

    move-result v0

    const/16 v1, 0xb

    int-to-long v2, v0

    invoke-interface {p1, v1, v2, v3}, Lz3/e;->c(IJ)V

    const/16 v0, 0xc

    iget-wide v1, p2, Landroidx/work/impl/model/j0;->m:J

    invoke-interface {p1, v0, v1, v2}, Lz3/e;->c(IJ)V

    const/16 v0, 0xd

    iget-wide v1, p2, Landroidx/work/impl/model/j0;->n:J

    invoke-interface {p1, v0, v1, v2}, Lz3/e;->c(IJ)V

    const/16 v0, 0xe

    iget-wide v1, p2, Landroidx/work/impl/model/j0;->o:J

    invoke-interface {p1, v0, v1, v2}, Lz3/e;->c(IJ)V

    const/16 v0, 0xf

    iget-wide v1, p2, Landroidx/work/impl/model/j0;->p:J

    invoke-interface {p1, v0, v1, v2}, Lz3/e;->c(IJ)V

    iget-boolean v0, p2, Landroidx/work/impl/model/j0;->q:Z

    const/16 v1, 0x10

    int-to-long v2, v0

    invoke-interface {p1, v1, v2, v3}, Lz3/e;->c(IJ)V

    iget-object v0, p2, Landroidx/work/impl/model/j0;->r:Landroidx/work/OutOfQuotaPolicy;

    invoke-static {v0}, Landroidx/work/impl/model/a2;->i(Landroidx/work/OutOfQuotaPolicy;)I

    move-result v0

    const/16 v1, 0x11

    int-to-long v2, v0

    invoke-interface {p1, v1, v2, v3}, Lz3/e;->c(IJ)V

    invoke-virtual {p2}, Landroidx/work/impl/model/j0;->j()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x12

    invoke-interface {p1, v2, v0, v1}, Lz3/e;->c(IJ)V

    invoke-virtual {p2}, Landroidx/work/impl/model/j0;->g()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x13

    invoke-interface {p1, v2, v0, v1}, Lz3/e;->c(IJ)V

    const/16 v0, 0x14

    invoke-virtual {p2}, Landroidx/work/impl/model/j0;->h()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lz3/e;->c(IJ)V

    invoke-virtual {p2}, Landroidx/work/impl/model/j0;->i()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x15

    invoke-interface {p1, v2, v0, v1}, Lz3/e;->c(IJ)V

    invoke-virtual {p2}, Landroidx/work/impl/model/j0;->k()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x16

    invoke-interface {p1, v2, v0, v1}, Lz3/e;->c(IJ)V

    invoke-virtual {p2}, Landroidx/work/impl/model/j0;->l()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x17

    if-nez v0, :cond_0

    invoke-interface {p1, v1}, Lz3/e;->g(I)V

    goto :goto_0

    :cond_0
    invoke-interface {p1, v1, v0}, Lz3/e;->j(ILjava/lang/String;)V

    :goto_0
    invoke-virtual {p2}, Landroidx/work/impl/model/j0;->f()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x18

    if-nez v0, :cond_2

    invoke-interface {p1, v1}, Lz3/e;->g(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    invoke-interface {p1, v1, v2, v3}, Lz3/e;->c(IJ)V

    :goto_2
    iget-object v0, p2, Landroidx/work/impl/model/j0;->j:Landroidx/work/d;

    invoke-virtual {v0}, Landroidx/work/d;->f()Landroidx/work/NetworkType;

    move-result-object v1

    invoke-static {v1}, Landroidx/work/impl/model/a2;->h(Landroidx/work/NetworkType;)I

    move-result v1

    const/16 v2, 0x19

    int-to-long v3, v1

    invoke-interface {p1, v2, v3, v4}, Lz3/e;->c(IJ)V

    invoke-virtual {v0}, Landroidx/work/d;->e()Landroidx/work/impl/utils/v;

    move-result-object v1

    invoke-static {v1}, Landroidx/work/impl/model/a2;->c(Landroidx/work/impl/utils/v;)[B

    move-result-object v1

    const/16 v2, 0x1a

    invoke-interface {p1, v2, v1}, Lz3/e;->e(I[B)V

    invoke-virtual {v0}, Landroidx/work/d;->i()Z

    move-result v1

    const/16 v2, 0x1b

    int-to-long v3, v1

    invoke-interface {p1, v2, v3, v4}, Lz3/e;->c(IJ)V

    invoke-virtual {v0}, Landroidx/work/d;->j()Z

    move-result v1

    const/16 v2, 0x1c

    int-to-long v3, v1

    invoke-interface {p1, v2, v3, v4}, Lz3/e;->c(IJ)V

    invoke-virtual {v0}, Landroidx/work/d;->h()Z

    move-result v1

    const/16 v2, 0x1d

    int-to-long v3, v1

    invoke-interface {p1, v2, v3, v4}, Lz3/e;->c(IJ)V

    invoke-virtual {v0}, Landroidx/work/d;->k()Z

    move-result v1

    const/16 v2, 0x1e

    int-to-long v3, v1

    invoke-interface {p1, v2, v3, v4}, Lz3/e;->c(IJ)V

    const/16 v1, 0x1f

    invoke-virtual {v0}, Landroidx/work/d;->b()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lz3/e;->c(IJ)V

    const/16 v1, 0x20

    invoke-virtual {v0}, Landroidx/work/d;->a()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lz3/e;->c(IJ)V

    invoke-virtual {v0}, Landroidx/work/d;->c()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Landroidx/work/impl/model/a2;->j(Ljava/util/Set;)[B

    move-result-object v0

    const/16 v1, 0x21

    invoke-interface {p1, v1, v0}, Lz3/e;->e(I[B)V

    const/16 v0, 0x22

    iget-object p2, p2, Landroidx/work/impl/model/j0;->a:Ljava/lang/String;

    invoke-interface {p1, v0, p2}, Lz3/e;->j(ILjava/lang/String;)V

    return-void
.end method
