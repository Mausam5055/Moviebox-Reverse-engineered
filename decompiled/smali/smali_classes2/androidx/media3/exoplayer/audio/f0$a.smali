.class abstract Landroidx/media3/exoplayer/audio/f0$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/audio/f0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# direct methods
.method public static a(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;Z)Landroidx/media3/exoplayer/audio/k;
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/exoplayer/audio/e0;->a(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Landroidx/media3/exoplayer/audio/k;->d:Landroidx/media3/exoplayer/audio/k;

    return-object p0

    :cond_0
    new-instance p0, Landroidx/media3/exoplayer/audio/k$b;

    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/k$b;-><init>()V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/audio/k$b;->e(Z)Landroidx/media3/exoplayer/audio/k$b;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroidx/media3/exoplayer/audio/k$b;->g(Z)Landroidx/media3/exoplayer/audio/k$b;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/k$b;->d()Landroidx/media3/exoplayer/audio/k;

    move-result-object p0

    return-object p0
.end method
