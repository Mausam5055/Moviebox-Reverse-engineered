.class final Landroidx/media3/exoplayer/video/w$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/video/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field private final a:Landroid/hardware/display/DisplayManager;

.field final synthetic b:Landroidx/media3/exoplayer/video/w;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/video/w;Landroid/hardware/display/DisplayManager;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/video/w$b;->b:Landroidx/media3/exoplayer/video/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/media3/exoplayer/video/w$b;->a:Landroid/hardware/display/DisplayManager;

    return-void
.end method

.method private a()Landroid/view/Display;
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/video/w$b;->a:Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public b()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/video/w$b;->a:Landroid/hardware/display/DisplayManager;

    invoke-static {}, Landroidx/media3/common/util/a1;->A()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    iget-object v0, p0, Landroidx/media3/exoplayer/video/w$b;->b:Landroidx/media3/exoplayer/video/w;

    invoke-direct {p0}, Landroidx/media3/exoplayer/video/w$b;->a()Landroid/view/Display;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/media3/exoplayer/video/w;->a(Landroidx/media3/exoplayer/video/w;Landroid/view/Display;)V

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/video/w$b;->a:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    return-void
.end method

.method public onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/video/w$b;->b:Landroidx/media3/exoplayer/video/w;

    invoke-direct {p0}, Landroidx/media3/exoplayer/video/w$b;->a()Landroid/view/Display;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/media3/exoplayer/video/w;->a(Landroidx/media3/exoplayer/video/w;Landroid/view/Display;)V

    :cond_0
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    return-void
.end method
