.class public final synthetic Landroidx/media3/exoplayer/drm/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/media3/exoplayer/drm/r$a;

.field public final synthetic b:Landroidx/media3/exoplayer/drm/r;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/drm/r$a;Landroidx/media3/exoplayer/drm/r;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/drm/m;->a:Landroidx/media3/exoplayer/drm/r$a;

    iput-object p2, p0, Landroidx/media3/exoplayer/drm/m;->b:Landroidx/media3/exoplayer/drm/r;

    iput p3, p0, Landroidx/media3/exoplayer/drm/m;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/drm/m;->a:Landroidx/media3/exoplayer/drm/r$a;

    iget-object v1, p0, Landroidx/media3/exoplayer/drm/m;->b:Landroidx/media3/exoplayer/drm/r;

    iget v2, p0, Landroidx/media3/exoplayer/drm/m;->c:I

    invoke-static {v0, v1, v2}, Landroidx/media3/exoplayer/drm/r$a;->c(Landroidx/media3/exoplayer/drm/r$a;Landroidx/media3/exoplayer/drm/r;I)V

    return-void
.end method
