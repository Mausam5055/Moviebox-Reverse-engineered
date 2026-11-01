.class Landroidx/media3/exoplayer/drm/t$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/exoplayer/drm/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/drm/t;
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
.method public a(Landroidx/media3/exoplayer/drm/r$a;Landroidx/media3/common/r;)Landroidx/media3/exoplayer/drm/DrmSession;
    .locals 2

    iget-object p1, p2, Landroidx/media3/common/r;->s:Landroidx/media3/common/DrmInitData;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance p1, Landroidx/media3/exoplayer/drm/z;

    new-instance p2, Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;

    new-instance v0, Landroidx/media3/exoplayer/drm/UnsupportedDrmException;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/media3/exoplayer/drm/UnsupportedDrmException;-><init>(I)V

    const/16 v1, 0x1771

    invoke-direct {p2, v0, v1}, Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;-><init>(Ljava/lang/Throwable;I)V

    invoke-direct {p1, p2}, Landroidx/media3/exoplayer/drm/z;-><init>(Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;)V

    return-object p1
.end method

.method public b(Landroidx/media3/common/r;)I
    .locals 0

    iget-object p1, p1, Landroidx/media3/common/r;->s:Landroidx/media3/common/DrmInitData;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public c(Landroid/os/Looper;Ly1/f4;)V
    .locals 0

    return-void
.end method

.method public synthetic d(Landroidx/media3/exoplayer/drm/r$a;Landroidx/media3/common/r;)Landroidx/media3/exoplayer/drm/t$b;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/media3/exoplayer/drm/s;->a(Landroidx/media3/exoplayer/drm/t;Landroidx/media3/exoplayer/drm/r$a;Landroidx/media3/common/r;)Landroidx/media3/exoplayer/drm/t$b;

    move-result-object p1

    return-object p1
.end method

.method public synthetic prepare()V
    .locals 0

    invoke-static {p0}, Landroidx/media3/exoplayer/drm/s;->b(Landroidx/media3/exoplayer/drm/t;)V

    return-void
.end method

.method public synthetic release()V
    .locals 0

    invoke-static {p0}, Landroidx/media3/exoplayer/drm/s;->c(Landroidx/media3/exoplayer/drm/t;)V

    return-void
.end method
