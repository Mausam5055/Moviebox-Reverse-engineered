.class public final Landroidx/media3/exoplayer/drm/z;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/exoplayer/drm/DrmSession;


# instance fields
.field private final a:Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;

    iput-object p1, p0, Landroidx/media3/exoplayer/drm/z;->a:Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/UUID;
    .locals 1

    sget-object v0, Landroidx/media3/common/h;->a:Ljava/util/UUID;

    return-object v0
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c()Landroidx/media3/decoder/b;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public d(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public e(Landroidx/media3/exoplayer/drm/r$a;)V
    .locals 0

    return-void
.end method

.method public f(Landroidx/media3/exoplayer/drm/r$a;)V
    .locals 0

    return-void
.end method

.method public getError()Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/drm/z;->a:Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;

    return-object v0
.end method

.method public getState()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public queryKeyStatus()Ljava/util/Map;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
