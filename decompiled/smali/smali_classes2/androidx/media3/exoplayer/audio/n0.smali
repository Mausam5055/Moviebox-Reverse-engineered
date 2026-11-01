.class public final synthetic Landroidx/media3/exoplayer/audio/n0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/media3/exoplayer/audio/AudioSink$b;

.field public final synthetic b:Landroidx/media3/exoplayer/audio/AudioSink$a;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/audio/AudioSink$b;Landroidx/media3/exoplayer/audio/AudioSink$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/audio/n0;->a:Landroidx/media3/exoplayer/audio/AudioSink$b;

    iput-object p2, p0, Landroidx/media3/exoplayer/audio/n0;->b:Landroidx/media3/exoplayer/audio/AudioSink$a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/n0;->a:Landroidx/media3/exoplayer/audio/AudioSink$b;

    iget-object v1, p0, Landroidx/media3/exoplayer/audio/n0;->b:Landroidx/media3/exoplayer/audio/AudioSink$a;

    invoke-static {v0, v1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->s(Landroidx/media3/exoplayer/audio/AudioSink$b;Landroidx/media3/exoplayer/audio/AudioSink$a;)V

    return-void
.end method
