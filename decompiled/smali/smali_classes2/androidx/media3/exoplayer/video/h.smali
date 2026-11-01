.class public final synthetic Landroidx/media3/exoplayer/video/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/media3/exoplayer/video/e$b;

.field public final synthetic b:Landroidx/media3/common/m0;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/video/e$b;Landroidx/media3/common/m0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/video/h;->a:Landroidx/media3/exoplayer/video/e$b;

    iput-object p2, p0, Landroidx/media3/exoplayer/video/h;->b:Landroidx/media3/common/m0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/video/h;->a:Landroidx/media3/exoplayer/video/e$b;

    iget-object v1, p0, Landroidx/media3/exoplayer/video/h;->b:Landroidx/media3/common/m0;

    invoke-static {v0, v1}, Landroidx/media3/exoplayer/video/e$b;->e(Landroidx/media3/exoplayer/video/e$b;Landroidx/media3/common/m0;)V

    return-void
.end method
