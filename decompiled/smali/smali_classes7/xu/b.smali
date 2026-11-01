.class public Lxu/b;
.super Ljava/lang/Object;


# instance fields
.field public final a:Z

.field public final b:I

.field public final c:J

.field public final d:Z


# direct methods
.method public constructor <init>(ZIJ)V
    .locals 7

    const/4 v0, 0x1

    if-gt p2, v0, :cond_0

    :goto_0
    move v6, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lxu/b;-><init>(ZIJZ)V

    return-void
.end method

.method public constructor <init>(ZIJZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lxu/b;->a:Z

    const/4 p1, 0x1

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lxu/b;->b:I

    const-wide/16 p1, 0x1

    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lxu/b;->c:J

    iput-boolean p5, p0, Lxu/b;->d:Z

    return-void
.end method

.method public static a()Lxu/b;
    .locals 5

    invoke-static {}, Lou/a;->s()Lou/a;

    move-result-object v0

    new-instance v1, Lxu/b;

    invoke-virtual {v0}, Lou/a;->v()I

    move-result v2

    invoke-virtual {v0}, Lou/a;->w()J

    move-result-wide v3

    const/4 v0, 0x1

    invoke-direct {v1, v0, v2, v3, v4}, Lxu/b;-><init>(ZIJ)V

    return-object v1
.end method
