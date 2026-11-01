.class Landroidx/media3/exoplayer/video/q$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/exoplayer/video/VideoSink$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media3/exoplayer/video/q;-><init>(Landroidx/media3/exoplayer/video/q$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/media3/exoplayer/video/q;


# direct methods
.method constructor <init>(Landroidx/media3/exoplayer/video/q;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/video/q$a;->a:Landroidx/media3/exoplayer/video/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 0

    iget-object p1, p0, Landroidx/media3/exoplayer/video/q$a;->a:Landroidx/media3/exoplayer/video/q;

    invoke-static {p1}, Landroidx/media3/exoplayer/video/q;->w(Landroidx/media3/exoplayer/video/q;)Landroidx/media3/common/c0;

    const/4 p1, 0x0

    invoke-static {p1}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    throw p1
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/video/q$a;->a:Landroidx/media3/exoplayer/video/q;

    invoke-static {v0}, Landroidx/media3/exoplayer/video/q;->w(Landroidx/media3/exoplayer/video/q;)Landroidx/media3/common/c0;

    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/media3/common/util/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    throw v0
.end method
