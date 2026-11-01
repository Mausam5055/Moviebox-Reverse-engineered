.class abstract Landroidx/media3/exoplayer/audio/f0$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/audio/f0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# direct methods
.method public static a(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;Z)Landroidx/media3/exoplayer/audio/k;
    .locals 3

    invoke-static {p0, p1}, Landroidx/media3/exoplayer/audio/g0;->a(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)I

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Landroidx/media3/exoplayer/audio/k;->d:Landroidx/media3/exoplayer/audio/k;

    return-object p0

    :cond_0
    new-instance p1, Landroidx/media3/exoplayer/audio/k$b;

    invoke-direct {p1}, Landroidx/media3/exoplayer/audio/k$b;-><init>()V

    sget v0, Landroidx/media3/common/util/a1;->a:I

    const/16 v1, 0x20

    const/4 v2, 0x1

    if-le v0, v1, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    move p0, v2

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, v2}, Landroidx/media3/exoplayer/audio/k$b;->e(Z)Landroidx/media3/exoplayer/audio/k$b;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/media3/exoplayer/audio/k$b;->f(Z)Landroidx/media3/exoplayer/audio/k$b;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroidx/media3/exoplayer/audio/k$b;->g(Z)Landroidx/media3/exoplayer/audio/k$b;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/k$b;->d()Landroidx/media3/exoplayer/audio/k;

    move-result-object p0

    return-object p0
.end method
