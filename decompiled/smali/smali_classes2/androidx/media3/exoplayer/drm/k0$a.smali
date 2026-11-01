.class abstract Landroidx/media3/exoplayer/drm/k0$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/drm/k0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method public static a(Landroid/media/MediaDrm;Ljava/lang/String;I)Z
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/media3/exoplayer/drm/j0;->a(Landroid/media/MediaDrm;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static b(Landroid/media/MediaDrm;[BLy1/f4;)V
    .locals 1

    invoke-virtual {p2}, Ly1/f4;->a()Landroid/media/metrics/LogSessionId;

    move-result-object p2

    invoke-static {}, Ly1/d4;->a()Landroid/media/metrics/LogSessionId;

    move-result-object v0

    invoke-static {p2, v0}, Ly1/e4;->a(Landroid/media/metrics/LogSessionId;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Landroidx/media3/exoplayer/drm/g0;->a(Landroid/media/MediaDrm;[B)Landroid/media/MediaDrm$PlaybackComponent;

    move-result-object p0

    invoke-static {p0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/media3/exoplayer/drm/h0;->a(Ljava/lang/Object;)Landroid/media/MediaDrm$PlaybackComponent;

    move-result-object p0

    invoke-static {p0, p2}, Landroidx/media3/exoplayer/drm/i0;->a(Landroid/media/MediaDrm$PlaybackComponent;Landroid/media/metrics/LogSessionId;)V

    :cond_0
    return-void
.end method
