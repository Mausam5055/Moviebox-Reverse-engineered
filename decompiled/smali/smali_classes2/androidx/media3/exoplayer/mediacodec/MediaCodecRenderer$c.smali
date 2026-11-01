.class final Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$c;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/exoplayer/mediacodec/t$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;


# direct methods
.method private constructor <init>(Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$c;->a:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$a;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$c;-><init>(Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$c;->a:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;

    invoke-static {v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->Q(Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;)Landroidx/media3/exoplayer/w3$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$c;->a:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;

    invoke-static {v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->Q(Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;)Landroidx/media3/exoplayer/w3$a;

    move-result-object v0

    invoke-interface {v0}, Landroidx/media3/exoplayer/w3$a;->b()V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$c;->a:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;

    invoke-static {v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->Q(Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;)Landroidx/media3/exoplayer/w3$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$c;->a:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;

    invoke-static {v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->Q(Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;)Landroidx/media3/exoplayer/w3$a;

    move-result-object v0

    invoke-interface {v0}, Landroidx/media3/exoplayer/w3$a;->b()V

    :cond_0
    return-void
.end method
