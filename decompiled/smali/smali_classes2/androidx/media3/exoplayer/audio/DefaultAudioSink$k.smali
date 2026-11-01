.class final Landroidx/media3/exoplayer/audio/DefaultAudioSink$k;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/audio/DefaultAudioSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "k"
.end annotation


# instance fields
.field private final a:Landroid/media/AudioTrack;

.field private final b:Landroidx/media3/exoplayer/audio/i;

.field private c:Landroid/media/AudioRouting$OnRoutingChangedListener;


# direct methods
.method public constructor <init>(Landroid/media/AudioTrack;Landroidx/media3/exoplayer/audio/i;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$k;->a:Landroid/media/AudioTrack;

    iput-object p2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$k;->b:Landroidx/media3/exoplayer/audio/i;

    new-instance p2, Landroidx/media3/exoplayer/audio/t0;

    invoke-direct {p2, p0}, Landroidx/media3/exoplayer/audio/t0;-><init>(Landroidx/media3/exoplayer/audio/DefaultAudioSink$k;)V

    iput-object p2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$k;->c:Landroid/media/AudioRouting$OnRoutingChangedListener;

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$k;->c:Landroid/media/AudioRouting$OnRoutingChangedListener;

    invoke-static {p1, v0, p2}, Landroidx/media3/exoplayer/audio/p0;->a(Landroid/media/AudioTrack;Landroid/media/AudioRouting$OnRoutingChangedListener;Landroid/os/Handler;)V

    return-void
.end method

.method public static synthetic a(Landroidx/media3/exoplayer/audio/DefaultAudioSink$k;Landroid/media/AudioRouting;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$k;->b(Landroid/media/AudioRouting;)V

    return-void
.end method

.method private b(Landroid/media/AudioRouting;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$k;->c:Landroid/media/AudioRouting$OnRoutingChangedListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Landroidx/media3/exoplayer/audio/s0;->a(Landroid/media/AudioRouting;)Landroid/media/AudioDeviceInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$k;->b:Landroidx/media3/exoplayer/audio/i;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/audio/i;->i(Landroid/media/AudioDeviceInfo;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$k;->a:Landroid/media/AudioTrack;

    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$k;->c:Landroid/media/AudioRouting$OnRoutingChangedListener;

    invoke-static {v1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/exoplayer/audio/q0;->a(Ljava/lang/Object;)Landroid/media/AudioRouting$OnRoutingChangedListener;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/media3/exoplayer/audio/r0;->a(Landroid/media/AudioTrack;Landroid/media/AudioRouting$OnRoutingChangedListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$k;->c:Landroid/media/AudioRouting$OnRoutingChangedListener;

    return-void
.end method
