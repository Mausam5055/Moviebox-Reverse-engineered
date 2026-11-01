.class public final synthetic Landroidx/media3/exoplayer/video/g0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/media3/exoplayer/video/i0$a;

.field public final synthetic b:Landroidx/media3/common/r;

.field public final synthetic c:Landroidx/media3/exoplayer/k;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/video/i0$a;Landroidx/media3/common/r;Landroidx/media3/exoplayer/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/video/g0;->a:Landroidx/media3/exoplayer/video/i0$a;

    iput-object p2, p0, Landroidx/media3/exoplayer/video/g0;->b:Landroidx/media3/common/r;

    iput-object p3, p0, Landroidx/media3/exoplayer/video/g0;->c:Landroidx/media3/exoplayer/k;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/video/g0;->a:Landroidx/media3/exoplayer/video/i0$a;

    iget-object v1, p0, Landroidx/media3/exoplayer/video/g0;->b:Landroidx/media3/common/r;

    iget-object v2, p0, Landroidx/media3/exoplayer/video/g0;->c:Landroidx/media3/exoplayer/k;

    invoke-static {v0, v1, v2}, Landroidx/media3/exoplayer/video/i0$a;->h(Landroidx/media3/exoplayer/video/i0$a;Landroidx/media3/common/r;Landroidx/media3/exoplayer/k;)V

    return-void
.end method
