.class public interface abstract Landroidx/media3/exoplayer/drm/DrmSession;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;
    }
.end annotation


# virtual methods
.method public abstract a()Ljava/util/UUID;
.end method

.method public abstract b()Z
.end method

.method public abstract c()Landroidx/media3/decoder/b;
.end method

.method public abstract d(Ljava/lang/String;)Z
.end method

.method public abstract e(Landroidx/media3/exoplayer/drm/r$a;)V
.end method

.method public abstract f(Landroidx/media3/exoplayer/drm/r$a;)V
.end method

.method public abstract getError()Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;
.end method

.method public abstract getState()I
.end method

.method public abstract queryKeyStatus()Ljava/util/Map;
.end method
