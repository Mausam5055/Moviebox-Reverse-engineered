.class public final synthetic Landroidx/media3/exoplayer/drm/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/media3/exoplayer/drm/r$a;

.field public final synthetic b:Landroidx/media3/exoplayer/drm/r;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/drm/r$a;Landroidx/media3/exoplayer/drm/r;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/drm/o;->a:Landroidx/media3/exoplayer/drm/r$a;

    iput-object p2, p0, Landroidx/media3/exoplayer/drm/o;->b:Landroidx/media3/exoplayer/drm/r;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/drm/o;->a:Landroidx/media3/exoplayer/drm/r$a;

    iget-object v1, p0, Landroidx/media3/exoplayer/drm/o;->b:Landroidx/media3/exoplayer/drm/r;

    invoke-static {v0, v1}, Landroidx/media3/exoplayer/drm/r$a;->f(Landroidx/media3/exoplayer/drm/r$a;Landroidx/media3/exoplayer/drm/r;)V

    return-void
.end method
