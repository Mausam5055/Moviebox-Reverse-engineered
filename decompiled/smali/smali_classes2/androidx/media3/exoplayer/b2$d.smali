.class final Landroidx/media3/exoplayer/b2$d;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/exoplayer/video/t;
.implements Lk2/a;
.implements Landroidx/media3/exoplayer/t3$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/b2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation


# instance fields
.field private a:Landroidx/media3/exoplayer/video/t;

.field private b:Lk2/a;

.field private c:Landroidx/media3/exoplayer/video/t;

.field private d:Lk2/a;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/exoplayer/b2$a;)V
    .locals 0

    invoke-direct {p0}, Landroidx/media3/exoplayer/b2$d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J[F)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/b2$d;->d:Lk2/a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lk2/a;->a(J[F)V

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/b2$d;->b:Lk2/a;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2, p3}, Lk2/a;->a(J[F)V

    :cond_1
    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/b2$d;->d:Lk2/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lk2/a;->b()V

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/b2$d;->b:Lk2/a;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lk2/a;->b()V

    :cond_1
    return-void
.end method

.method public f(JJLandroidx/media3/common/r;Landroid/media/MediaFormat;)V
    .locals 8

    iget-object v0, p0, Landroidx/media3/exoplayer/b2$d;->c:Landroidx/media3/exoplayer/video/t;

    if-eqz v0, :cond_0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Landroidx/media3/exoplayer/video/t;->f(JJLandroidx/media3/common/r;Landroid/media/MediaFormat;)V

    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/b2$d;->a:Landroidx/media3/exoplayer/video/t;

    if-eqz v1, :cond_1

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Landroidx/media3/exoplayer/video/t;->f(JJLandroidx/media3/common/r;Landroid/media/MediaFormat;)V

    :cond_1
    return-void
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .locals 1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_3

    const/16 v0, 0x8

    if-eq p1, v0, :cond_2

    const/16 v0, 0x2710

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p2, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    if-nez p2, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/media3/exoplayer/b2$d;->c:Landroidx/media3/exoplayer/video/t;

    iput-object p1, p0, Landroidx/media3/exoplayer/b2$d;->d:Lk2/a;

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->getVideoFrameMetadataListener()Landroidx/media3/exoplayer/video/t;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/b2$d;->c:Landroidx/media3/exoplayer/video/t;

    invoke-virtual {p2}, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->getCameraMotionListener()Lk2/a;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/b2$d;->d:Lk2/a;

    goto :goto_0

    :cond_2
    check-cast p2, Lk2/a;

    iput-object p2, p0, Landroidx/media3/exoplayer/b2$d;->b:Lk2/a;

    goto :goto_0

    :cond_3
    check-cast p2, Landroidx/media3/exoplayer/video/t;

    iput-object p2, p0, Landroidx/media3/exoplayer/b2$d;->a:Landroidx/media3/exoplayer/video/t;

    :goto_0
    return-void
.end method
