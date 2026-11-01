.class public final Lb3/g;
.super Lb3/b;


# instance fields
.field public final a:J

.field public final b:J


# direct methods
.method private constructor <init>(JJ)V
    .locals 0

    invoke-direct {p0}, Lb3/b;-><init>()V

    iput-wide p1, p0, Lb3/g;->a:J

    iput-wide p3, p0, Lb3/g;->b:J

    return-void
.end method

.method static b(Landroidx/media3/common/util/j0;JLandroidx/media3/common/util/p0;)Lb3/g;
    .locals 1

    invoke-static {p0, p1, p2}, Lb3/g;->c(Landroidx/media3/common/util/j0;J)J

    move-result-wide p0

    invoke-virtual {p3, p0, p1}, Landroidx/media3/common/util/p0;->b(J)J

    move-result-wide p2

    new-instance v0, Lb3/g;

    invoke-direct {v0, p0, p1, p2, p3}, Lb3/g;-><init>(JJ)V

    return-object v0
.end method

.method static c(Landroidx/media3/common/util/j0;J)J
    .locals 6

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->H()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x80

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    invoke-virtual {p0}, Landroidx/media3/common/util/j0;->J()J

    move-result-wide v2

    or-long/2addr v0, v2

    add-long/2addr v0, p1

    const-wide p0, 0x1ffffffffL

    and-long/2addr p0, v0

    goto :goto_0

    :cond_0
    const-wide p0, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    return-wide p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SCTE-35 TimeSignalCommand { ptsTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lb3/g;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", playbackPositionUs= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lb3/g;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
