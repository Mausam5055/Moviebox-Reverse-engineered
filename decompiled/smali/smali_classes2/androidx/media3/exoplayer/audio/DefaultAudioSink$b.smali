.class abstract Landroidx/media3/exoplayer/audio/DefaultAudioSink$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/audio/DefaultAudioSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# direct methods
.method public static a(Landroid/media/AudioTrack;Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;)J
    .locals 7

    iget v0, p1, Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;->c:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/media/AudioTrack;->getBufferSizeInFrames()I

    move-result p0

    int-to-long v0, p0

    invoke-virtual {p1, v0, v1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;->d(J)J

    move-result-wide p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/media/AudioTrack;->getBufferSizeInFrames()I

    move-result p0

    int-to-long v0, p0

    iget p0, p1, Landroidx/media3/exoplayer/audio/DefaultAudioSink$h;->g:I

    invoke-static {p0}, Landroidx/media3/exoplayer/audio/x0;->d(I)I

    move-result p0

    int-to-long v4, p0

    sget-object v6, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v2, 0xf4240

    invoke-static/range {v0 .. v6}, Landroidx/media3/common/util/a1;->g1(JJJLjava/math/RoundingMode;)J

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method public static b(Landroid/media/AudioTrack;Landroidx/media3/exoplayer/audio/j;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Landroidx/media3/exoplayer/audio/j;->a:Landroid/media/AudioDeviceInfo;

    :goto_0
    invoke-virtual {p0, p1}, Landroid/media/AudioTrack;->setPreferredDevice(Landroid/media/AudioDeviceInfo;)Z

    return-void
.end method
