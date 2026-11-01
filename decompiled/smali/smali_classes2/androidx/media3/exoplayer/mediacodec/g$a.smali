.class Landroidx/media3/exoplayer/mediacodec/g$a;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media3/exoplayer/mediacodec/g;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/media3/exoplayer/mediacodec/g;


# direct methods
.method constructor <init>(Landroidx/media3/exoplayer/mediacodec/g;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/g$a;->a:Landroidx/media3/exoplayer/mediacodec/g;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/g$a;->a:Landroidx/media3/exoplayer/mediacodec/g;

    invoke-static {v0, p1}, Landroidx/media3/exoplayer/mediacodec/g;->d(Landroidx/media3/exoplayer/mediacodec/g;Landroid/os/Message;)V

    return-void
.end method
