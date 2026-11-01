.class public final synthetic Landroidx/media3/exoplayer/hls/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/media3/exoplayer/hls/r;

.field public final synthetic b:Landroidx/media3/exoplayer/hls/i;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/hls/r;Landroidx/media3/exoplayer/hls/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/n;->a:Landroidx/media3/exoplayer/hls/r;

    iput-object p2, p0, Landroidx/media3/exoplayer/hls/n;->b:Landroidx/media3/exoplayer/hls/i;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/n;->a:Landroidx/media3/exoplayer/hls/r;

    iget-object v1, p0, Landroidx/media3/exoplayer/hls/n;->b:Landroidx/media3/exoplayer/hls/i;

    invoke-static {v0, v1}, Landroidx/media3/exoplayer/hls/r;->i(Landroidx/media3/exoplayer/hls/r;Landroidx/media3/exoplayer/hls/i;)V

    return-void
.end method
