.class public abstract synthetic Lcom/google/android/exoplayer2/drm/k;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/google/android/exoplayer2/drm/DrmSession;Lcom/google/android/exoplayer2/drm/DrmSession;)V
    .locals 1

    if-ne p0, p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/drm/DrmSession;->e(Lcom/google/android/exoplayer2/drm/s$a;)V

    :cond_1
    if-eqz p0, :cond_2

    invoke-interface {p0, v0}, Lcom/google/android/exoplayer2/drm/DrmSession;->f(Lcom/google/android/exoplayer2/drm/s$a;)V

    :cond_2
    return-void
.end method
