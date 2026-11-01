.class public interface abstract Landroidx/media3/exoplayer/audio/AudioSink;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/audio/AudioSink$UnexpectedDiscontinuityException;,
        Landroidx/media3/exoplayer/audio/AudioSink$WriteException;,
        Landroidx/media3/exoplayer/audio/AudioSink$InitializationException;,
        Landroidx/media3/exoplayer/audio/AudioSink$ConfigurationException;,
        Landroidx/media3/exoplayer/audio/AudioSink$a;,
        Landroidx/media3/exoplayer/audio/AudioSink$b;
    }
.end annotation


# virtual methods
.method public abstract a(Landroidx/media3/common/r;)Z
.end method

.method public abstract b(Landroidx/media3/common/z;)V
.end method

.method public abstract c(Ljava/nio/ByteBuffer;JI)Z
.end method

.method public abstract d()V
.end method

.method public abstract disableTunneling()V
.end method

.method public abstract e(Z)V
.end method

.method public abstract f(Landroidx/media3/common/c;)V
.end method

.method public abstract flush()V
.end method

.method public abstract g(Landroidx/media3/common/r;)Landroidx/media3/exoplayer/audio/k;
.end method

.method public abstract getCurrentPositionUs(Z)J
.end method

.method public abstract getPlaybackParameters()Landroidx/media3/common/z;
.end method

.method public abstract h(Landroid/media/AudioDeviceInfo;)V
.end method

.method public abstract handleDiscontinuity()V
.end method

.method public abstract hasPendingData()Z
.end method

.method public abstract i()J
.end method

.method public abstract isEnded()Z
.end method

.method public abstract j(Landroidx/media3/exoplayer/audio/AudioSink$b;)V
.end method

.method public abstract k(I)V
.end method

.method public abstract l(Landroidx/media3/common/r;I[I)V
.end method

.method public abstract m(II)V
.end method

.method public abstract n(J)V
.end method

.method public abstract o(Landroidx/media3/common/r;)I
.end method

.method public abstract p(Ly1/f4;)V
.end method

.method public abstract pause()V
.end method

.method public abstract play()V
.end method

.method public abstract playToEndOfStream()V
.end method

.method public abstract q(Landroidx/media3/common/f;)V
.end method

.method public abstract r(Landroidx/media3/common/util/i;)V
.end method

.method public abstract release()V
.end method

.method public abstract reset()V
.end method

.method public abstract setAudioSessionId(I)V
.end method

.method public abstract setVolume(F)V
.end method
