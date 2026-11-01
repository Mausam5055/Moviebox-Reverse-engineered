.class public final synthetic Landroidx/media3/exoplayer/mediacodec/n0;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$f;


# instance fields
.field public final synthetic a:Landroidx/media3/common/r;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/common/r;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/n0;->a:Landroidx/media3/common/r;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/n0;->a:Landroidx/media3/common/r;

    check-cast p1, Landroidx/media3/exoplayer/mediacodec/w;

    invoke-static {v0, p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->c(Landroidx/media3/common/r;Landroidx/media3/exoplayer/mediacodec/w;)I

    move-result p1

    return p1
.end method
