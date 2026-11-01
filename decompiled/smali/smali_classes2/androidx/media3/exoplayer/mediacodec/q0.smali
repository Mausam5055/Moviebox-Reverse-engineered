.class public final synthetic Landroidx/media3/exoplayer/mediacodec/q0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaCodec$OnFrameRenderedListener;


# instance fields
.field public final synthetic a:Landroidx/media3/exoplayer/mediacodec/r0;

.field public final synthetic b:Landroidx/media3/exoplayer/mediacodec/t$d;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/mediacodec/r0;Landroidx/media3/exoplayer/mediacodec/t$d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/q0;->a:Landroidx/media3/exoplayer/mediacodec/r0;

    iput-object p2, p0, Landroidx/media3/exoplayer/mediacodec/q0;->b:Landroidx/media3/exoplayer/mediacodec/t$d;

    return-void
.end method


# virtual methods
.method public final onFrameRendered(Landroid/media/MediaCodec;JJ)V
    .locals 7

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/q0;->a:Landroidx/media3/exoplayer/mediacodec/r0;

    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/q0;->b:Landroidx/media3/exoplayer/mediacodec/t$d;

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-static/range {v0 .. v6}, Landroidx/media3/exoplayer/mediacodec/r0;->p(Landroidx/media3/exoplayer/mediacodec/r0;Landroidx/media3/exoplayer/mediacodec/t$d;Landroid/media/MediaCodec;JJ)V

    return-void
.end method
