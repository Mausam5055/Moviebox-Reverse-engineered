.class final Lcom/google/android/exoplayer2/source/rtsp/k0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/source/rtsp/c;


# instance fields
.field private final a:Lcom/google/android/exoplayer2/upstream/UdpDataSource;

.field private b:Lcom/google/android/exoplayer2/source/rtsp/k0;


# direct methods
.method public constructor <init>(J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/exoplayer2/upstream/UdpDataSource;

    const/16 v1, 0x7d0

    invoke-static {p1, p2}, Lcom/google/common/primitives/Ints;->d(J)I

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/google/android/exoplayer2/upstream/UdpDataSource;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/k0;->a:Lcom/google/android/exoplayer2/upstream/UdpDataSource;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/upstream/n;)J
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/k0;->a:Lcom/google/android/exoplayer2/upstream/UdpDataSource;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/upstream/UdpDataSource;->a(Lcom/google/android/exoplayer2/upstream/n;)J

    move-result-wide v0

    return-wide v0
.end method

.method public c()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/rtsp/k0;->d()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v1, v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    add-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v0

    aput-object v1, v4, v3

    const-string v0, "RTP/AVP;unicast;client_port=%d-%d"

    invoke-static {v0, v4}, Lcom/google/android/exoplayer2/util/p0;->C(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/k0;->a:Lcom/google/android/exoplayer2/upstream/UdpDataSource;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/UdpDataSource;->close()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/k0;->b:Lcom/google/android/exoplayer2/source/rtsp/k0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/rtsp/k0;->close()V

    :cond_0
    return-void
.end method

.method public d()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/k0;->a:Lcom/google/android/exoplayer2/upstream/UdpDataSource;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/UdpDataSource;->d()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method public e(Lcom/google/android/exoplayer2/upstream/k0;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/k0;->a:Lcom/google/android/exoplayer2/upstream/UdpDataSource;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/upstream/f;->e(Lcom/google/android/exoplayer2/upstream/k0;)V

    return-void
.end method

.method public f(Lcom/google/android/exoplayer2/source/rtsp/k0;)V
    .locals 1

    if-eq p0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/k0;->b:Lcom/google/android/exoplayer2/source/rtsp/k0;

    return-void
.end method

.method public g()Lcom/google/android/exoplayer2/source/rtsp/u$b;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic getResponseHeaders()Ljava/util/Map;
    .locals 1

    invoke-static {p0}, Lcom/google/android/exoplayer2/upstream/j;->a(Lcom/google/android/exoplayer2/upstream/k;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/k0;->a:Lcom/google/android/exoplayer2/upstream/UdpDataSource;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/UdpDataSource;->getUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public read([BII)I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/k0;->a:Lcom/google/android/exoplayer2/upstream/UdpDataSource;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/upstream/UdpDataSource;->read([BII)I

    move-result p1
    :try_end_0
    .catch Lcom/google/android/exoplayer2/upstream/UdpDataSource$UdpDataSourceException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    iget p2, p1, Lcom/google/android/exoplayer2/upstream/DataSourceException;->reason:I

    const/16 p3, 0x7d2

    if-ne p2, p3, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    throw p1
.end method
