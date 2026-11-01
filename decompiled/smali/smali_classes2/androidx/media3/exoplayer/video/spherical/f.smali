.class public final synthetic Landroidx/media3/exoplayer/video/spherical/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# instance fields
.field public final synthetic a:Landroidx/media3/exoplayer/video/spherical/g;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/video/spherical/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/video/spherical/f;->a:Landroidx/media3/exoplayer/video/spherical/g;

    return-void
.end method


# virtual methods
.method public final onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/video/spherical/f;->a:Landroidx/media3/exoplayer/video/spherical/g;

    invoke-static {v0, p1}, Landroidx/media3/exoplayer/video/spherical/g;->c(Landroidx/media3/exoplayer/video/spherical/g;Landroid/graphics/SurfaceTexture;)V

    return-void
.end method
