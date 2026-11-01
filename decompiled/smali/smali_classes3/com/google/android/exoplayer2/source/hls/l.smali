.class final Lcom/google/android/exoplayer2/source/hls/l;
.super Ljava/lang/Object;

# interfaces
.implements Lt9/s;


# instance fields
.field private final a:I

.field private final b:Lcom/google/android/exoplayer2/source/hls/p;

.field private c:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/hls/p;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/l;->b:Lcom/google/android/exoplayer2/source/hls/p;

    iput p2, p0, Lcom/google/android/exoplayer2/source/hls/l;->a:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/exoplayer2/source/hls/l;->c:I

    return-void
.end method

.method private b()Z
    .locals 2

    iget v0, p0, Lcom/google/android/exoplayer2/source/hls/l;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, -0x3

    if-eq v0, v1, :cond_0

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public a()V
    .locals 2

    iget v0, p0, Lcom/google/android/exoplayer2/source/hls/l;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/l;->b:Lcom/google/android/exoplayer2/source/hls/p;

    iget v1, p0, Lcom/google/android/exoplayer2/source/hls/l;->a:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/hls/p;->i(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/source/hls/l;->c:I

    return-void
.end method

.method public c(Lcom/google/android/exoplayer2/p1;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I
    .locals 2

    iget v0, p0, Lcom/google/android/exoplayer2/source/hls/l;->c:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_0

    const/4 p1, 0x4

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/decoder/a;->a(I)V

    const/4 p1, -0x4

    return p1

    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/l;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/l;->b:Lcom/google/android/exoplayer2/source/hls/p;

    iget v1, p0, Lcom/google/android/exoplayer2/source/hls/l;->c:I

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/android/exoplayer2/source/hls/p;->R(ILcom/google/android/exoplayer2/p1;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I

    move-result v1

    :cond_1
    return v1
.end method

.method public d()V
    .locals 3

    iget v0, p0, Lcom/google/android/exoplayer2/source/hls/l;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/l;->b:Lcom/google/android/exoplayer2/source/hls/p;

    iget v2, p0, Lcom/google/android/exoplayer2/source/hls/l;->a:I

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/source/hls/p;->c0(I)V

    iput v1, p0, Lcom/google/android/exoplayer2/source/hls/l;->c:I

    :cond_0
    return-void
.end method

.method public isReady()Z
    .locals 2

    iget v0, p0, Lcom/google/android/exoplayer2/source/hls/l;->c:I

    const/4 v1, -0x3

    if-eq v0, v1, :cond_1

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/l;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/l;->b:Lcom/google/android/exoplayer2/source/hls/p;

    iget v1, p0, Lcom/google/android/exoplayer2/source/hls/l;->c:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/hls/p;->D(I)Z

    move-result v0

    if-eqz v0, :cond_0

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

.method public maybeThrowError()V
    .locals 3

    iget v0, p0, Lcom/google/android/exoplayer2/source/hls/l;->c:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_2

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/l;->b:Lcom/google/android/exoplayer2/source/hls/p;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/hls/p;->H()V

    goto :goto_0

    :cond_0
    const/4 v1, -0x3

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/l;->b:Lcom/google/android/exoplayer2/source/hls/p;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/source/hls/p;->I(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v0, Lcom/google/android/exoplayer2/source/hls/SampleQueueMappingException;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/l;->b:Lcom/google/android/exoplayer2/source/hls/p;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/hls/p;->getTrackGroups()Lt9/x;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/source/hls/l;->a:I

    invoke-virtual {v1, v2}, Lt9/x;->b(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/source/TrackGroup;->c(I)Lcom/google/android/exoplayer2/o1;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/exoplayer2/o1;->l:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/hls/SampleQueueMappingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public skipData(J)I
    .locals 2

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/l;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/l;->b:Lcom/google/android/exoplayer2/source/hls/p;

    iget v1, p0, Lcom/google/android/exoplayer2/source/hls/l;->c:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/exoplayer2/source/hls/p;->b0(IJ)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
