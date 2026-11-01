.class public final synthetic Landroidx/media3/exoplayer/hls/q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/media3/exoplayer/hls/r$b;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/hls/r$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/q;->a:Landroidx/media3/exoplayer/hls/r$b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/q;->a:Landroidx/media3/exoplayer/hls/r$b;

    invoke-interface {v0}, Landroidx/media3/exoplayer/hls/r$b;->onPrepared()V

    return-void
.end method
