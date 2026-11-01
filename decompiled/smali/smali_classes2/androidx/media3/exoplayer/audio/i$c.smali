.class final Landroidx/media3/exoplayer/audio/i$c;
.super Landroid/media/AudioDeviceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/audio/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Landroidx/media3/exoplayer/audio/i;


# direct methods
.method private constructor <init>(Landroidx/media3/exoplayer/audio/i;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/audio/i$c;->a:Landroidx/media3/exoplayer/audio/i;

    invoke-direct {p0}, Landroid/media/AudioDeviceCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/exoplayer/audio/i;Landroidx/media3/exoplayer/audio/i$a;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/audio/i$c;-><init>(Landroidx/media3/exoplayer/audio/i;)V

    return-void
.end method


# virtual methods
.method public onAudioDevicesAdded([Landroid/media/AudioDeviceInfo;)V
    .locals 3

    iget-object p1, p0, Landroidx/media3/exoplayer/audio/i$c;->a:Landroidx/media3/exoplayer/audio/i;

    invoke-static {p1}, Landroidx/media3/exoplayer/audio/i;->e(Landroidx/media3/exoplayer/audio/i;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/exoplayer/audio/i$c;->a:Landroidx/media3/exoplayer/audio/i;

    invoke-static {v1}, Landroidx/media3/exoplayer/audio/i;->a(Landroidx/media3/exoplayer/audio/i;)Landroidx/media3/common/c;

    move-result-object v1

    iget-object v2, p0, Landroidx/media3/exoplayer/audio/i$c;->a:Landroidx/media3/exoplayer/audio/i;

    invoke-static {v2}, Landroidx/media3/exoplayer/audio/i;->b(Landroidx/media3/exoplayer/audio/i;)Landroidx/media3/exoplayer/audio/j;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroidx/media3/exoplayer/audio/e;->f(Landroid/content/Context;Landroidx/media3/common/c;Landroidx/media3/exoplayer/audio/j;)Landroidx/media3/exoplayer/audio/e;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/media3/exoplayer/audio/i;->d(Landroidx/media3/exoplayer/audio/i;Landroidx/media3/exoplayer/audio/e;)V

    return-void
.end method

.method public onAudioDevicesRemoved([Landroid/media/AudioDeviceInfo;)V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/i$c;->a:Landroidx/media3/exoplayer/audio/i;

    invoke-static {v0}, Landroidx/media3/exoplayer/audio/i;->b(Landroidx/media3/exoplayer/audio/i;)Landroidx/media3/exoplayer/audio/j;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/media3/common/util/a1;->s([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/audio/i$c;->a:Landroidx/media3/exoplayer/audio/i;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroidx/media3/exoplayer/audio/i;->c(Landroidx/media3/exoplayer/audio/i;Landroidx/media3/exoplayer/audio/j;)Landroidx/media3/exoplayer/audio/j;

    :cond_0
    iget-object p1, p0, Landroidx/media3/exoplayer/audio/i$c;->a:Landroidx/media3/exoplayer/audio/i;

    invoke-static {p1}, Landroidx/media3/exoplayer/audio/i;->e(Landroidx/media3/exoplayer/audio/i;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/exoplayer/audio/i$c;->a:Landroidx/media3/exoplayer/audio/i;

    invoke-static {v1}, Landroidx/media3/exoplayer/audio/i;->a(Landroidx/media3/exoplayer/audio/i;)Landroidx/media3/common/c;

    move-result-object v1

    iget-object v2, p0, Landroidx/media3/exoplayer/audio/i$c;->a:Landroidx/media3/exoplayer/audio/i;

    invoke-static {v2}, Landroidx/media3/exoplayer/audio/i;->b(Landroidx/media3/exoplayer/audio/i;)Landroidx/media3/exoplayer/audio/j;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroidx/media3/exoplayer/audio/e;->f(Landroid/content/Context;Landroidx/media3/common/c;Landroidx/media3/exoplayer/audio/j;)Landroidx/media3/exoplayer/audio/e;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/media3/exoplayer/audio/i;->d(Landroidx/media3/exoplayer/audio/i;Landroidx/media3/exoplayer/audio/e;)V

    return-void
.end method
