.class Landroidx/media3/exoplayer/p$b$a;
.super Landroid/media/AudioDeviceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media3/exoplayer/p$b;->b(Landroidx/media3/exoplayer/m4$a;Landroid/content/Context;Landroid/os/Looper;Landroid/os/Looper;Landroidx/media3/common/util/i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/media3/exoplayer/p$b;


# direct methods
.method constructor <init>(Landroidx/media3/exoplayer/p$b;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/p$b$a;->a:Landroidx/media3/exoplayer/p$b;

    invoke-direct {p0}, Landroid/media/AudioDeviceCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioDevicesAdded([Landroid/media/AudioDeviceInfo;)V
    .locals 1

    iget-object p1, p0, Landroidx/media3/exoplayer/p$b$a;->a:Landroidx/media3/exoplayer/p$b;

    invoke-static {p1}, Landroidx/media3/exoplayer/p$b;->g(Landroidx/media3/exoplayer/p$b;)Landroidx/media3/common/util/g;

    move-result-object p1

    iget-object v0, p0, Landroidx/media3/exoplayer/p$b$a;->a:Landroidx/media3/exoplayer/p$b;

    invoke-static {v0}, Landroidx/media3/exoplayer/p$b;->f(Landroidx/media3/exoplayer/p$b;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/media3/common/util/g;->i(Ljava/lang/Object;)V

    return-void
.end method

.method public onAudioDevicesRemoved([Landroid/media/AudioDeviceInfo;)V
    .locals 1

    iget-object p1, p0, Landroidx/media3/exoplayer/p$b$a;->a:Landroidx/media3/exoplayer/p$b;

    invoke-static {p1}, Landroidx/media3/exoplayer/p$b;->g(Landroidx/media3/exoplayer/p$b;)Landroidx/media3/common/util/g;

    move-result-object p1

    iget-object v0, p0, Landroidx/media3/exoplayer/p$b$a;->a:Landroidx/media3/exoplayer/p$b;

    invoke-static {v0}, Landroidx/media3/exoplayer/p$b;->f(Landroidx/media3/exoplayer/p$b;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/media3/common/util/g;->i(Ljava/lang/Object;)V

    return-void
.end method
