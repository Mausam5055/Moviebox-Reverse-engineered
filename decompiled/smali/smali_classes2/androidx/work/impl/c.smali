.class public final Landroidx/work/impl/c;
.super Landroidx/room/RoomDatabase$b;


# instance fields
.field private final a:Landroidx/work/a;


# direct methods
.method public constructor <init>(Landroidx/work/a;)V
    .locals 1

    const-string v0, "clock"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/room/RoomDatabase$b;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/c;->a:Landroidx/work/a;

    return-void
.end method

.method private final g()J
    .locals 4

    iget-object v0, p0, Landroidx/work/impl/c;->a:Landroidx/work/a;

    invoke-interface {v0}, Landroidx/work/a;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Landroidx/work/impl/g0;->a:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private final h()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DELETE FROM workspec WHERE state IN (2, 3, 5) AND (last_enqueue_time + minimum_retention_duration) < "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Landroidx/work/impl/c;->g()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " AND (SELECT COUNT(*)=0 FROM dependency WHERE     prerequisite_id=id AND     work_spec_id NOT IN         (SELECT id FROM workspec WHERE state IN (2, 3, 5)))"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public e(La4/d;)V
    .locals 1

    const-string v0, "db"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/room/RoomDatabase$b;->e(La4/d;)V

    invoke-interface {p1}, La4/d;->A()V

    :try_start_0
    invoke-direct {p0}, Landroidx/work/impl/c;->h()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, La4/d;->E(Ljava/lang/String;)V

    invoke-interface {p1}, La4/d;->I()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1}, La4/d;->L()V

    return-void

    :catchall_0
    move-exception v0

    invoke-interface {p1}, La4/d;->L()V

    throw v0
.end method
