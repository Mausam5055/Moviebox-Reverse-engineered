.class public final synthetic Landroidx/media3/exoplayer/drm/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$e;

.field public final synthetic b:Landroidx/media3/common/r;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$e;Landroidx/media3/common/r;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/drm/g;->a:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$e;

    iput-object p2, p0, Landroidx/media3/exoplayer/drm/g;->b:Landroidx/media3/common/r;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/drm/g;->a:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$e;

    iget-object v1, p0, Landroidx/media3/exoplayer/drm/g;->b:Landroidx/media3/common/r;

    invoke-static {v0, v1}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$e;->a(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$e;Landroidx/media3/common/r;)V

    return-void
.end method
