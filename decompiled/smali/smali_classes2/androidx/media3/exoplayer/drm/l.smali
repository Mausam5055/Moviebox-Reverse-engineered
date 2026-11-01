.class public final synthetic Landroidx/media3/exoplayer/drm/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/media3/exoplayer/drm/r$a;

.field public final synthetic b:Landroidx/media3/exoplayer/drm/r;

.field public final synthetic c:Ljava/lang/Exception;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/drm/r$a;Landroidx/media3/exoplayer/drm/r;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/drm/l;->a:Landroidx/media3/exoplayer/drm/r$a;

    iput-object p2, p0, Landroidx/media3/exoplayer/drm/l;->b:Landroidx/media3/exoplayer/drm/r;

    iput-object p3, p0, Landroidx/media3/exoplayer/drm/l;->c:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/drm/l;->a:Landroidx/media3/exoplayer/drm/r$a;

    iget-object v1, p0, Landroidx/media3/exoplayer/drm/l;->b:Landroidx/media3/exoplayer/drm/r;

    iget-object v2, p0, Landroidx/media3/exoplayer/drm/l;->c:Ljava/lang/Exception;

    invoke-static {v0, v1, v2}, Landroidx/media3/exoplayer/drm/r$a;->e(Landroidx/media3/exoplayer/drm/r$a;Landroidx/media3/exoplayer/drm/r;Ljava/lang/Exception;)V

    return-void
.end method
