.class final Lcom/google/android/exoplayer2/source/hls/e$d;
.super Lla/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/hls/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation


# instance fields
.field private h:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/TrackGroup;[I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lla/b;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[I)V

    const/4 v0, 0x0

    aget p2, p2, v0

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/source/TrackGroup;->c(I)Lcom/google/android/exoplayer2/o1;

    move-result-object p1

    invoke-virtual {p0, p1}, Lla/b;->g(Lcom/google/android/exoplayer2/o1;)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/source/hls/e$d;->h:I

    return-void
.end method


# virtual methods
.method public d(JJJLjava/util/List;[Lv9/o;)V
    .locals 0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iget p3, p0, Lcom/google/android/exoplayer2/source/hls/e$d;->h:I

    invoke-virtual {p0, p3, p1, p2}, Lla/b;->e(IJ)Z

    move-result p3

    if-nez p3, :cond_0

    return-void

    :cond_0
    iget p3, p0, Lla/b;->b:I

    add-int/lit8 p3, p3, -0x1

    :goto_0
    if-ltz p3, :cond_2

    invoke-virtual {p0, p3, p1, p2}, Lla/b;->e(IJ)Z

    move-result p4

    if-nez p4, :cond_1

    iput p3, p0, Lcom/google/android/exoplayer2/source/hls/e$d;->h:I

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

    iget v0, p0, Lcom/google/android/exoplayer2/source/hls/e$d;->h:I

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
