.class public interface abstract Lcom/google/android/exoplayer2/drm/DrmSession;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;
    }
.end annotation


# virtual methods
.method public abstract a()Ljava/util/UUID;
.end method

.method public abstract b()Z
.end method

.method public abstract c()Lcom/google/android/exoplayer2/decoder/b;
.end method

.method public abstract d(Ljava/lang/String;)Z
.end method

.method public abstract e(Lcom/google/android/exoplayer2/drm/s$a;)V
.end method

.method public abstract f(Lcom/google/android/exoplayer2/drm/s$a;)V
.end method

.method public abstract getError()Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;
.end method

.method public abstract getState()I
.end method

.method public abstract queryKeyStatus()Ljava/util/Map;
.end method
