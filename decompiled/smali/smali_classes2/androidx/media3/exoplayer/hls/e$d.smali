.class final Landroidx/media3/exoplayer/hls/e$d;
.super Lj2/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/hls/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation


# instance fields
.field private i:I


# direct methods
.method public constructor <init>(Landroidx/media3/common/f0;[I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lj2/c;-><init>(Landroidx/media3/common/f0;[I)V

    const/4 v0, 0x0

    aget p2, p2, v0

    invoke-virtual {p1, p2}, Landroidx/media3/common/f0;->a(I)Landroidx/media3/common/r;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj2/c;->f(Landroidx/media3/common/r;)I

    move-result p1

    iput p1, p0, Landroidx/media3/exoplayer/hls/e$d;->i:I

    return-void
.end method


# virtual methods
.method public e(JJJLjava/util/List;[Lh2/n;)V
    .locals 0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iget p3, p0, Landroidx/media3/exoplayer/hls/e$d;->i:I

    invoke-virtual {p0, p3, p1, p2}, Lj2/c;->d(IJ)Z

    move-result p3

    if-nez p3, :cond_0

    return-void

    :cond_0
    iget p3, p0, Lj2/c;->b:I

    add-int/lit8 p3, p3, -0x1

    :goto_0
    if-ltz p3, :cond_2

    invoke-virtual {p0, p3, p1, p2}, Lj2/c;->d(IJ)Z

    move-result p4

    if-nez p4, :cond_1

    iput p3, p0, Landroidx/media3/exoplayer/hls/e$d;->i:I

    return-void

    :cond_1
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public getSelectedIndex()I
    .locals 1

    iget v0, p0, Landroidx/media3/exoplayer/hls/e$d;->i:I

    return v0
.end method

.method public getSelectionData()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelectionReason()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
