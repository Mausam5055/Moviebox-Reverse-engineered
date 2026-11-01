.class Landroidx/media3/exoplayer/video/j$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/exoplayer/video/VideoSink$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media3/exoplayer/video/j;->D(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroidx/media3/exoplayer/video/j;


# direct methods
.method constructor <init>(Landroidx/media3/exoplayer/video/j;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/video/j$a;->b:Landroidx/media3/exoplayer/video/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/media3/exoplayer/video/VideoSink;)V
    .locals 0

    iget-object p1, p0, Landroidx/media3/exoplayer/video/j$a;->b:Landroidx/media3/exoplayer/video/j;

    invoke-static {p1}, Landroidx/media3/exoplayer/video/j;->x1(Landroidx/media3/exoplayer/video/j;)Landroid/view/Surface;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/video/j$a;->b:Landroidx/media3/exoplayer/video/j;

    invoke-static {p1}, Landroidx/media3/exoplayer/video/j;->y1(Landroidx/media3/exoplayer/video/j;)V

    :cond_0
    return-void
.end method

.method public b(Landroidx/media3/exoplayer/video/VideoSink;Landroidx/media3/common/m0;)V
    .locals 0

    return-void
.end method

.method public c(Landroidx/media3/exoplayer/video/VideoSink;)V
    .locals 2

    iget-object p1, p0, Landroidx/media3/exoplayer/video/j$a;->b:Landroidx/media3/exoplayer/video/j;

    invoke-static {p1}, Landroidx/media3/exoplayer/video/j;->x1(Landroidx/media3/exoplayer/video/j;)Landroid/view/Surface;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/video/j$a;->b:Landroidx/media3/exoplayer/video/j;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroidx/media3/exoplayer/video/j;->A2(II)V

    :cond_0
    return-void
.end method
