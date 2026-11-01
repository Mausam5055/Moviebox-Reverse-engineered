.class final Lcom/google/android/exoplayer2/source/rtsp/l0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/source/rtsp/c$a;


# instance fields
.field private final a:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/rtsp/l0;->a:J

    return-void
.end method


# virtual methods
.method public a(I)Lcom/google/android/exoplayer2/source/rtsp/c;
    .locals 5

    new-instance p1, Lcom/google/android/exoplayer2/source/rtsp/k0;

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/rtsp/l0;->a:J

    invoke-direct {p1, v0, v1}, Lcom/google/android/exoplayer2/source/rtsp/k0;-><init>(J)V

    new-instance v0, Lcom/google/android/exoplayer2/source/rtsp/k0;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/rtsp/l0;->a:J

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/source/rtsp/k0;-><init>(J)V

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v1}, Lcom/google/android/exoplayer2/source/rtsp/k;->a(I)Lcom/google/android/exoplayer2/upstream/n;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/source/rtsp/k0;->a(Lcom/google/android/exoplayer2/upstream/n;)J

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/rtsp/k0;->d()I

    move-result v2

    rem-int/lit8 v3, v2, 0x2

    const/4 v4, 0x1

    if-nez v3, :cond_0

    move v1, v4

    :cond_0
    if-eqz v1, :cond_1

    add-int/2addr v2, v4

    goto :goto_0

    :cond_1
    sub-int/2addr v2, v4

    :goto_0
    invoke-static {v2}, Lcom/google/android/exoplayer2/source/rtsp/k;->a(I)Lcom/google/android/exoplayer2/upstream/n;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/source/rtsp/k0;->a(Lcom/google/android/exoplayer2/upstream/n;)J

    if-eqz v1, :cond_2

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/source/rtsp/k0;->f(Lcom/google/android/exoplayer2/source/rtsp/k0;)V

    return-object p1

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_2
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/rtsp/k0;->f(Lcom/google/android/exoplayer2/source/rtsp/k0;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :goto_1
    invoke-static {p1}, Lcom/google/android/exoplayer2/upstream/m;->a(Lcom/google/android/exoplayer2/upstream/k;)V

    invoke-static {v0}, Lcom/google/android/exoplayer2/upstream/m;->a(Lcom/google/android/exoplayer2/upstream/k;)V

    throw v1
.end method

.method public b()Lcom/google/android/exoplayer2/source/rtsp/c$a;
    .locals 3

    new-instance v0, Lcom/google/android/exoplayer2/source/rtsp/j0;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/rtsp/l0;->a:J

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/source/rtsp/j0;-><init>(J)V

    return-object v0
.end method
