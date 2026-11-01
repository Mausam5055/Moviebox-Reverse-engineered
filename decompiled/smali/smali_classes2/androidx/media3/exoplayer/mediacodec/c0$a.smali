.class abstract Landroidx/media3/exoplayer/mediacodec/c0$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/mediacodec/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# direct methods
.method public static a(Landroid/media/MediaCodecInfo$VideoCapabilities;IID)I
    .locals 2

    invoke-static {p0}, Landroidx/media3/exoplayer/mediacodec/z;->a(Landroid/media/MediaCodecInfo$VideoCapabilities;)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/media3/exoplayer/mediacodec/y;->a()V

    double-to-int p3, p3

    invoke-static {p1, p2, p3}, Landroidx/media3/exoplayer/mediacodec/x;->a(III)Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/media3/exoplayer/mediacodec/c0$a;->c(Ljava/util/List;Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_1

    invoke-static {}, Landroidx/media3/exoplayer/mediacodec/c0;->a()Ljava/lang/Boolean;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {}, Landroidx/media3/exoplayer/mediacodec/c0$a;->d()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/exoplayer/mediacodec/c0;->b(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    invoke-static {}, Landroidx/media3/exoplayer/mediacodec/c0;->a()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method private static b(Z)I
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Landroidx/media3/common/r$b;

    invoke-direct {v1}, Landroidx/media3/common/r$b;-><init>()V

    const-string v2, "video/avc"

    invoke-virtual {v1, v2}, Landroidx/media3/common/r$b;->u0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    move-result-object v1

    iget-object v2, v1, Landroidx/media3/common/r;->o:Ljava/lang/String;

    if-eqz v2, :cond_1

    sget-object v2, Landroidx/media3/exoplayer/mediacodec/h0;->a:Landroidx/media3/exoplayer/mediacodec/h0;

    invoke-static {v2, v1, p0, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->m(Landroidx/media3/exoplayer/mediacodec/h0;Landroidx/media3/common/r;ZZ)Ljava/util/List;

    move-result-object p0

    move v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/mediacodec/w;

    iget-object v2, v2, Landroidx/media3/exoplayer/mediacodec/w;->d:Landroid/media/MediaCodecInfo$CodecCapabilities;

    if-eqz v2, :cond_0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/mediacodec/w;

    iget-object v2, v2, Landroidx/media3/exoplayer/mediacodec/w;->d:Landroid/media/MediaCodecInfo$CodecCapabilities;

    invoke-virtual {v2}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/mediacodec/w;

    iget-object v2, v2, Landroidx/media3/exoplayer/mediacodec/w;->d:Landroid/media/MediaCodecInfo$CodecCapabilities;

    invoke-virtual {v2}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v2

    invoke-static {v2}, Landroidx/media3/exoplayer/mediacodec/z;->a(Landroid/media/MediaCodecInfo$VideoCapabilities;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Landroidx/media3/exoplayer/mediacodec/y;->a()V

    const/16 p0, 0x2d0

    const/16 v1, 0x3c

    const/16 v3, 0x500

    invoke-static {v3, p0, v1}, Landroidx/media3/exoplayer/mediacodec/x;->a(III)Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    move-result-object p0

    invoke-static {v2, p0}, Landroidx/media3/exoplayer/mediacodec/c0$a;->c(Ljava/util/List;Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;)I

    move-result p0
    :try_end_0
    .catch Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$DecoderQueryException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    :cond_1
    return v0
.end method

.method private static c(Ljava/util/List;Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/exoplayer/mediacodec/a0;->a(Ljava/lang/Object;)Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;

    move-result-object v1

    invoke-static {v1, p1}, Landroidx/media3/exoplayer/mediacodec/b0;->a(Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;Landroid/media/MediaCodecInfo$VideoCapabilities$PerformancePoint;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private static d()Z
    .locals 5

    sget v0, Landroidx/media3/common/util/a1;->a:I

    const/16 v1, 0x23

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    return v2

    :cond_0
    invoke-static {v2}, Landroidx/media3/exoplayer/mediacodec/c0$a;->b(Z)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1}, Landroidx/media3/exoplayer/mediacodec/c0$a;->b(Z)I

    move-result v3

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v4, 0x2

    if-nez v3, :cond_3

    if-eq v0, v4, :cond_2

    move v2, v1

    :cond_2
    return v2

    :cond_3
    if-ne v0, v4, :cond_4

    if-eq v3, v4, :cond_5

    :cond_4
    move v2, v1

    :cond_5
    return v2
.end method
