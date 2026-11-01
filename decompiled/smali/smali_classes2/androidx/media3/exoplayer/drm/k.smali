.class public abstract synthetic Landroidx/media3/exoplayer/drm/k;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroidx/media3/exoplayer/drm/DrmSession;Landroidx/media3/exoplayer/drm/DrmSession;)V
    .locals 1

    if-ne p0, p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1, v0}, Landroidx/media3/exoplayer/drm/DrmSession;->e(Landroidx/media3/exoplayer/drm/r$a;)V

    :cond_1
    if-eqz p0, :cond_2

    invoke-interface {p0, v0}, Landroidx/media3/exoplayer/drm/DrmSession;->f(Landroidx/media3/exoplayer/drm/r$a;)V

    :cond_2
    return-void
.end method
