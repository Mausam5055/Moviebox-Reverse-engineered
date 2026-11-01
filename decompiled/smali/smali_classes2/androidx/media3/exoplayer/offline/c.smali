.class public final Landroidx/media3/exoplayer/offline/c;
.super Ljava/lang/Object;


# instance fields
.field public final a:Landroidx/media3/exoplayer/offline/DownloadRequest;

.field public final b:I

.field public final c:J

.field public final d:J

.field public final e:J

.field public final f:I

.field public final g:I

.field final h:Landroidx/media3/exoplayer/offline/l;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/offline/DownloadRequest;IJJJII)V
    .locals 12

    new-instance v11, Landroidx/media3/exoplayer/offline/l;

    invoke-direct {v11}, Landroidx/media3/exoplayer/offline/l;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v11}, Landroidx/media3/exoplayer/offline/c;-><init>(Landroidx/media3/exoplayer/offline/DownloadRequest;IJJJIILandroidx/media3/exoplayer/offline/l;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/exoplayer/offline/DownloadRequest;IJJJIILandroidx/media3/exoplayer/offline/l;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p11}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p10, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const/4 v3, 0x4

    if-eq p2, v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_1
    if-ne v2, v3, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    move v2, v0

    :goto_2
    invoke-static {v2}, Landroidx/media3/common/util/a;->a(Z)V

    if-eqz p9, :cond_4

    const/4 v2, 0x2

    if-eq p2, v2, :cond_3

    if-eqz p2, :cond_3

    move v0, v1

    :cond_3
    invoke-static {v0}, Landroidx/media3/common/util/a;->a(Z)V

    :cond_4
    iput-object p1, p0, Landroidx/media3/exoplayer/offline/c;->a:Landroidx/media3/exoplayer/offline/DownloadRequest;

    iput p2, p0, Landroidx/media3/exoplayer/offline/c;->b:I

    iput-wide p3, p0, Landroidx/media3/exoplayer/offline/c;->c:J

    iput-wide p5, p0, Landroidx/media3/exoplayer/offline/c;->d:J

    iput-wide p7, p0, Landroidx/media3/exoplayer/offline/c;->e:J

    iput p9, p0, Landroidx/media3/exoplayer/offline/c;->f:I

    iput p10, p0, Landroidx/media3/exoplayer/offline/c;->g:I

    iput-object p11, p0, Landroidx/media3/exoplayer/offline/c;->h:Landroidx/media3/exoplayer/offline/l;

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/offline/c;->h:Landroidx/media3/exoplayer/offline/l;

    iget-wide v0, v0, Landroidx/media3/exoplayer/offline/l;->a:J

    return-wide v0
.end method

.method public b()F
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/offline/c;->h:Landroidx/media3/exoplayer/offline/l;

    iget v0, v0, Landroidx/media3/exoplayer/offline/l;->b:F

    return v0
.end method

.method public c()Z
    .locals 2

    iget v0, p0, Landroidx/media3/exoplayer/offline/c;->b:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
