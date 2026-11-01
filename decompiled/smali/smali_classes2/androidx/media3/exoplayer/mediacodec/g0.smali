.class public abstract synthetic Landroidx/media3/exoplayer/mediacodec/g0;
.super Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/media3/exoplayer/mediacodec/h0;->a:Landroidx/media3/exoplayer/mediacodec/h0;

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;ZZ)Ljava/util/List;
    .locals 1

    sget-object v0, Landroidx/media3/exoplayer/mediacodec/h0;->a:Landroidx/media3/exoplayer/mediacodec/h0;

    invoke-interface {v0, p0, p1, p2}, Landroidx/media3/exoplayer/mediacodec/h0;->a(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->o(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
