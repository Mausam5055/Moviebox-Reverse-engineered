.class public final synthetic Landroidx/media3/exoplayer/audio/t0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/AudioRouting$OnRoutingChangedListener;


# instance fields
.field public final synthetic a:Landroidx/media3/exoplayer/audio/DefaultAudioSink$k;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/audio/DefaultAudioSink$k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/audio/t0;->a:Landroidx/media3/exoplayer/audio/DefaultAudioSink$k;

    return-void
.end method


# virtual methods
.method public final onRoutingChanged(Landroid/media/AudioRouting;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/t0;->a:Landroidx/media3/exoplayer/audio/DefaultAudioSink$k;

    invoke-static {v0, p1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$k;->a(Landroidx/media3/exoplayer/audio/DefaultAudioSink$k;Landroid/media/AudioRouting;)V

    return-void
.end method
