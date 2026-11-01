.class Lcom/google/android/exoplayer2/drm/u$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/drm/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/drm/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/o1;)I
    .locals 0

    iget-object p1, p1, Lcom/google/android/exoplayer2/o1;->o:Lcom/google/android/exoplayer2/drm/DrmInitData;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b(Landroid/os/Looper;Le9/u1;)V
    .locals 0

    return-void
.end method

.method public c(Lcom/google/android/exoplayer2/drm/s$a;Lcom/google/android/exoplayer2/o1;)Lcom/google/android/exoplayer2/drm/DrmSession;
    .locals 2

    iget-object p1, p2, Lcom/google/android/exoplayer2/o1;->o:Lcom/google/android/exoplayer2/drm/DrmInitData;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance p1, Lcom/google/android/exoplayer2/drm/a0;

    new-instance p2, Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    new-instance v0, Lcom/google/android/exoplayer2/drm/UnsupportedDrmException;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/drm/UnsupportedDrmException;-><init>(I)V

    const/16 v1, 0x1771

    invoke-direct {p2, v0, v1}, Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;-><init>(Ljava/lang/Throwable;I)V

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/drm/a0;-><init>(Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;)V

    return-object p1
.end method

.method public synthetic d(Lcom/google/android/exoplayer2/drm/s$a;Lcom/google/android/exoplayer2/o1;)Lcom/google/android/exoplayer2/drm/u$b;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/drm/t;->a(Lcom/google/android/exoplayer2/drm/u;Lcom/google/android/exoplayer2/drm/s$a;Lcom/google/android/exoplayer2/o1;)Lcom/google/android/exoplayer2/drm/u$b;

    move-result-object p1

    return-object p1
.end method

.method public synthetic prepare()V
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/drm/t;->b(Lcom/google/android/exoplayer2/drm/u;)V

    return-void
.end method

.method public synthetic release()V
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/drm/t;->c(Lcom/google/android/exoplayer2/drm/u;)V

    return-void
.end method
